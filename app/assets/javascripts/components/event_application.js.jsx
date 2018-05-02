handleAdd: function(event) {
		var events = this.state.events;
		events.push(event);
		this.setState({
			events: events
		});
	},
	render: function() {
		return ( <
			div className = "container" >
			<
			div className = "jumbotron" >
			<
			h1 > ReactJS Tutorial < /h1> <
			p > by Piotr Jaworski < /p> <
			/div> <
			div className = "row" >
			<
			div className = "col-md-4" >
			<
			SearchForm handleSearch = {
				this.handleSearch
			}
			/> <
			/div> <
			div className = "col-md-8" >
			<
			NewForm handleAdd = {
				this.handleAdd
			}
			/> <
			/div> <
			/div> <
			div className = "row" >
			<
			div className = "col-md-12" >
			<
			EventTable events = {
				this.state.events
			}
			/> <
			/div> <
			/div> <
			/div>
		)
	}
