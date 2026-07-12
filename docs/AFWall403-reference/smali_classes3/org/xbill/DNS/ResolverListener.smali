.class public interface abstract Lorg/xbill/DNS/ResolverListener;
.super Ljava/lang/Object;
.source "ResolverListener.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
.end method

.method public abstract receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V
.end method
