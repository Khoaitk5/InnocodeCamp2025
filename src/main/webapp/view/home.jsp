<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home | GlobalWorks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/auth-forms.css">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body class="bg-gray-50">
    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-blue-600 to-purple-600 text-white py-16 text-center">
        <h1 class="text-4xl font-bold mb-4">Welcome back, ${sessionScope.user.fullname}! 👋</h1>
        <p class="text-xl text-blue-100 mb-8">Ready to advance your IT career? Explore our tools and find your next opportunity.</p>
    </div>
    <!-- Stats Section -->
    <div class="max-w-7xl mx-auto px-4 -mt-12">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
            <div class="card flex items-center">
                <div class="stat-icon bg-blue-100">
                    <i data-lucide="briefcase" class="w-6 h-6 text-blue-600"></i>
                </div>
                <div class="ml-4">
                    <p class="text-sm font-medium text-gray-600">Recent Jobs</p>
                    <p class="text-2xl font-bold text-gray-900">${stats.totalJobs}</p>
                </div>
            </div>
            <div class="card flex items-center">
                <div class="stat-icon bg-green-100">
                    <i data-lucide="file-text" class="w-6 h-6 text-green-600"></i>
                </div>
                <div class="ml-4">
                    <p class="text-sm font-medium text-gray-600">Applications</p>
                    <p class="text-2xl font-bold text-gray-900">${stats.totalApplications}</p>
                </div>
            </div>
            <div class="card flex items-center">
                <div class="stat-icon bg-purple-100">
                    <i data-lucide="bar-chart-3" class="w-6 h-6 text-purple-600"></i>
                </div>
                <div class="ml-4">
                    <p class="text-sm font-medium text-gray-600">Skills</p>
                    <p class="text-2xl font-bold text-gray-900">${stats.totalSkills}</p>
                </div>
            </div>
            <div class="card flex items-center">
                <div class="stat-icon bg-pink-100">
                    <i data-lucide="message-square" class="w-6 h-6 text-pink-600"></i>
                </div>
                <div class="ml-4">
                    <p class="text-sm font-medium text-gray-600">Chat Sessions</p>
                    <p class="text-2xl font-bold text-gray-900">${stats.totalChats}</p>
                </div>
            </div>
        </div>
        <!-- Main Grid -->
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 main-grid">
            <!-- Quick Actions -->
            <div class="lg:col-span-2">
                <h2 class="text-2xl font-bold text-gray-900 mb-6">Quick Actions</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <a href="../inputDescription.jsp" class="card flex items-start hover:shadow-lg transition">
                        <div class="quick-action-icon skills">
                            <i data-lucide="upload" class="w-6 h-6"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900">Skills Analysis</h3>
                            <p class="text-gray-600">Upload your CV or describe your experience to analyze your skills</p>
                        </div>
                    </a>
                    <a href="../jobSuggestions.jsp" class="card flex items-start hover:shadow-lg transition">
                        <div class="quick-action-icon jobs">
                            <i data-lucide="search" class="w-6 h-6"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900">Job Recommendations</h3>
                            <p class="text-gray-600">Get personalized job recommendations based on your skills</p>
                        </div>
                    </a>
                    <a href="../skillChart.jsp" class="card flex items-start hover:shadow-lg transition">
                        <div class="quick-action-icon chart">
                            <i data-lucide="bar-chart-3" class="w-6 h-6"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900">Skills Chart</h3>
                            <p class="text-gray-600">Visualize your skills with interactive radar charts</p>
                        </div>
                    </a>
                    <a href="../jobApplications.jsp" class="card flex items-start hover:shadow-lg transition">
                        <div class="quick-action-icon applications">
                            <i data-lucide="briefcase" class="w-6 h-6"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900">My Applications</h3>
                            <p class="text-gray-600">Track your job applications and their status</p>
                        </div>
                    </a>
                    <a href="../chatbot.jsp" class="card flex items-start hover:shadow-lg transition">
                        <div class="quick-action-icon chatbot">
                            <i data-lucide="message-square" class="w-6 h-6"></i>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-gray-900">Career Chatbot</h3>
                            <p class="text-gray-600">Get AI-powered career guidance and advice</p>
                        </div>
                    </a>
                </div>
            </div>
            <!-- Sidebar -->
            <div class="space-y-6">
                <div class="card">
                    <h3 class="text-lg font-semibold text-gray-900 mb-4 flex items-center">
                        <i data-lucide="trending-up" class="w-5 h-5 mr-2 text-blue-600"></i>
                        Recent Jobs
                    </h3>
                    <div class="space-y-3">
                        <c:choose>
                            <c:when test="${not empty recentJobs}">
                                <c:forEach var="job" items="${recentJobs}">
                                    <div class="recent-job">
                                        <h4 class="font-medium text-gray-900 text-sm">${job.title}</h4>
                                        <p class="text-gray-600 text-sm">${job.company}</p>
                                        <div class="flex items-center text-xs text-gray-500 mt-1">
                                            <i data-lucide="map-pin" class="w-3 h-3 mr-1"></i>
                                            ${job.location}
                                            <i data-lucide="clock" class="w-3 h-3 ml-2 mr-1"></i>
                                            ${job.created_at}
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p class="text-gray-500 text-sm">No recent jobs available</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <!-- Top Skills -->
                <div class="card">
                    <h3 class="text-lg font-semibold text-gray-900 mb-4 flex items-center">
                        <i data-lucide="star" class="w-5 h-5 mr-2 text-yellow-600"></i>
                        Your Top Skills
                    </h3>
                    <div class="space-y-2">
                        <c:choose>
                            <c:when test="${not empty userSkills}">
                                <c:forEach var="skill" items="${userSkills}" begin="0" end="4">
                                    <div class="flex justify-between items-center">
                                        <span class="text-sm text-gray-700">${skill.skill_name}</span>
                                        <div class="flex items-center">
                                            <div class="skill-bar-bg">
                                                <div class="skill-bar" style="width:${skill.score}%"></div>
                                            </div>
                                            <span class="text-xs text-gray-500">${skill.score}%</span>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p class="text-gray-500 text-sm">
                                    No skills yet. <a href="../inputDescription.jsp" class="text-blue-600 hover:underline">Add your skills</a>
                                </p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>lucide.createIcons();</script>
</body>
</html>
