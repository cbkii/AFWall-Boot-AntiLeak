.class final Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
.super Ljava/lang/Object;
.source "JustifiedSecStatus.java"


# instance fields
.field edeReason:I

.field reason:Ljava/lang/String;

.field status:Lorg/xbill/DNS/dnssec/SecurityStatus;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput p2, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method applyToResponse(Lorg/xbill/DNS/dnssec/SMessage;)V
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget v1, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-void
.end method
