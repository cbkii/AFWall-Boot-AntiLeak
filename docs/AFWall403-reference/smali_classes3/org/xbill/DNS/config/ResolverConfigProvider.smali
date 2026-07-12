.class public interface abstract Lorg/xbill/DNS/config/ResolverConfigProvider;
.super Ljava/lang/Object;
.source "ResolverConfigProvider.java"


# virtual methods
.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/config/InitializationException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract ndots()I
.end method

.method public abstract searchPaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end method

.method public abstract servers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end method
