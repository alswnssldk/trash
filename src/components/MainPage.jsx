import React from 'react';
import '../CSS/Main.css';

function MainPage() {
  return (
    <div className="mainPage">
      <section className="hero">
        <div className="hero-content">
          <h1>Gestureon</h1>
          <p className="subtitle">세상을 여는 손짓, Gestureon.</p>
          <p className="description">
            손동작 하나로 슬라이드를 넘기고, 화면을 확대하거나 축소하세요.<br />
            발표, 회의, 강의까지 - 리모컨 없이 자연스럽게 제어할 수 있습니다.
          </p>

          <div className="features">
            <div className="feature-item">🖐 슬라이드 넘기기</div>
            <div className="feature-item">🔍 화면 확대·축소</div>
            <div className="feature-item">🎤 발표·회의 제어</div>
          </div>

          <button className="download-btn">Download</button>
        </div>
      </section>
      <div>
        <ul class="wrapper">
          <li class="icon facebook">
            <span class="tooltip">Facebook</span>
            <span><i class="fab fa-facebook-f"></i></span>
            <span></span>
          </li>
          <li class="icon x">
            <span class="tooltip">X</span>
            <span><i class="fab fa-x-twitter"></i></span>
          </li>
          <li class="icon instagram">
            <span class="tooltip">Instagram</span>
            <span><i class="fab fa-instagram"></i></span>
          </li>
          <li class="icon github">
            <span class="tooltip">Github</span>
            <span><i class="fab fa-github"></i></span>
          </li>
          <li class="icon youtube">
            <span class="tooltip">Youtube</span>
            <span><i class="fab fa-youtube"></i></span>
          </li>
        </ul>
      </div>
    </div>
  );
}

export default MainPage;