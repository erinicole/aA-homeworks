import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    }
    
    this.setNum1 = this.setNum1.bind(this)
    this.setNum2 = this.setNum2.bind(this)
  }

  //your code here
  setNum1(e) {
    // your code here
    const mum1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState(num1)
  }

  setNum2(e){
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState(num2)
  }

  add(e){
    e.preventDefault();
    let result = this.state.setNum1 + this.state.setNum2;
    this.setState({result});
  }

  subtract(e) {
    e.preventDefault();
    let result = this.state.setNum1 - this.state.setNum2;
    this.setState({ result });
  }

  multiply(e) {
    e.preventDefault();
    let result = this.state.setNum1 * this.state.setNum2;
    this.setState({ result });
  }

  divide(e) {
    e.preventDefault();
    let result = this.state.setNum1 / this.state.setNum2;
    this.setState({ result });
  }

  render(){
    return (
      <div>
        <h1>Calculator</h1>
        <h2> {this.state.result}</h2>
      </div>
    );
  }
}

export default Calculator;
