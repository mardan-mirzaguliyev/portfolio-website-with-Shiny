library(shiny)
library(bslib)
library(fontawesome)

ui <- page(
  theme = bs_theme(
    bootswatch = "flatly",
    primary = "#4A90E2",
    "font-size-base" = "1.1rem"
  ),
  
  tags$head(
    tags$style(HTML("
      .card {
        border: none;
        box-shadow: 0 4px 6px rgba(74, 144, 226, 0.1);
        transition: transform 0.2s ease-in-out;
        margin-bottom: 2rem;
      }
      .card:hover {
        transform: translateY(-5px);
      }
      .card-header {
        background-color: #4A90E2;
        color: white;
      }
      .hero-section {
        background: linear-gradient(rgba(74, 144, 226, 0.9), rgba(74, 144, 226, 0.7)),
                    url('https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?auto=format&fit=crop&w=2000&q=80');
        background-size: cover;
        background-position: center;
        color: white;
        padding: 120px 0;
        text-align: center;
        margin-bottom: 2rem;
      }
      .profile-image {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        border: 4px solid white;
        margin-bottom: 1rem;
      }
      .social-links {
        font-size: 1.5rem;
        margin-top: 1rem;
      }
      .social-links a {
        color: white;
        margin: 0 10px;
        transition: opacity 0.3s;
      }
      .social-links a:hover {
        opacity: 0.8;
      }
      .project-card {
        height: 100%;
      }
      .project-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
      }
      .skill-tag {
        background: #71B1F0;
        color: white;
        padding: 5px 15px;
        border-radius: 20px;
        display: inline-block;
        margin: 5px;
        font-size: 0.9rem;
        transition: background 0.3s ease;
      }
      .section-title {
        text-align: center;
        margin-bottom: 2rem;
        position: relative;
      }
      .section-title:after {
        content: '';
        display: block;
        width: 50px;
        height: 3px;
        background: #4A90E2;
        margin: 10px auto;
      }
      .content-wrapper {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
      }
    "))
  ),
  
  # Hero Section
  div(
    class = "hero-section",
    img(src = "https://i.pravatar.cc/200", class = "profile-image"),
    h1("Mardan Mirzaguliyev", style = "font-size: 3rem; font-weight: 700;"),
    p("Data analyst", class = "lead"),
    div(
      class = "social-links",
      a(href = "#", fa("linkedin")),
      a(href = "#", fa("github")),
      a(href = "#", fa("twitter")),
      a(href = "#", fa("envelope"))
    )
  ),
  
  # Content Wrapper
  div(
    class = "content-wrapper",
    # About Me
    h2("About Me", class = "section-title"),
    card(
      card_body(
        p(class = "lead text-center",
          "Results-driven data analyst with 5+ years of experience in developing and implementing 
          machine learning solutions. Passionate about turning complex data into actionable insights 
          and building innovative solutions that drive business success.")
      )
    ),
    
    # Featured Projects
    h2("Featured Projects", class = "section-title"),
    layout_column_wrap(
      width = 1/3,
      card(
        class = "project-card",
        img(src = "https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=800&q=80", 
            class = "project-image"),
        card_body(
          h4("Customer Churn Prediction"),
          p("Developed ML model reducing customer churn by 25%"),
          div(class = "skill-tag", "Python"),
          div(class = "skill-tag", "Machine Learning")
        )
      ),
      card(
        class = "project-card",
        img(src = "https://images.unsplash.com/photo-1504868584819-f8e8b4b6d7e3?auto=format&fit=crop&w=800&q=80", 
            class = "project-image"),
        card_body(
          h4("Sales Dashboard"),
          p("Interactive dashboard for real-time sales analytics"),
          div(class = "skill-tag", "R Shiny"),
          div(class = "skill-tag", "Data Viz")
        )
      ),
      card(
        class = "project-card",
        img(src = "https://images.unsplash.com/photo-1518186285589-2f7649de83e0?auto=format&fit=crop&w=800&q=80", 
            class = "project-image"),
        card_body(
          h4("NLP Text Analysis"),
          p("Sentiment analysis for customer feedback"),
          div(class = "skill-tag", "NLP"),
          div(class = "skill-tag", "Deep Learning")
        )
      )
    ),
    
    # Experience
    h2("Experience", class = "section-title"),
    card(
      card_body(
        div(
          h4("Senior Data Scientist - Tech Corp"),
          p(tags$strong("2020 - Present")),
          tags$ul(
            tags$li("Led a team of 5 data scientists in developing predictive models"),
            tags$li("Reduced customer churn by 25% through implementation of ML models"),
            tags$li("Developed automated reporting system using R and Shiny")
          )
        ),
        hr(),
        div(
          h4("Data Analyst - Data Solutions Inc"),
          p(tags$strong("2018 - 2020")),
          tags$ul(
            tags$li("Conducted statistical analysis on large datasets"),
            tags$li("Created interactive dashboards for stakeholders"),
            tags$li("Optimized data collection processes")
          )
        )
      )
    ),
    
    # Skills
    h2("Skills & Technologies", class = "section-title"),
    card(
      card_body(
        div(
          class = "row text-center",
          div(
            class = "col-md-4",
            h5("Programming"),
            div(
              class = "skill-tag", "R",
              class = "skill-tag", "Python",
              class = "skill-tag", "SQL"
            )
          ),
          div(
            class = "col-md-4",
            h5("Tools & Technologies"),
            div(
              class = "skill-tag", "Shiny",
              class = "skill-tag", "Git",
              class = "skill-tag", "Docker"
            )
          ),
          div(
            class = "col-md-4",
            h5("Machine Learning"),
            div(
              class = "skill-tag", "TensorFlow",
              class = "skill-tag", "PyTorch",
              class = "skill-tag", "scikit-learn"
            )
          )
        )
      )
    )
  )
)

server <- function(input, output) {
  # Server logic can be added here if needed
}

shinyApp(ui = ui, server = server)


