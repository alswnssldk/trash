import React from "react";

const MotionImg = () => {
  return (
    <div className="motion-container">
      <div className="motion-item">
        <img src="../myImage/motion1.png" alt="모션 인식 사진" className="image-box"
        style={{marginLeft:"300px"}}/>
        <div>
          <p>블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라</p>
        </div>
      </div>
      <div className="motion-item reverse">
        <div>
          <p>블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라블라 블라 블라</p>
        </div>
        <img src="../myImage/motion2.png" alt="모션 인식 사진" className="image-box" />
      </div>
    </div>
  );
};

export default MotionImg;