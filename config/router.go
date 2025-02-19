package config

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func SetApiRoutes(r *gin.Engine) {

	// data := gin.H{
	// 	"items": gin.H{
	// 		"banner": gin.H{
	// 			"image":   "static/img/image-1.jpg",
	// 			"title":   "Banner Title",
	// 			"content": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
	// 		},
	// 		"detach": []gin.H{
	// 			{
	// 				"image":  "/static/img/image-2.jpg",
	// 				"title":  "Detach A",
	// 				"resume": "Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
	// 			},
	// 			{
	// 				"image":  "/static/img/image-3.jpg",
	// 				"title":  "Detach B",
	// 				"resume": "Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
	// 			},
	// 			{
	// 				"image":  "/static/img/image-3.jpg",
	// 				"title":  "Detach C",
	// 				"resume": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
	// 			},
	// 		},
	// 		"news": []gin.H{
	// 			{
	// 				"image":    "/static/img/image-4.jpg",
	// 				"title":    "News Title A",
	// 				"time":     "Há 2 horas",
	// 				"category": "Esportes",
	// 			},
	// 			{
	// 				"image":    "/static/img/image-4.jpg",
	// 				"title":    "News Title B",
	// 				"time":     "Há 5 horas",
	// 				"category": "Política",
	// 			},
	// 			{
	// 				"image":    "/static/img/image-4.jpg",
	// 				"title":    "News Title C",
	// 				"time":     "Há 3 anos",
	// 				"category": "Política",
	// 			},
	// 		},
	// 	},
	// }

	apiGroup := r.Group("/api/v1")

	apiGroup.Handle("GET", "/users", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{})
	})

	apiGroup.Handle("GET", "/items", func(c *gin.Context) {
		fields := c.QueryArray("field")
		c.JSON(http.StatusOK, gin.H{"fields": fields})
	})
}

func SetWebRoutes(r *gin.Engine) {

	data := gin.H{
		"page": gin.H{
			"title": "Hello World",
			"route": "index",
		},
		"items": gin.H{
			"banner": gin.H{
				"image":   "/static/img/image-1.jpg",
				"title":   "Banner Title",
				"content": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
			},
			"detach": []gin.H{
				{
					"image":  "/static/img/image-2.jpg",
					"title":  "Detach A",
					"resume": "Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
				},
				{
					"image":  "/static/img/image-3.jpg",
					"title":  "Detach B",
					"resume": "Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
				},
				{
					"image":  "/static/img/image-3.jpg",
					"title":  "Detach C",
					"resume": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
				},
			},
			"news": []gin.H{
				{
					"image":    "/static/img/image-4.jpg",
					"title":    "News Title A",
					"time":     "Há 2 horas",
					"category": "Esportes",
				},
				{
					"image":    "/static/img/image-4.jpg",
					"title":    "News Title B",
					"time":     "Há 5 horas",
					"category": "Política",
				},
				{
					"image":    "/static/img/image-4.jpg",
					"title":    "News Title C",
					"time":     "Há 3 anos",
					"category": "Política",
				},
			},
		},
	}

	r.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "custom/index.tpl", data)
	})

}
