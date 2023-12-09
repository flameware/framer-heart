# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Seongki Sohn"
	twitter: ""
	description: ""


# Import file "sample" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/sample@2x")


delayTime = [0.15, 0.23, 0.45, 0.2, 0.39, 0.38, 0.35, 0.3];


sketch.BG.onTap (event, layer) ->	
	for index in [0...8]
		heartLayer = new Layer
			image: "images/heart.svg"
			width: 80
			height: 74
			midX: event.pointX
			midY: event.pointY
	
		heartLayer.animate
			x: heartLayer.x + Utils.randomNumber(-40, 40)
			y: -heartLayer.height
			opacity: 0
			options:
				time: Utils.randomNumber(0.5, 1.5)
				curve: "ease-in"
				# curve: "spring(80, 50, 0)"
				delay: delayTime[index]
	
		heartLayer.onAnimationEnd (event, layer) ->
			this.destroy()



