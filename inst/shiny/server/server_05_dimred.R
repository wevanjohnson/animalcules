#
# PCA
#
# Plot
do_dimred_pca_plot <- eventReactive(input$dimred_pca_plot_btn, {
    if (input$dimred_pca_shape == "None") {shape <- NULL} else {shape <- input$dimred_pca_shape}
    if (is.na(input$dimred_pca_z)) {pcz <- NULL} else {pcz <- input$dimred_pca_z}
    result <- dimred_pca(MAE = vals$MAE,
                         tax_level = input$dimred_pca_taxlev,
                         color = input$dimred_pca_color,
                         shape = shape,
                         pcx = input$dimred_pca_x,
                         pcy = input$dimred_pca_y,
                         pcz = pcz,
                         datatype = input$dimred_pca_datatype)
    return(suppressWarnings(result$plot))
})
output$dimred_pca_plot <- renderPlotly({
    p <- suppressWarnings(do_dimred_pca_plot())
    return(suppressWarnings(p))
})
# Table
do_dimred_pca_table <- eventReactive(input$dimred_pca_table_btn, {
    if (input$dimred_pca_shape == "None") {shape <- NULL} else {shape <- input$dimred_pca_shape}
    result <- dimred_pca(MAE = vals$MAE,
                         tax_level = input$dimred_pca_taxlev,
                         color = input$dimred_pca_color,
                         shape = shape,
                         pcx = input$dimred_pca_x,
                         pcy = input$dimred_pca_y,
                         datatype = input$dimred_pca_datatype)
    return(result$table)
})
output$dimred_pca_table <- renderDataTable({
    t <- do_dimred_pca_table()
    return(t)
})

#
# PCoA
#
# Plot
do_dimred_pcoa_plot <- eventReactive(input$dimred_pcoa_plot_btn, {
    if (input$dimred_pcoa_shape == "None") {shape <- NULL} else {shape <- input$dimred_pcoa_shape}
    if (is.na(input$dimred_pcoa_z)) {axz <- NULL} else {axz <- input$dimred_pcoa_z}
    result <- dimred_pcoa(MAE = vals$MAE,
                          tax_level = input$dimred_pcoa_taxlev,
                          color = input$dimred_pcoa_color,
                          shape = shape,
                          axx = input$dimred_pcoa_x,
                          axy = input$dimred_pcoa_y,
                          axz = axz,
                          method = input$dimred_pcoa_method)
    return(result$plot)
})
output$dimred_pcoa_plot <- renderPlotly({
    p <- do_dimred_pcoa_plot()
    return(p)
})
# Table
do_dimred_pcoa_table <- eventReactive(input$dimred_pcoa_table_btn, {
    if (input$dimred_pcoa_shape == "None") {shape <- NULL} else {shape <- input$dimred_pcoa_shape}
    result <- dimred_pcoa(MAE = vals$MAE,
                          tax_level = input$dimred_pcoa_taxlev,
                          color = input$dimred_pcoa_color,
                          shape = shape,
                          axx = input$dimred_pcoa_x,
                          axy = input$dimred_pcoa_y,
                          method = input$dimred_pcoa_method)
    return(result$table)
})
output$dimred_pcoa_table <- renderDataTable({
    t <- do_dimred_pcoa_table()
    return(t)
})

#
# t-SNE
#
# Plot
do_dimred_tsne_plot <- eventReactive(input$dimred_tsne_plot_btn, {
  withBusyIndicatorServer("dimred_tsne_plot_btn", {
    if (input$dimred_tsne_shape == "None") {shape <- NULL} else {shape <- input$dimred_tsne_shape}
    if (input$dimred_tsne_cached & !is.null(vals$tsne)) {
        # Used cached t-SNE results
        result <- dimred_tsne(MAE = vals$MAE,
                              tax_level = NULL,
                              color = input$dimred_tsne_color,
                              shape = shape,
                              tsne_cache = vals$tsne$data)
    } else {
        result <- dimred_tsne(MAE = vals$MAE,
                              tax_level = input$dimred_tsne_taxlev,
                              color = input$dimred_tsne_color,
                              shape = shape,
                              k = input$dimred_tsne_k,
                              initial_dims= input$dimred_tsne_initial_dims,
                              perplexity = input$dimred_tsne_perplexity,
                              datatype = input$dimred_tsne_datatype)
    }
    vals$tsne <- result # Cache results
    return(result$plot)
  })
})
output$dimred_tsne_plot <- renderPlotly({
    p <- do_dimred_tsne_plot()
    return(p)
})
