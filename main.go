package main

import (
	"go-cms/config"

	"github.com/gin-gonic/gin"
)

func ginOptionFunc(c *gin.Engine) {

	tmpl, _ := config.DefineTemplates()

	c.SetHTMLTemplate(tmpl)
	c.Static("/static", "public")
}

var defaultTheme = "custom/index.tpl"

func main() {

	r := gin.Default(ginOptionFunc)

	config.SetApiRoutes(r)
	config.SetWebRoutes(r)

	// r.GET("/login", func(c *gin.Context) {

	// 	data = gin.H{
	// 		"title": "Login",
	// 		"route": "login",
	// 		"items": map[string]interface{}{
	// 			"banner-title":   "Detach title",
	// 			"banner-content": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
	// 			"detach-image":   []string{"", "", ""},
	// 			"detach-title":   []string{"Tiroteio fecha Av. Brasil e Linha Vermelha; helicóptero da PM é atingido", "'A gente já perdeu tudo': presidentes de escolas de samba lamentam", "VÍDEO: veja como era a fábrica por dentro antes do incêndio"},
	// 			"detach-resume":  []string{"Animais, anéis, documentos: brasileiros deportados dos EUA deixam tudo pra trás e se queixam de falta de regras claras", "'Se acontecer algo comigo, saiba que tentei ao máximo', escreveu brasileiro vítima de tráfico humano ao pai antes de fugir de máfia em Mianmar", "Neymar compra mansões de luxo em Santos por 'valor bem significativo'; ex-dono revela detalhes da negociação"},
	// 		},
	// 	}

	// 	c.HTML(http.StatusOK, defaultTheme, data)
	// })

	// r.NoRoute(func(c *gin.Context) {

	// 	data = gin.H{
	// 		"title": "Não encontrado",
	// 		"route": "404",
	// 	}

	// 	c.HTML(http.StatusOK, defaultTheme, data)
	// })

	r.Run(":3000")
}
