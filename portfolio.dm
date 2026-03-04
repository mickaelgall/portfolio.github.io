<!DOCTYPE html>
<html lang="fr">
<head>
    <base target="_self">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mickaël Gall - Portfolio BTS SIO SISR</title>
    <meta name="description" content="Portfolio étudiant de Mickaël Gall en BTS SIO SISR 2ème année. Présentation personnelle, expériences professionnelles, parcours académique, stage et veille technologique.">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Roboto+Mono:wght@300;400;500&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: "#1e40af",
                        secondary: "#3b82f6",
                        accent: "#0ea5e9",
                        dark: "#0f172a",
                        light: "#f8fafc",
                        card: "#ffffff",
                        sidebar: "#f1f5f9"
                    },
                    fontFamily: {
                        'sans': ['Inter', 'system-ui', 'sans-serif'],
                        'mono': ['Roboto Mono', 'monospace']
                    },
                    animation: {
                        'fade-in': 'fadeIn 0.5s ease-in-out',
                        'slide-right': 'slideRight 0.3s ease-out',
                        'pulse-glow': 'pulseGlow 2s infinite'
                    },
                    keyframes: {
                        fadeIn: {
                            '0%': { opacity: '0' },
                            '100%': { opacity: '1' }
                        },
                        slideRight: {
                            '0%': { transform: 'translateX(-10px)', opacity: '0' },
                            '100%': { transform: 'translateX(0)', opacity: '1' }
                        },
                        pulseGlow: {
                            '0%, 100%': { boxShadow: '0 0 5px rgba(14, 165, 233, 0.3)' },
                            '50%': { boxShadow: '0 0 15px rgba(14, 165, 233, 0.6)' }
                        }
                    }
                }
            }
        }
    </script>
    <style>
        html {
            scroll-behavior: smooth;
            scroll-padding-top: 100px;
        }
        
        .sidebar-active {
            background-color: #3b82f6;
            color: white;
        }
        
        .progress-indicator {
            width: 4px;
            transition: height 0.3s ease;
        }
        
        .section-highlight {
            position: relative;
        }
        
        .section-highlight::before {
            content: '';
            position: absolute;
            left: -10px;
            top: 0;
            height: 100%;
            width: 4px;
            background-color: #3b82f6;
            border-radius: 2px;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .section-highlight.active::before {
            opacity: 1;
        }
        
        @media (max-width: 1024px) {
            .sidebar-container {
                position: fixed;
                right: -300px;
                top: 0;
                height: 100vh;
                width: 280px;
                transition: right 0.3s ease;
                z-index: 50;
            }
            
            .sidebar-container.open {
                right: 0;
            }
            
            .sidebar-overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 40;
            }
            
            .sidebar-overlay.open {
                display: block;
            }
        }
        
        .skill-level-bar {
            transition: width 1s ease-in-out;
        }
    </style>
</head>
<body class="min-h-screen bg-gray-50 font-sans text-gray-800">
    <!-- Navigation principale -->
    <header class="sticky top-0 z-40 bg-white shadow-md">
        <nav class="container mx-auto px-4 py-3">
            <div class="flex justify-between items-center">
                <div class="flex items-center space-x-3">
                    <div class="w-10 h-10 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center shadow-md">
                        <i class="fas fa-laptop-code text-white"></i>
                    </div>
                    <div>
                        <h1 class="text-xl font-bold text-dark">Mickaël Gall</h1>
                        <p class="text-sm text-gray-600">BTS SIO SISR - 2ème année</p>
                    </div>
                </div>
                
                <div class="hidden lg:flex items-center space-x-6">
                    <div class="text-sm text-gray-600">
                        <i class="fas fa-map-marker-alt mr-1 text-accent"></i>
                        <span>La méaugon, France</span>
                    </div>
                    <div class="text-sm text-gray-600">
                        <i class="fas fa-envelope mr-1 text-accent"></i>
                        <span>mickaelgall6@gmail.com</span>
                    </div>
                </div>
                
                <button id="menu-toggle" class="lg:hidden text-gray-700 hover:text-accent p-2">
                    <i class="fas fa-bars text-xl"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- Overlay pour mobile -->
    <div id="sidebar-overlay" class="sidebar-overlay"></div>

    <!-- Contenu principal avec sidebar -->
    <main class="flex flex-col lg:flex-row min-h-screen">
        <!-- Contenu principal -->
        <div class="lg:w-3/4 w-full px-4 py-8 lg:py-12 lg:px-12">
            <!-- Présentation personnelle -->
            <section id="presentation" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-user text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Présentation personnelle</h2>
                </div>
                
                <div class="bg-white rounded-xl shadow-lg p-6 md:p-8 mb-8">
                    <div class="flex flex-col md:flex-row items-center md:items-start gap-8">
                        <div class="md:w-1/3">
                            <div class="relative">
                                <div class="w-48 h-48 mx-auto rounded-full overflow-hidden border-4 border-white shadow-xl">
                                    <img src="../Pictures/moi.png" alt="Photo de Mickaël Gall" class="w-full h-full object-cover" style="object-position: center 15%;" loading="lazy">
                                </div>
                                <div class="absolute -bottom-2 -right-2 bg-accent text-white px-4 py-2 rounded-lg shadow-lg">
                                    <span class="font-mono text-sm">Étudiant SISR</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="md:w-2/3">
                            <h3 class="text-2xl font-bold text-dark mb-4">Bonjour, je suis Mickaël Gall</h3>
                            <p class="text-gray-700 mb-4 leading-relaxed">
                                Actuellement en deuxième année de BTS SIO (Services Informatiques aux Organisations) option SISR (Solutions d'Infrastructure, Systèmes et Réseaux), je me passionne pour l'administration des systèmes et la sécurité informatique.
                            </p>
                            <p class="text-gray-700 mb-6 leading-relaxed">
                                Mon parcours m'a permis d'acquérir des compétences solides en gestion d'infrastructure, virtualisation et administration réseau. Je suis à la recherche d'une alternance pour septembre 2024 afin de mettre en pratique mes connaissances et développer mon expertise dans un environnement professionnel.
                            </p>
                            
                            <div class="grid grid-cols-2 md:grid-cols-3 gap-4 mt-6">
                                <div class="bg-light rounded-lg p-4 text-center">
                                    <div class="text-2xl font-bold text-accent mb-1">21</div>
                                    <div class="text-sm text-gray-600">Ans</div>
                                </div>
                                <div class="bg-light rounded-lg p-4 text-center">
                                    <div class="text-2xl font-bold text-accent mb-1">BTS</div>
                                    <div class="text-sm text-gray-600">SIO SISR</div>
                                </div>
                                <div class="bg-light rounded-lg p-4 text-center">
                                    <div class="text-2xl font-bold text-accent mb-1">Stage</div>
                                    <div class="text-sm text-gray-600">À venir</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div class="bg-gradient-to-r from-blue-50 to-light rounded-xl p-6">
                        <h4 class="text-xl font-semibold text-dark mb-4">Objectifs professionnels</h4>
                        <ul id="objectifs-list" class="space-y-3"></ul>
                    </div>
                    
                    <div class="bg-gradient-to-r from-gray-50 to-light rounded-xl p-6">
                        <h4 class="text-xl font-semibold text-dark mb-4">Centres d'intérêt</h4>
                        <div id="interests-container" class="flex flex-wrap gap-3"></div>
                    </div>
                </div>
            </section>

            <!-- Expériences professionnelles -->
            <section id="experiences" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-briefcase text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Expériences professionnelles</h2>
                </div>
                
                <div id="experiences-container" class="space-y-8"></div>
            </section>

            <!-- Parcours académique -->
            <section id="parcours" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-graduation-cap text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Parcours académique</h2>
                </div>
                
                <div id="parcours-container" class="relative">
                    <!-- Ligne verticale -->
                    <div class="absolute left-8 top-0 bottom-0 w-0.5 bg-gray-300 hidden md:block"></div>
                    <!-- Éléments du parcours -->
                    <div id="parcours-items" class="space-y-10"></div>
                </div>
            </section>

            <!-- Stage -->
            <section id="stage" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-building text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Mon stage</h2>
                </div>
                
                <div class="bg-white rounded-xl shadow-lg overflow-hidden">
                    <div class="md:flex">
                        <div class="md:w-2/5">
                            <img src="https://picsum.photos/600/400?random=202" alt="Environnement de stage" class="w-full h-64 md:h-full object-cover" loading="lazy">
                        </div>
                        <div class="md:w-3/5 p-6 md:p-8">
                            <div class="flex items-center mb-4">
                                <div class="bg-accent text-white px-4 py-1 rounded-full text-sm font-medium mr-4">
                                    À venir
                                </div>
                                <span class="text-gray-600"><i class="far fa-calendar mr-1"></i>Printemps 2024</span>
                            </div>
                            
                            <h3 class="text-2xl font-bold text-dark mb-4">Stage en administration systèmes et réseaux</h3>
                            <p class="text-gray-700 mb-6">
                                Dans le cadre de mon BTS SIO SISR, je recherche actuellement un stage de 8 à 10 semaines dans le domaine de l'administration systèmes et réseaux. Ce stage me permettra de mettre en pratique les compétences acquises durant ma formation et de découvrir le fonctionnement d'une infrastructure informatique en entreprise.
                            </p>
                            
                            <h4 class="text-xl font-semibold text-dark mb-3">Missions recherchées</h4>
                            <ul id="missions-list" class="space-y-2 mb-6"></ul>
                            
                            <div class="flex flex-wrap gap-4">
                                <div class="bg-light px-4 py-2 rounded-lg">
                                    <span class="text-sm text-gray-600">Durée:</span>
                                    <span class="font-medium ml-1">8-10 semaines</span>
                                </div>
                                <div class="bg-light px-4 py-2 rounded-lg">
                                    <span class="text-sm text-gray-600">Type:</span>
                                    <span class="font-medium ml-1">Stage de fin d'études</span>
                                </div>
                                <div class="bg-light px-4 py-2 rounded-lg">
                                    <span class="text-sm text-gray-600">Localisation:</span>
                                    <span class="font-medium ml-1">Lyon et région</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Veille technologique -->
            <section id="veille" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-binoculars text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Veille technologique</h2>
                </div>
                
                <div class="bg-gradient-to-r from-dark to-gray-800 text-white rounded-xl shadow-lg p-6 md:p-8 mb-8">
                    <h3 class="text-2xl font-bold mb-4">Ma démarche de veille</h3>
                    <p class="text-gray-300 mb-6">
                        Dans le domaine des systèmes et réseaux, la veille technologique est essentielle pour rester à jour sur les évolutions, les nouvelles vulnérabilités et les meilleures pratiques. J'utilise plusieurs outils et sources pour ma veille quotidienne.
                    </p>
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-white/10 rounded-lg p-5">
                            <h4 class="text-xl font-semibold mb-4">Outils utilisés</h4>
                            <div id="veille-outils" class="space-y-4"></div>
                        </div>
                        
                        <div class="bg-white/10 rounded-lg p-5">
                            <h4 class="text-xl font-semibold mb-4">Sujets suivis</h4>
                            <div id="veille-sujets" class="space-y-4"></div>
                        </div>
                    </div>
                </div>
                
            </section>

            <!-- Compétences clés -->
            <section id="competences" class="section-highlight mb-16 animate-fade-in">
                <div class="flex items-center mb-8">
                    <div class="w-12 h-12 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center mr-4">
                        <i class="fas fa-code text-white text-xl"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-dark">Compétences clés</h2>
                </div>
                
                <div id="competences-container" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
            </section>
        </div>

        <!-- Sidebar sommaire persistant -->
        <div class="sidebar-container lg:w-1/4 bg-sidebar border-l border-gray-200 lg:sticky lg:top-24 lg:h-[calc(100vh-6rem)] lg:overflow-y-auto">
            <div class="p-6">
                <div class="flex items-center justify-between mb-8">
                    <h3 class="text-xl font-bold text-dark">Sommaire</h3>
                    <button id="close-sidebar" class="lg:hidden text-gray-600 hover:text-dark">
                        <i class="fas fa-times text-xl"></i>
                    </button>
                </div>
                
                <nav id="sommaire-nav" class="space-y-2"></nav>
                
                <div class="mt-12 pt-8 border-t border-gray-300">
                    <h4 class="font-semibold text-dark mb-4">Compétences clés</h4>
                    <div id="skills-summary" class="space-y-4"></div>
                </div>
                
                <div class="mt-8 pt-6 border-t border-gray-300">
                    <h4 class="font-semibold text-dark mb-4">Contact rapide</h4>
                    <div class="space-y-3">
                        <a href="mailto:mickaelgall6@gmail.com" class="flex items-center text-gray-700 hover:text-accent">
                            <i class="fas fa-envelope mr-3 text-accent"></i>
                            <span>mickaelgall6@gmail.com</span>
                        </a>
                        <div class="flex items-center text-gray-700">
                            <i class="fas fa-phone mr-3 text-accent"></i>
                            <span>07 83 78 93 36</span>
                        </div>
                        <div class="flex items-center text-gray-700">
                            <i class="fas fa-map-marker-alt mr-3 text-accent"></i>
                            <span>La méaugon, France</span>
                        </div>
                    </div>
                    
                    <div class="flex space-x-4 mt-6">
                        <a href="#" class="w-10 h-10 bg-dark text-white rounded-full flex items-center justify-center hover:bg-gray-800">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a href="#" class="w-10 h-10 bg-dark text-white rounded-full flex items-center justify-center hover:bg-gray-800">
                            <i class="fab fa-github"></i>
                        </a>
                        <a href="#" class="w-10 h-10 bg-dark text-white rounded-full flex items-center justify-center hover:bg-gray-800">
                            <i class="fas fa-file-pdf"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white py-8">
        <div class="container mx-auto px-4">
            <div class="flex flex-col md:flex-row justify-between items-center">
                <div class="mb-6 md:mb-0">
                    <div class="flex items-center space-x-3 mb-4">
                        <div class="w-10 h-10 bg-gradient-to-r from-secondary to-accent rounded-lg flex items-center justify-center">
                            <i class="fas fa-laptop-code text-white"></i>
                        </div>
                        <div>
                            <h3 class="text-xl font-bold">Mickaël Gall</h3>
                            <p class="text-gray-400 text-sm">Portfolio étudiant BTS SIO SISR</p>
                        </div>
                    </div>
                    <p class="text-gray-400">© 2026 - Tous droits réservés</p>
                </div>
                
                <div class="text-center md:text-right">
                    <p class="text-gray-300 mb-2">Ce portfolio est modifiable via les données JavaScript</p>
                    <p class="text-sm text-gray-400">Dernière mise à jour: Mars 2026</p>
                </div>
            </div>
        </div>
    </footer>

    <script>
        // Données modifiables - Tout le contenu est centralisé ici
        const portfolioData = {
            // Informations personnelles
            personalInfo: {
                name: "Mickaël Gall",
                age: 21,
                formation: "BTS SIO SISR 2ème année",
                email: "mickael.gall@edu.fr",
                phone: "+33 6 12 34 56 78",
                location: "Lyon, France",
                description: "Actuellement en deuxième année de BTS SIO (Services Informatiques aux Organisations) option SISR (Solutions d'Infrastructure, Systèmes et Réseaux), je me passionne pour l'administration des systèmes et la sécurité informatique. Mon parcours m'a permis d'acquérir des compétences solides en gestion d'infrastructure, virtualisation et administration réseau.",
                objectives: [
                    "Trouver une alternance en administration systèmes/réseaux",
                    "Obtenir mon BTS SIO SISR avec mention",
                    "Développer une expertise en cybersécurité",
                    "Travailler dans une entreprise innovante du numérique"
                ],
                interests: [
                    { name: "Sécurité informatique", icon: "fas fa-shield-alt", color: "bg-red-100 text-red-600" },
                    { name: "Virtualisation", icon: "fas fa-server", color: "bg-blue-100 text-blue-600" },
                    { name: "Cloud Computing", icon: "fas fa-cloud", color: "bg-indigo-100 text-indigo-600" },
                    { name: "Réseaux", icon: "fas fa-network-wired", color: "bg-green-100 text-green-600" },
                    { name: "Linux", icon: "fab fa-linux", color: "bg-yellow-100 text-yellow-600" },
                    { name: "Automatisation", icon: "fas fa-robot", color: "bg-purple-100 text-purple-600" }
                ]
            },
            
            // Sections du sommaire
            sommaire: [
                { id: "presentation", title: "Ma présentation", icon: "fas fa-user" },
                { id: "experiences", title: "Expériences professionnelles", icon: "fas fa-briefcase" },
                { id: "parcours", title: "Mon parcours", icon: "fas fa-graduation-cap" },
                { id: "stage", title: "Mon stage", icon: "fas fa-building" },
                { id: "veille", title: "Veille technologique", icon: "fas fa-binoculars" }
            ],
            
            // Expériences professionnelles
            experiences: [
                {
                    title: "Assistant administrateur systèmes",
                    company: "TechSolutions SARL",
                    period: "Juillet - Août 2023",
                    location: "Lyon",
                    description: "Support aux utilisateurs, maintenance du parc informatique, surveillance des serveurs.",
                    skills: ["Windows Server", "Active Directory", "Virtualisation", "Support technique"],
                    type: "Stage"
                },
                {
                    title: "Technicien informatique",
                    company: "Informatique Express",
                    period: "Avril - Juin 2022",
                    location: "Villeurbanne",
                    description: "Maintenance matérielle et logicielle, installation de postes de travail, assistance aux clients.",
                    skills: ["Hardware", "Windows 10/11", "Réseaux locaux", "Dépannage"],
                    type: "Job étudiant"
                },
                {
                    title: "Développeur web freelance",
                    company: "Auto-entrepreneur",
                    period: "2021 - Présent",
                    location: "Télétravail",
                    description: "Création de sites vitrines pour petites entreprises et associations locales.",
                    skills: ["HTML/CSS", "JavaScript", "PHP", "WordPress"],
                    type: "Freelance"
                }
            ],
            
            // Parcours académique
            parcours: [
                {
                    year: "2023 - 2024",
                    title: "BTS SIO 2ème année",
                    institution: "Lycée Technologique",
                    location: "Lyon",
                    description: "Spécialisation SISR (Solutions d'Infrastructure, Systèmes et Réseaux). Projets: Mise en place d'un réseau d'entreprise, virtualisation, sécurité."
                },
                {
                    year: "2022 - 2023",
                    title: "BTS SIO 1ère année",
                    institution: "Lycée Technologique",
                    location: "Lyon",
                    description: "Découverte des bases des systèmes d'information, développement web, bases de données, initiation aux réseaux."
                },
                {
                    year: "2021 - 2022",
                    title: "Baccalauréat STI2D",
                    institution: "Lycée Technologique",
                    location: "Lyon",
                    description: "Option SIN (Systèmes d'Information et Numérique). Mention Assez Bien."
                },
                {
                    year: "2020 - 2021",
                    title: "Seconde générale",
                    institution: "Lycée Général",
                    location: "Lyon",
                    description: "Options: Sciences de l'ingénieur et Numérique et Sciences Informatiques."
                }
            ],
            
            // Stage
            stage: {
                status: "À venir",
                period: "Printemps 2024",
                duration: "8-10 semaines",
                type: "Stage de fin d'études",
                location: "Lyon et région",
                missions: [
                    "Participation à l'administration d'un parc informatique",
                    "Surveillance et maintenance des serveurs",
                    "Support aux utilisateurs (niveau 2)",
                    "Documentation technique",
                    "Tests de sécurité basiques"
                ]
            },
            
            // Veille technologique
            veille: {
                outils: [
                    { name: "Feedly", description: "Aggrégateur de flux RSS", icon: "fas fa-rss" },
                    { name: "Twitter/X", description: "Suivi d'experts", icon: "fab fa-twitter" },
                    { name: "Reddit", description: "Communautés spécialisées", icon: "fab fa-reddit" },
                    { name: "Podcasts", description: "Émissions techniques", icon: "fas fa-podcast" }
                ],
                sujets: [
                    { name: "Cybersécurité", description: "Nouvelles vulnérabilités", icon: "fas fa-lock" },
                    { name: "Cloud", description: "AWS, Azure, GCP", icon: "fas fa-cloud" },
                    { name: "DevOps", description: "Automatisation, CI/CD", icon: "fas fa-code-branch" },
                    { name: "Réseaux", description: "SD-WAN, 5G", icon: "fas fa-wifi" }
                ]
            },
            
            // Compétences détaillées
            competences: [
                {
                    category: "Systèmes d'exploitation",
                    skills: ["Windows Server 2019/2022", "Active Directory", "Linux (Ubuntu, CentOS)", "Hyper-V"]
                },
                {
                    category: "Réseaux & Infrastructure",
                    skills: ["Configuration réseau", "VLAN & Routing", "Firewalls", "Cloud Computing"]
                },
                {
                    category: "Virtualisation & Cloud",
                    skills: ["VMware vSphere", "Hyper-V", "AWS Basics", "Docker Basics"]
                }
            ],
            
            // Compétences résumées pour la sidebar
            skillsSummary: [
                { name: "Windows Server", level: 80 },
                { name: "Linux", level: 75 },
                { name: "Réseaux", level: 85 },
                { name: "Virtualisation", level: 70 },
                { name: "Sécurité", level: 65 }
            ]
        };

        // Fonctions de rendu réutilisables
        function renderSommaire(items) {
            return items.map(item => 
                `<a href="#${item.id}" data-section="${item.id}" class="flex items-center p-3 rounded-lg text-gray-700 hover:bg-white hover:shadow-sm transition-all duration-200 sidebar-link">
                    <i class="${item.icon} mr-3 text-accent w-5 text-center"></i>
                    <span class="font-medium">${item.title}</span>
                </a>`
            ).join("");
        }

        function renderObjectifs(items) {
            return items.map(item => 
                `<li class="flex items-start">
                    <i class="fas fa-check text-green-500 mt-1 mr-3"></i>
                    <span>${item}</span>
                </li>`
            ).join("");
        }

        function renderInterests(items) {
            return items.map(item => 
                `<div class="flex items-center ${item.color} px-3 py-2 rounded-full">
                    <i class="${item.icon} mr-2"></i>
                    <span class="text-sm font-medium">${item.name}</span>
                </div>`
            ).join("");
        }

        function renderExperiences(items) {
            return items.map(exp => 
                `<div class="bg-white rounded-xl shadow-sm p-6 border border-gray-100 hover:shadow-md transition-shadow duration-300">
                    <div class="flex flex-col md:flex-row md:items-center justify-between mb-4">
                        <div>
                            <h3 class="text-xl font-bold text-dark mb-1">${exp.title}</h3>
                            <div class="flex items-center text-gray-600 mb-2">
                                <i class="fas fa-building mr-2"></i>
                                <span class="font-medium">${exp.company}</span>
                                <span class="mx-2">•</span>
                                <i class="fas fa-map-marker-alt mr-1"></i>
                                <span>${exp.location}</span>
                            </div>
                        </div>
                        <div class="bg-light px-3 py-1 rounded-full text-sm font-medium text-gray-700">
                            ${exp.type}
                        </div>
                    </div>
                    
                    <div class="flex items-center text-gray-500 mb-4">
                        <i class="far fa-calendar mr-2"></i>
                        <span>${exp.period}</span>
                    </div>
                    
                    <p class="text-gray-700 mb-4">${exp.description}</p>
                    
                    <div class="flex flex-wrap gap-2">
                        ${exp.skills.map(skill => 
                            `<span class="bg-blue-50 text-blue-700 text-sm px-3 py-1 rounded-full">${skill}</span>`
                        ).join("")}
                    </div>
                </div>`
            ).join("");
        }

        function renderParcours(items) {
            return items.map((item, index) => 
                `<div class="relative flex items-start md:block">
                    <!-- Point sur la ligne -->
                    <div class="absolute left-8 top-6 w-4 h-4 bg-accent rounded-full border-4 border-white hidden md:block"></div>
                    
                    <!-- Contenu -->
                    <div class="ml-0 md:ml-16">
                        <div class="bg-white rounded-xl shadow-sm p-6 border border-gray-100">
                            <div class="flex justify-between items-start mb-4">
                                <div>
                                    <span class="inline-block bg-accent text-white text-sm font-medium px-3 py-1 rounded-full mb-2">${item.year}</span>
                                    <h3 class="text-xl font-bold text-dark mb-1">${item.title}</h3>
                                    <div class="flex items-center text-gray-600">
                                        <i class="fas fa-university mr-2"></i>
                                        <span>${item.institution}</span>
                                        <span class="mx-2">•</span>
                                        <i class="fas fa-map-marker-alt mr-1"></i>
                                        <span>${item.location}</span>
                                    </div>
                                </div>
                            </div>
                            <p class="text-gray-700">${item.description}</p>
                        </div>
                    </div>
                </div>`
            ).join("");
        }

        function renderMissions(items) {
            return items.map(item => 
                `<li class="flex items-start">
                    <i class="fas fa-check-circle text-accent mt-1 mr-3"></i>
                    <span>${item}</span>
                </li>`
            ).join("");
        }

        function renderVeilleOutils(items) {
            return items.map(item => 
                `<div class="flex items-center">
                    <div class="w-10 h-10 bg-white/20 rounded-lg flex items-center justify-center mr-4">
                        <i class="${item.icon}"></i>
                    </div>
                    <div>
                        <h5 class="font-semibold">${item.name}</h5>
                        <p class="text-sm text-gray-300">${item.description}</p>
                    </div>
                </div>`
            ).join("");
        }

        function renderVeilleSujets(items) {
            return items.map(item => 
                `<div class="flex items-center">
                    <div class="w-10 h-10 bg-white/20 rounded-lg flex items-center justify-center mr-4">
                        <i class="${item.icon}"></i>
                    </div>
                    <div>
                        <h5 class="font-semibold">${item.name}</h5>
                        <p class="text-sm text-gray-300">${item.description}</p>
                    </div>
                </div>`
            ).join("");
        }

        function renderCompetences(items) {
            return items.map(comp => 
                `<div class="bg-white rounded-xl shadow-sm p-6 border border-gray-100 hover:shadow-md transition-shadow duration-300">
                    <h4 class="text-lg font-bold text-dark mb-4 flex items-center">
                        <i class="fas fa-star text-accent mr-3"></i>
                        ${comp.category}
                    </h4>
                    <ul class="space-y-2">
                        ${comp.skills.map(skill => 
                            `<li class="flex items-center text-gray-700">
                                <span class="w-2 h-2 bg-accent rounded-full mr-3"></span>
                                ${skill}
                            </li>`
                        ).join("")}
                    </ul>
                </div>`
            ).join("");
        }

        function renderSkillsSummary(items) {
            return items.map(skill => 
                `<div class="space-y-1">
                    <span class="text-sm font-medium">${skill.name}</span>
                </div>`
            ).join("");
        }

        // Initialisation de la page
        document.addEventListener("DOMContentLoaded", function() {
            // Remplir les sections avec les données
            document.getElementById("objectifs-list").innerHTML = renderObjectifs(portfolioData.personalInfo.objectives);
            document.getElementById("interests-container").innerHTML = renderInterests(portfolioData.personalInfo.interests);
            document.getElementById("experiences-container").innerHTML = renderExperiences(portfolioData.experiences);
            document.getElementById("parcours-items").innerHTML = renderParcours(portfolioData.parcours);
            document.getElementById("missions-list").innerHTML = renderMissions(portfolioData.stage.missions);
            document.getElementById("veille-outils").innerHTML = renderVeilleOutils(portfolioData.veille.outils);
            document.getElementById("veille-sujets").innerHTML = renderVeilleSujets(portfolioData.veille.sujets);
            document.getElementById("competences-container").innerHTML = renderCompetences(portfolioData.competences);
            document.getElementById("sommaire-nav").innerHTML = renderSommaire(portfolioData.sommaire);
            document.getElementById("skills-summary").innerHTML = renderSkillsSummary(portfolioData.skillsSummary);
            
            // Mettre à jour les informations personnelles
            document.querySelector("h1").textContent = portfolioData.personalInfo.name;
            document.querySelector("title").textContent = `${portfolioData.personalInfo.name} - Portfolio BTS SIO SISR`;
            
            // Gestion du menu mobile
            const menuToggle = document.getElementById("menu-toggle");
            const closeSidebar = document.getElementById("close-sidebar");
            const sidebar = document.querySelector(".sidebar-container");
            const overlay = document.getElementById("sidebar-overlay");
            
            menuToggle.addEventListener("click", function() {
                sidebar.classList.add("open");
                overlay.classList.add("open");
            });
            
            closeSidebar.addEventListener("click", function() {
                sidebar.classList.remove("open");
                overlay.classList.remove("open");
            });
            
            overlay.addEventListener("click", function() {
                sidebar.classList.remove("open");
                overlay.classList.remove("open");
            });
            
            // Navigation avec highlight de section active
            const sections = document.querySelectorAll("section[id]");
            const sidebarLinks = document.querySelectorAll(".sidebar-link");
            
            function updateActiveSection() {
                const scrollPosition = window.scrollY + 150;
                
                sections.forEach(section => {
                    const sectionTop = section.offsetTop;
                    const sectionHeight = section.clientHeight;
                    const sectionId = section.getAttribute("id");
                    
                    if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
                        // Mettre à jour la sidebar
                        sidebarLinks.forEach(link => {
                            link.classList.remove("sidebar-active");
                            if (link.getAttribute("data-section") === sectionId) {
                                link.classList.add("sidebar-active");
                            }
                        });
                        
                        // Mettre à jour le highlight dans le contenu
                        document.querySelectorAll(".section-highlight").forEach(sec => {
                            sec.classList.remove("active");
                        });
                        section.classList.add("active");
                    }
                });
            }
            
            // Écouter le scroll
            window.addEventListener("scroll", updateActiveSection);
            
            // Initialiser la section active au chargement
            updateActiveSection();
            
            // Animation des barres de compétences
            const observerOptions = {
                threshold: 0.5
            };
            
            const observer = new IntersectionObserver(function(entries) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const skillBars = document.querySelectorAll(".skill-level-bar");
                        skillBars.forEach(bar => {
                            const width = bar.style.width;
                            bar.style.width = "0";
                            setTimeout(() => {
                                bar.style.width = width;
                            }, 300);
                        });
                    }
                });
            }, observerOptions);
            
            // Observer la section compétences dans la sidebar
            const skillsSection = document.getElementById("skills-summary");
            if (skillsSection) {
                observer.observe(skillsSection);
            }
            
            // Fermer le sidebar mobile après clic sur un lien
            sidebarLinks.forEach(link => {
                link.addEventListener("click", function() {
                    if (window.innerWidth < 1024) {
                        sidebar.classList.remove("open");
                        overlay.classList.remove("open");
                    }
                });
            });
            
            // Empêcher le comportement par défaut des liens internes
            document.addEventListener("click", function(event) {
                const link = event.target.closest("a[href^='#']");
                if (!link) return;
                
                event.preventDefault();
                const targetId = link.getAttribute("href");
                const targetElement = document.querySelector(targetId);
                
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 100,
                        behavior: "smooth"
                    });
                }
            });
        });
    </script>
</body>
</html>
