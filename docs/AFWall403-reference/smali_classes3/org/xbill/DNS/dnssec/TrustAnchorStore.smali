.class public interface abstract Lorg/xbill/DNS/dnssec/TrustAnchorStore;
.super Ljava/lang/Object;
.source "TrustAnchorStore.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
.end method

.method public abstract items()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract store(Lorg/xbill/DNS/RRset;)V
.end method
