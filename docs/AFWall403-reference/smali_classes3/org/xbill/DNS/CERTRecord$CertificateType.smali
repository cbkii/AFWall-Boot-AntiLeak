.class public Lorg/xbill/DNS/CERTRecord$CertificateType;
.super Ljava/lang/Object;
.source "CERTRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/CERTRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateType"
.end annotation


# static fields
.field public static final ACPKIX:I = 0x7

.field public static final IACPKIX:I = 0x8

.field public static final IPGP:I = 0x6

.field public static final IPKIX:I = 0x4

.field public static final ISPKI:I = 0x5

.field public static final OID:I = 0xfe

.field public static final PGP:I = 0x3

.field public static final PKIX:I = 0x1

.field public static final SPKI:I = 0x2

.field public static final URI:I = 0xfd

.field private static final types:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Certificate type"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    .line 58
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    const-string v3, "PKIX"

    .line 61
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v3, "SPKI"

    .line 62
    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v3, "PGP"

    const/4 v4, 0x3

    .line 63
    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v3, "IPKIX"

    .line 64
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "ISPKI"

    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "IPGP"

    .line 66
    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "ACPKIX"

    .line 67
    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "IACPKIX"

    .line 68
    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xfd

    const-string v2, "URI"

    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xfe

    const-string v2, "OID"

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    .line 75
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/CERTRecord$CertificateType;->types:Lorg/xbill/DNS/Mnemonic;

    .line 86
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
