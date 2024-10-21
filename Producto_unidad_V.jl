using Random
using PlotlyJS

# Establecer semilla para reproducibilidad
Random.seed!(42)

# Generar datos aleatorios
num_points = 100
x = collect(1:num_points)
y1 = rand(num_points) * 100  # Datos para gráfico de barras
y2 = cumsum(rand(num_points)) * 10  # Datos acumulativos para gráfico de áreas
z = rand(num_points, num_points)  # Datos aleatorios para mapa de calor

# Gráfico de Barras
bar_plot = bar(x=x, y=y1, marker_color="blue", name="Valores Aleatorios")
bar_layout = Layout(title="Gráfico de Barras", xaxis_title="Índice", yaxis_title="Valor")
display(Plot(bar_plot, bar_layout))

# Gráfico de Áreas
area_plot = scatter(x=x, y=y2, fill="tozeroy", mode="lines", line_color="green", name="Datos Acumulativos")
area_layout = Layout(title="Gráfico de Áreas", xaxis_title="Índice", yaxis_title="Valor")
display(Plot(area_plot, area_layout))


# Gráfico de Dispersión
scatter_plot = scatter(x=x, y=y1, mode="markers", marker_color="orange", name="Dispersión")
scatter_layout = Layout(title="Gráfico de Dispersión", xaxis_title="Índice", yaxis_title="Valor")
display(Plot(scatter_plot, scatter_layout))

# Mapa de Calor
heatmap_plot = heatmap(z=z, colorscale="Viridis")
heatmap_layout = Layout(title="Mapa de Calor", xaxis_title="Índice X", yaxis_title="Índice Y")
display(Plot(heatmap_plot, heatmap_layout))
