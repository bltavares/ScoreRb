              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Reek: code smells';
        g.data('IrresponsibleModule', [1])
g.data('LongMethod', [1])
g.data('LowCohesion', [1])
g.data('UncommunicativeName', [1])

        g.labels = {"0":"3/16"};
        g.draw();
