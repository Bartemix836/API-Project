import axios from 'axios'
import React, { useEffect, useState } from 'react'
import {Link} from 'react-router-dom';

export default function ListUser() {


  const [employees,setUsers]=useState([]);
  useEffect(()=>{
    getUsers();
  },[])

  function getUsers() {
    axios.get('http://localhost:8888/api1/users/').then(function(response) {
        console.log(response.data);
        setUsers(response.data);
    });
}
  const deleteEmployee = (id_employee) =>{
    axios.delete(`http://localhost:8888/api1/user/${id_employee}/delete`).then(function(response){
      console.log(response.data);
      getUsers();
    });
    
  }
  return (
    <div>
      
      <h3>19.06.2023- 25.06.2023</h3>
      <table>
        <thead className='columns'>
          <tr>          
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Shift</th>
                {/* <th>Group Number</th> */}
                <th>Created Data</th>
                <th>Update Data</th>
                <th>Actions</th>         
          </tr>
        </thead>
        <tbody>
          {employees.map((employee,key)=>
            <tr key={key}>
                <td>{employee.id_employee}</td>
                <td>{employee.name}</td>
                <td>{employee.surname}</td>
                <td>{employee.shift}</td>
                {/* <td>{employee.group_number}</td> */}
                <td>{employee.create_at.slice(0,10)}</td>
                <td>{employee.update_at.slice(0,10)}</td>
                
                <td>
                  <button className='EditBtn'><Link to={`user/${employee.id_employee}/edit`} style={{marginRight:"10px"}}>Edit</Link></button>
                  <button className='DeleteBtn' onClick={()=>deleteEmployee(employee.id_employee)}>Delete</button>
                </td>
            </tr>
          )}

        </tbody>
      </table>
    </div>   
  )
}
