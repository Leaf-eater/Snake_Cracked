.class public interface abstract Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;
.super Ljava/lang/Object;
.source "ShareInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/net/handler/ShareInfoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareInfoCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
.end method
