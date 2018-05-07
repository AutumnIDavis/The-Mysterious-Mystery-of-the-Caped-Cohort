class Scrollz < ApplicationRecord
  has_many :stages
  has_many :choices, through: :stages

  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :title, uniqueness: true, presence: true
  validates :intstruction, presence: true



  def murder(stage_node)
    html = ''
    html += "<ul>" if first_chapter(chapter_node)
    html += "<li><a href='/scrollz/" + "#{chapter_node.scrollz_id}" + "/stages/#{stage_node.id}/choices/new'> #{first_3_words(stage_node)}</a>"
    moreChoices?(stage_node) ? html += "<ul>" : html += "</li>"
    if stage_node.parent_choice_id != nil && !moreChoices?(stage_node)
      html += "</ul>" if end_of_row?(stage_node)
    end
    stage_node.choices.each do |choice|
      next_stage = Stage.where(parent_choice_id: choice.id).first
      next_html = !!(next_stage) ? murder(next_stage) : "</ul></li>"
      html += next_html
    end
    html
  end

  def create_scene(stage_node)
    return '' if stage_node.nil?
    html = murder(stage_node)
    html = html.chomp('</ul>')
    html += "</ul></li>" * calculate_uls(html)
    html += "</ul>"
  end

  def calculate_uls(html)
    (count_opening_uls(html) - 1) - count_closing_uls(html)
  end

  def count_opening_uls(html)
    html.scan(/<ul>/).size
  end

  def count_closing_uls(html)
    html.scan(/<\/ul>/).size
  end

  # return true if first chapter
  def first_stage(stage)
  stage.id === self.stages.first.id
  end

  def last_stage(stage)
  stage.id === self.stages.last.id
  end

  #options check
  def moreChoices?(check_stage)
    find_children_stage(check_stage, false) != []
  end

  def find_children_stage(stage, array_of_ids)
    @choices = Choice.where(stage_id: stage.id)
    find_stages_from_choices(@choices, array_of_ids)
  end

  def find_stages_from_choices(array_of_choices, array_of_ids)
    stages= []
    if array_of_ids == false
      array_of_choices.each do |choice|
        stages << Stages.where(parent_choice_id: choice.id)
      end
    else
      array_of_choices.each do |choice|
        stages<< Stage.where(parent_choice_id: choice.id).pluck(:id)
      end
    end
    stages.flatten
  end

  def end_of_row?(stage)
    choice_found = find_parent_choice(stage)
    parent_stage = find_parent_stage(choice_found)
    if parent_stage!= nil
      children_stage_ids = find_children_stages(parent_stage, true)
      highest_stage_id(children_stage_ids, stage)
    else
      return false
    end
  end
#is this the end lol
  def highest_stage_id(children_stage_ids, current_stage)
    children_stage_ids.max === current_stage.id
  end


  def find_parent_choice(stage)
    Choice.find(stage.parent_choice_id)
  end

  def find_parent_chapter(choice)
    return nil if choice.stage_id.nil?
  Stage.find(choice.stage_id)
  end

  def first_3_words(stage)
    stage.description.split(" ").slice(0, 3).join(" ").concat("...")
  end

end
