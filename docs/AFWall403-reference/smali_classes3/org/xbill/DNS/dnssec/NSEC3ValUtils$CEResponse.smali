.class final Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;
.super Ljava/lang/Object;
.source "NSEC3ValUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/dnssec/NSEC3ValUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEResponse"
.end annotation


# instance fields
.field private final ceNsec3:Lorg/xbill/DNS/NSEC3Record;

.field private final closestEncloser:Lorg/xbill/DNS/Name;

.field private ncNsec3:Lorg/xbill/DNS/NSEC3Record;

.field private status:Lorg/xbill/DNS/dnssec/SecurityStatus;


# direct methods
.method private constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->closestEncloser:Lorg/xbill/DNS/Name;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->ceNsec3:Lorg/xbill/DNS/NSEC3Record;

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;Lorg/xbill/DNS/dnssec/NSEC3ValUtils$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/NSEC3Record;)V

    return-void
.end method

.method static synthetic access$100(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p0
.end method

.method static synthetic access$102(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/dnssec/SecurityStatus;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p1
.end method

.method static synthetic access$200(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/Name;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->closestEncloser:Lorg/xbill/DNS/Name;

    return-object p0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->ceNsec3:Lorg/xbill/DNS/NSEC3Record;

    return-object p0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;)Lorg/xbill/DNS/NSEC3Record;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->ncNsec3:Lorg/xbill/DNS/NSEC3Record;

    return-object p0
.end method

.method static synthetic access$402(Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;Lorg/xbill/DNS/NSEC3Record;)Lorg/xbill/DNS/NSEC3Record;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/xbill/DNS/dnssec/NSEC3ValUtils$CEResponse;->ncNsec3:Lorg/xbill/DNS/NSEC3Record;

    return-object p1
.end method
