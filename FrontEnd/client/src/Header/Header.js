import React, { useState, useEffect } from "react";
import { Navbar, Container, Nav } from "react-bootstrap";
import { LogoutLink } from "./LogoutLink";

function Header() {
  let level = sessionStorage.getItem("paygrade");
  const [url, setURL] = useState(level);

  // useEffect(() => {
  //   level = sessionStorage.getItem("paygrade");
  //   if (level == "level 1") {
  //     setURL("/employeeHome");
  //   } else if (level == "level 2") {
  //     setURL("/supervisorHome");
  //   } else if (level == "level 3") {
  //     setURL("/managerHome");
  //   } else if (level == "level 4") {
  //     setURL("/hrHome");
  //   } else {
  //     setURL("/");
  //   }
  // }, [sessionStorage.getItem("paygrade")]);

  return (
    <Navbar collapseOnSelect expand="lg" bg="light" variant="light">
      <Container>
        <img
          alt="alt text"
          src="favicon.ico"
          width="60"
          height="60"
          className="d-inline-block pl-2"
        />
        <h4 className="txt1 pt-2">Jupyter Apperals</h4>

        <Navbar.Toggle aria-controls="navbar-nav" />
        <Navbar.Collapse id="responsive-navbar-nav">
          <Nav className="me-auto"></Nav>
          <Nav>
            <LogoutLink />
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Header;
