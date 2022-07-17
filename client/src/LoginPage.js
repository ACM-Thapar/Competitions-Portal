import React from 'react';
import { withFormik, Form, Field } from 'formik';
import * as Yup from 'yup';
import './App.css';
import saly from './assets/Saly-1.png';

function LoginPage(props) {
  const { touched, errors } = props;
  return (
    <React.Fragment>
      <img src = {saly} alt="alternative text"/>
      <h1>Sign in to</h1>
      <h2>Lorem ipsum is simply</h2>
      <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
      </p>

      <div className="rectangle">
        <div className="login">
          <h4>Welcome to LOREM</h4>
          <h3>Sign in</h3>
          <Form className="login" method='get' action='login.php'>
            
              <label>Enter your username or email address</label>
              <input name="Uname" id='Uname' placeholder='    Username or email address'/>
              {touched.email && errors.email && <span className="help-block text-danger">{errors.email}</span>}
              <br></br>
              <br></br>
              <label>Enter your password</label>
              <input name="Pass" id='Pass' placeholder='    Password'/>
              {touched.password && errors.password && <span className="help-block text-danger">{errors.password}</span>}
              <br></br>
              <br></br>
              <br></br>
              <input type="button" name="log" id="log" value="Sign up"/>
          </Form>
        </div>
      </div>
    </React.Fragment>
  );
}

const LoginFormik = withFormik({
  mapPropsToValues: (props) => {
    return {
      email: props.email || '',
      password: props.password || ''
    }
  },
  validationSchema: Yup.object().shape({
    email: Yup.string().email('Email not valid').required('Email is required'),
    password: Yup.string().required('Password is required')
  }),
  handleSubmit: (values) => {
    const REST_API_URL = "YOUR_REST_API_URL";
    fetch(REST_API_URL, {
      method: 'post',
      body: JSON.stringify(values)
    }).then(response=> {
      if (response.ok) {
        return response.json();
      } else {
        // HANDLE ERROR
        throw new Error('Something went wrong');
      }
    }).then(data => {
      // HANDLE RESPONSE DATA
      console.log(data);
    }).catch((error) => {
      // HANDLE ERROR
      console.log(error);
    });
  }
})(LoginPage);

export default LoginFormik