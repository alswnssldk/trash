import React from "react";

function MenuBar() {
    return (
        <header className="header">
            <nav className="navbar">
                <div className="logo">
                    <a href="/">
                        Gesture<span className="logo1">On</span>
                    </a>
                </div>
                <ul className="menu">
                    <li className="menu-item">
                        <a href="#home">Home</a>
                    </li>
                    <li className="menu-item">
                        <a href="#about">About</a>
                    </li>
                    <li className="menu-item">
                        <a href="#services">Services</a>
                    </li>
                    <li className="menu-item">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </nav>
        </header>
    );
}

export default MenuBar;