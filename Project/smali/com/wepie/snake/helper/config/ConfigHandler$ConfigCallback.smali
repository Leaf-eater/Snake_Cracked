.class public interface abstract Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;
.super Ljava/lang/Object;
.source "ConfigHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/helper/config/ConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Lcom/wepie/snake/helper/config/ConfigInfo;)V
.end method
