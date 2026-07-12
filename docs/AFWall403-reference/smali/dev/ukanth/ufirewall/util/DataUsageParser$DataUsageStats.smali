.class public Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;
.super Ljava/lang/Object;
.source "DataUsageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/DataUsageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageStats"
.end annotation


# instance fields
.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public totalRxBytes:J

.field public totalTxBytes:J

.field public wifiRxBytes:J

.field public wifiTxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiRxBytes:J

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiTxBytes:J

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileRxBytes:J

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileTxBytes:J

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalRxBytes:J

    iput-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalTxBytes:J

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 4

    iget-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalRxBytes:J

    iget-wide v2, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalTxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMobileBytes()J
    .locals 4

    iget-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileRxBytes:J

    iget-wide v2, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileTxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalWifiBytes()J
    .locals 4

    iget-wide v0, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiRxBytes:J

    iget-wide v2, p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiTxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method
