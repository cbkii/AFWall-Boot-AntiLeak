.class Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;
.super Ljava/lang/Object;
.source "Nsec3ValidationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/dnssec/Nsec3ValidationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Nsec3CacheEntry"
.end annotation


# instance fields
.field private asBase32:Ljava/lang/String;

.field private final hash:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->hash:[B

    return-void
.end method


# virtual methods
.method public getHash()[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->hash:[B

    return-object v0
.end method

.method getHashAsBase32()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->asBase32:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;->access$000()Lorg/xbill/DNS/utils/base32;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->hash:[B

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/base32;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->asBase32:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/Nsec3ValidationState$Nsec3CacheEntry;->asBase32:Ljava/lang/String;

    return-object v0
.end method
