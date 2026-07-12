.class public Lorg/xbill/DNS/config/FallbackPropertyResolverConfigProvider;
.super Lorg/xbill/DNS/config/PropertyResolverConfigProvider;
.source "FallbackPropertyResolverConfigProvider.java"


# static fields
.field public static final DNS_FALLBACK_NDOTS_PROP:Ljava/lang/String; = "dns.fallback.ndots"

.field public static final DNS_FALLBACK_SEARCH_PROP:Ljava/lang/String; = "dns.fallback.search"

.field public static final DNS_FALLBACK_SERVER_PROP:Ljava/lang/String; = "dns.fallback.server"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/xbill/DNS/config/PropertyResolverConfigProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    const-string v0, "dns.fallback.search"

    const-string v1, "dns.fallback.ndots"

    const-string v2, "dns.fallback.server"

    .line 18
    invoke-virtual {p0, v2, v0, v1}, Lorg/xbill/DNS/config/FallbackPropertyResolverConfigProvider;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
