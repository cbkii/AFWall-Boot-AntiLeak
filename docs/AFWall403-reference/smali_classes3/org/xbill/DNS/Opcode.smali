.class public final Lorg/xbill/DNS/Opcode;
.super Ljava/lang/Object;
.source "Opcode.java"


# static fields
.field public static final DSO:I = 0x6

.field public static final IQUERY:I = 0x1

.field public static final NOTIFY:I = 0x4

.field public static final QUERY:I = 0x0

.field public static final STATUS:I = 0x2

.field public static final UPDATE:I = 0x5

.field private static final opcodes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "DNS Opcode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    .line 38
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const-string v1, "RESERVED"

    .line 39
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    const/4 v3, 0x0

    const-string v4, "QUERY"

    .line 42
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v3, "IQUERY"

    .line 43
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "STATUS"

    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "NOTIFY"

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "UPDATE"

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "DSO"

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    .line 54
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Opcode;->opcodes:Lorg/xbill/DNS/Mnemonic;

    .line 59
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
