.class public Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;
.super Ljava/lang/Object;
.source "JndiContextResolverConfigProvider.java"

# interfaces
.implements Lorg/xbill/DNS/config/ResolverConfigProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;

    .line 23
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.vendor"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;-><init>(Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$1;)V

    iput-object v0, p0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->log:Lorg/slf4j/Logger;

    const-string v1, "JNDI DNS not available"

    .line 32
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    .line 89
    invoke-virtual {v0}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->initialize()V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic ndots()I
    .locals 1

    invoke-static {p0}, Lorg/xbill/DNS/config/ResolverConfigProvider$-CC;->$default$ndots(Lorg/xbill/DNS/config/ResolverConfigProvider;)I

    move-result v0

    return v0
.end method

.method public searchPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    .line 99
    invoke-virtual {v0}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->searchPaths()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public servers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider;->inner:Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;

    .line 94
    invoke-virtual {v0}, Lorg/xbill/DNS/config/JndiContextResolverConfigProvider$InnerJndiContextResolverConfigProvider;->servers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
