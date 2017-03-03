.class public interface abstract Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;
.super Ljava/lang/Object;
.source "ActivityPlanningHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V
    .param p1    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
