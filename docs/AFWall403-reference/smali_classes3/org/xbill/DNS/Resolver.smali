.class public interface abstract Lorg/xbill/DNS/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# virtual methods
.method public abstract getTimeout()Ljava/time/Duration;
.end method

.method public abstract send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setEDNS(I)V
.end method

.method public abstract setEDNS(IIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/EDNSOption;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V
.end method

.method public abstract setIgnoreTruncation(Z)V
.end method

.method public abstract setPort(I)V
.end method

.method public abstract setTCP(Z)V
.end method

.method public abstract setTSIGKey(Lorg/xbill/DNS/TSIG;)V
.end method

.method public abstract setTimeout(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTimeout(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setTimeout(Ljava/time/Duration;)V
.end method
