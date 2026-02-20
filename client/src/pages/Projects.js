import React from 'react';
import useImageModal from '../components/useImageModal';
import '../styles/Pages.css';

const Projects = () => {
  const { openModal, ImageModal } = useImageModal();

  const projects = [
    {
      id: 1,
      src: 'https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6?w=400&h=300&fit=crop',
      alt: 'Modern Architecture',
    },
    {
      id: 2,
      src: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=400&h=300&fit=crop',
      alt: 'Interior Design',
    },
    {
      id: 3,
      src: 'https://images.unsplash.com/photo-1484154218962-a197022b5858?w=400&h=300&fit=crop',
      alt: 'Urban Planning',
    },
    {
      id: 4,
      src: 'https://images.unsplash.com/photo-1513364776144-60967b0f800f?w=400&h=300&fit=crop',
      alt: 'Sustainable Design',
    },
    {
      id: 5,
      src: 'https://images.unsplash.com/photo-1511632765486-a01980e01a18?w=400&h=300&fit=crop',
      alt: 'Contemporary Building',
    },
    {
      id: 6,
      src: 'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=400&h=300&fit=crop',
      alt: 'Design Concept',
    },
  ];

  return (
    <section className="projects-section">
      <h2 className="section-title">Our Projects</h2>
      <div className="projects">
        {projects.map((project) => (
          <img
            key={project.id}
            src={project.src}
            alt={project.alt}
            onClick={() => openModal(project.src)}
            style={{ cursor: 'zoom-in' }}
          />
        ))}
      </div>
      <ImageModal />
    </section>
  );
};

export default Projects;
