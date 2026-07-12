.class public Lorg/xbill/DNS/EDNSOption$Code;
.super Ljava/lang/Object;
.source "EDNSOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/EDNSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# static fields
.field public static final CHAIN:I = 0xd

.field public static final CLIENT_SUBNET:I = 0x8

.field public static final COOKIE:I = 0xa

.field public static final DAU:I = 0x5

.field public static final DHU:I = 0x6

.field public static final EDNS_CLIENT_TAG:I = 0x10

.field public static final EDNS_EXPIRE:I = 0x9

.field public static final EDNS_EXTENDED_ERROR:I = 0xf

.field public static final EDNS_KEY_TAG:I = 0xe

.field public static final EDNS_SERVER_TAG:I = 0x11

.field public static final LLQ:I = 0x1

.field public static final N3U:I = 0x7

.field public static final NSID:I = 0x3

.field public static final PADDING:I = 0xc

.field public static final REPORT_CHANNEL:I = 0x12

.field public static final TCP_KEEPALIVE:I = 0xb

.field public static final UL:I = 0x2

.field private static final codes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "EDNS Option Codes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    .line 152
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const-string v1, "CODE"

    .line 153
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    const-string v1, "LLQ"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "UL"

    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "NSID"

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "DAU"

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "DHU"

    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x7

    const-string v2, "N3U"

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "edns-client-subnet"

    .line 163
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x9

    const-string v2, "EDNS_EXPIRE"

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xa

    const-string v2, "COOKIE"

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xb

    const-string v2, "edns-tcp-keepalive"

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xc

    const-string v2, "Padding"

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xd

    const-string v2, "CHAIN"

    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xe

    const-string v2, "edns-key-tag"

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xf

    const-string v2, "Extended_DNS_Error"

    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "EDNS-Client-Tag"

    .line 171
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x11

    const-string v2, "EDNS-Server-Tag"

    .line 172
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x12

    const-string v2, "Report-Channel"

    .line 173
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

    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    .line 178
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    .line 188
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
