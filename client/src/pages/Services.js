import React from 'react';
import '../styles/Pages.css';

const Services = () => {
  const services = [
    {
      id: 1,
      title: 'Architectural Design',
      description: 'Custom architectural designs tailored to your vision and needs',
      icon: '🏗️',
    },
    {
      id: 2,
      title: 'Interior Design',
      description: 'Innovative interior solutions that enhance functionality and aesthetics',
      icon: '🎨',
    },
    {
      id: 3,
      title: 'Sustainable Design',
      description: 'Eco-friendly architectural solutions for a better future',
      icon: '🌱',
    },
    {
      id: 4,
      title: 'Renovation Services',
      description: 'Transform existing spaces with modern upgrades',
      icon: '🔨',
    },
    {
      id: 5,
      title: 'Project Management',
      description: 'Expert oversight and coordination of your entire project',
      icon: '📋',
    },
    {
      id: 6,
      title: '3D Visualization',
      description: 'Preview your project with professional 3D renderings',
      icon: '👁️',
    },
  ];

  return (
    <section className="services-section">
      <h2 className="section-title">Our Services</h2>
      <div className="services">
        {services.map((service) => (
          <div key={service.id} className="service-box">
            <div className="service-icon">{service.icon}</div>
            <h3>{service.title}</h3>
            <p>{service.description}</p>
          </div>
        ))}
      </div>
    </section>
  );
};

export default Services;
