# header block
Home::Header.create(
  remote_img_url: 'https://blackrockdigital.github.io/startbootstrap-creative/img/header.jpg',
  title: "Your Favorite Source of Free Bootstrap Themes",
  title_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    color: '#fff !important'
  },
  desc: "Start Bootstrap can help you build better websites using the Bootstrap CSS framework! Just download your template and start going, no strings attached!",
  desc_style: {
    font_family: "Merriweather,'Helvetica Neue',Arial,sans-serif",
    font_size: '1.15rem',
    color: 'rgba(255,255,255,.7)'
  },
  button: "Find Out More",
  btn_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    font_size: '1rem',
    color: '#fff',
    background_color: '#ee4b28 !important'
  }
)

# About block
Home::About.create(
             title: "We've got what you need!",
             title_style: {font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
                           font_size: '2rem',
                           color: '#fff !important'},
             desc: "Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!",
             desc_style: {font_family: "Merriweather,'Helvetica Neue',Arial,sans-serif",
                          font_size: '1rem',
                          color: 'rgba(255,255,255,.7)'},
             button: "Get Started!",
             btn_style: {font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
                         font_size: '1rem',
                         color: '#111',
                         background_color: '#e2e6ea'}
)

# Service block
Home::Service.create(
  title: "At Your Service",
  title_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    font_size: '2rem',
    color: 'inherit'
  }
).tap do |service_block|
  service_block.blocks.create(
      icon: 'diamond',
      title: "Sturdy Templates",
      title_style: {
        font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
        font_size: '1.75rem',
        color: 'inherit'
      },
      desc: "Our templates are updated regularly so they don't break.",
      desc_style: {
        font_family: "'Merriweather, 'Helvetica Neue', Arial, sans-serif",
        font_size: '1rem',
        color: '#868E96 !important'
      }
  )

  service_block.blocks.create(
    icon: 'paper-plane',
    title: "Ready to Ship",
    title_style: {
      font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
      font_size: '1.75rem',
      color: 'inherit'
    },
    desc: "You can use this theme as is, or you can make changes!",
    desc_style: {
      font_family: "'Merriweather, 'Helvetica Neue', Arial, sans-serif",
      font_size: '1rem',
      color: '#868E96 !important'
    }
  )

  service_block.blocks.create(
    icon: 'newspaper-o',
    title: "Up to Date",
    title_style: {
      font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
      font_size: '1.75rem',
      color: 'inherit'
    },
    desc: "We update dependencies to keep things fresh.",
    desc_style: {
      font_family: "'Merriweather, 'Helvetica Neue', Arial, sans-serif",
      font_size: '1rem',
      color: '#868E96 !important'
    }
  )

  service_block.blocks.create(
    icon: 'heart',
    title: "Made with Love",
    title_style: {
      font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
      font_size: '1.75rem',
      color: 'inherit'
    },
    desc: "You have to make your websites with love these days!",
    desc_style: {
      font_family: "'Merriweather, 'Helvetica Neue', Arial, sans-serif",
      font_size: '1rem',
      color: '#868E96 !important'
    }
  )
end

# Portfolio block
Home::Portfolio.create.tap do |block_portfolio|
  portfolio_img_path = "https://blackrockdigital.github.io/startbootstrap-creative/img/portfolio/thumbnails/"
  imgs = %w{1.jpg 2.jpg 3.jpg 4.jpg 5.jpg 6.jpg}

  imgs.each do |image|
    block_portfolio.blocks.create(
      remote_img_url: "#{portfolio_img_path}#{image}",
      title: "Category",
      title_style: {
        font_family: "'Open Sans', 'Helvetica Neue', Arial, sans-serif",
        font_size: '14px',
        color: 'rgba(255, 255, 255, 0.7)'
      },
      desc: "Project Name",
      desc_style: {
        font_family: "'Open Sans', 'Helvetica Neue', Arial, sans-serif",
        font_size: '18px',
        color: '#FFFFFF'
      }
    )
  end
end

# Call to action block
Home::CallToAction.create(
  title: "At Your Service",
  title_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    font_size: '2rem',
    color: 'inherit'
  },
  button: "Download Now",
  btn_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    font_size: '1rem',
    color: '#fff',
    background_color: '#F8F9FA'
  }
)

# Contact block
Home::Contact.create(
  title: "",
  title_style: {
    font_family: "'Open Sans','Helvetica Neue',Arial,sans-serif",
    font_size: '2rem',
    color: 'inherit'
  },
  desc: "Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!",
  desc_style: {
    font_family: "Merriweather, 'Helvetica Neue', Arial, sans-serif",
    font_size: '1rem',
    color: '#212529'
  }
).tap do |block_home|
  block_home.blocks.create(
    icon: 'phone',
    title: "123-456-6789",
    title_style: {
      font_family: "Merriweather, 'Helvetica Neue', Arial, sans-serif",
      font_size: '1rem',
      color: '#212529'
    }
  )

  block_home.blocks.create(
    icon: 'email',
    title: "feedback@startbootstrap.com",
    title_style: {
      font_family: "Merriweather, 'Helvetica Neue', Arial, sans-serif",
      font_size: '1rem',
      color: '#F05F40'
    }
  )
end
