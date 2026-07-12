.class public Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureNotYetValidException"
.end annotation


# instance fields
.field private final now:Ljava/time/Instant;

.field private final when:Ljava/time/Instant;


# direct methods
.method constructor <init>(Ljava/time/Instant;Ljava/time/Instant;)V
    .locals 1

    const-string v0, "signature is not yet valid"

    .line 451
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->when:Ljava/time/Instant;

    iput-object p2, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->now:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->when:Ljava/time/Instant;

    return-object v0
.end method

.method public getVerifyTime()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;->now:Ljava/time/Instant;

    return-object v0
.end method
