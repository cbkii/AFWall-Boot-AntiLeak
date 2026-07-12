.class Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECKeyInfo"
.end annotation


# instance fields
.field curve:Ljava/security/spec/EllipticCurve;

.field length:I

.field spec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 605
    new-instance p1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-direct {p1, p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 606
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 607
    new-instance p3, Ljava/math/BigInteger;

    invoke-direct {p3, p4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 608
    new-instance p4, Ljava/math/BigInteger;

    invoke-direct {p4, p5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 609
    new-instance p5, Ljava/math/BigInteger;

    invoke-direct {p5, p6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 610
    new-instance p6, Ljava/math/BigInteger;

    invoke-direct {p6, p7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 611
    new-instance p7, Ljava/security/spec/EllipticCurve;

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-direct {v0, p1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p7, v0, p2, p3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p7, p0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->curve:Ljava/security/spec/EllipticCurve;

    .line 612
    new-instance p1, Ljava/security/spec/ECParameterSpec;

    iget-object p2, p0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->curve:Ljava/security/spec/EllipticCurve;

    new-instance p3, Ljava/security/spec/ECPoint;

    invoke-direct {p3, p4, p5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p6, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method
