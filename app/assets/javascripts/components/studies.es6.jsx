class Studies extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.refreshStudies();
  }
  refreshStudies(){
    $.ajax({
      url: '/studies',
      type: 'GET',
    }).success(data => {
      this.setState({studies: data.studies})
    })
  }
  render(){
    return(
      <div>
        <h1>This is it</h1>
      </div>)
  }
}
