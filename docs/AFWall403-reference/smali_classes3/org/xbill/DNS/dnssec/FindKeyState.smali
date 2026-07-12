.class final Lorg/xbill/DNS/dnssec/FindKeyState;
.super Ljava/lang/Object;
.source "FindKeyState.java"


# instance fields
.field currentDSKeyName:Lorg/xbill/DNS/Name;

.field dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

.field emptyDSName:Lorg/xbill/DNS/Name;

.field keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

.field qclass:I

.field signerName:Lorg/xbill/DNS/Name;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
