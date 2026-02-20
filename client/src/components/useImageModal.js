import React, { useState } from 'react';
import '../styles/ImageModal.css';

const useImageModal = () => {
  const [modalImage, setModalImage] = useState(null);

  const openModal = (src) => setModalImage(src);
  const closeModal = () => setModalImage(null);

  const ImageModal = () => {
    if (!modalImage) return null;

    return (
      <div className="image-modal" onClick={closeModal}>
        <div className="image-modal-inner">
          <button className="close-modal" aria-label="Close" onClick={closeModal}>
            ×
          </button>
          <img src={modalImage} alt="Project image" />
        </div>
      </div>
    );
  };

  return { openModal, closeModal, ImageModal };
};

export default useImageModal;
