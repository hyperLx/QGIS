class QgsMultiBandColorRendererWidget: QgsRasterRendererWidget
{
%TypeHeaderCode
#include <qgsmultibandcolorrendererwidget.h>
%End

  public:
    QgsMultiBandColorRendererWidget( QgsRasterLayer *layer, const QgsRectangle &extent = QgsRectangle() );
    static QgsRasterRendererWidget *create( QgsRasterLayer *layer, const QgsRectangle &extent );
    ~QgsMultiBandColorRendererWidget();

    QgsRasterRenderer *renderer();
    void setMapCanvas( QgsMapCanvas *canvas );

    void setFromRenderer( const QgsRasterRenderer *r );

    QString min( int index = 0 );
    QString max( int index = 0 );
    void setMin( const QString &value, int index = 0 );
    void setMax( const QString &value, int index = 0 );
    int selectedBand( int index = 0 );
    void doComputations();

  public slots:
    void loadMinMax( int bandNo, double min, double max );
};
