.class final Lcom/tencent/map/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/e;


# direct methods
.method private constructor <init>(Lcom/tencent/map/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/map/b/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/map/b/e$a;-><init>(Lcom/tencent/map/b/e;)V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    const-wide v8, 0x3e45798ee2308c3aL    # 1.0E-8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x403dffffe2000000L    # 29.999998211860657

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_0

    const-wide v6, 0x4059fffffc800000L    # 103.99999916553497

    cmpl-double v1, v4, v6

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v8

    if-ltz v1, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v1, v6, v8

    if-ltz v1, :cond_0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v6

    if-ltz v1, :cond_0

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v4, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v1, v4, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;J)J

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;)V

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;I)I

    iget-object v8, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    new-instance v0, Lcom/tencent/map/b/e$b;

    iget-object v1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    iget-object v2, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v2}, Lcom/tencent/map/b/e;->b(Lcom/tencent/map/b/e;)I

    move-result v3

    iget-object v2, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v2}, Lcom/tencent/map/b/e;->c(Lcom/tencent/map/b/e;)I

    move-result v4

    iget-object v2, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v2}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I

    move-result v5

    iget-object v2, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v2}, Lcom/tencent/map/b/e;->e(Lcom/tencent/map/b/e;)J

    move-result-wide v6

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/tencent/map/b/e$b;-><init>(Lcom/tencent/map/b/e;Landroid/location/Location;IIIJ)V

    invoke-static {v8, v0}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e;Lcom/tencent/map/b/e$b;)Lcom/tencent/map/b/e$b;

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v1}, Lcom/tencent/map/b/e;->g(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/e$c;->a(Lcom/tencent/map/b/e$b;)V

    goto/16 :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    iget-object v1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v1, v2}, Lcom/tencent/map/b/e;->c(Lcom/tencent/map/b/e;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->b(Lcom/tencent/map/b/e;I)I

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0, v2}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;I)I

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/e$c;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;I)I

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v0}, Lcom/tencent/map/b/e;->f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/e$a;->a:Lcom/tencent/map/b/e;

    invoke-static {v1}, Lcom/tencent/map/b/e;->d(Lcom/tencent/map/b/e;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/e$c;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
