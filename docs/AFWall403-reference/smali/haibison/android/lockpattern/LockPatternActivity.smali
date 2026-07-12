.class public Lhaibison/android/lockpattern/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;,
        Lhaibison/android/lockpattern/LockPatternActivity$IntentBuilder;
    }
.end annotation


# static fields
.field public static final ACTION_COMPARE_PATTERN:Ljava/lang/String;

.field public static final ACTION_CREATE_PATTERN:Ljava/lang/String;

.field public static final ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

.field private static final CLASSNAME:Ljava/lang/String; = "LockPatternActivity"

.field private static final DELAY_TIME_TO_RELOAD_LOCK_PATTERN_VIEW:J = 0x3e8L

.field public static final EXTRA_LAYOUT:Ljava/lang/String;

.field public static final EXTRA_PATTERN:Ljava/lang/String;

.field public static final EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

.field public static final EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

.field public static final EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String;

.field public static final EXTRA_RETRY_COUNT:Ljava/lang/String;

.field public static final EXTRA_THEME:Ljava/lang/String;

.field public static final EXTRA_TITLE:Ljava/lang/String;

.field public static final RESULT_FAILED:I = 0x2

.field public static final RESULT_FORGOT_PATTERN:I = 0x3

.field private static final SUPPORTED_ACTIONS:[Ljava/lang/String;


# instance fields
.field private autoSave:Z

.field private btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

.field private captchaWiredDots:I

.field private encrypter:Lhaibison/android/lockpattern/utils/Encrypter;

.field private intentResult:Landroid/content/Intent;

.field private loadingView:Lhaibison/android/lockpattern/utils/LoadingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhaibison/android/lockpattern/utils/LoadingView<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnCancel:Landroid/widget/Button;

.field private final mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnConfirm:Landroid/widget/Button;

.field private final mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

.field private mFooter:Landroid/view/View;

.field private mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

.field private final mLockPatternViewListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

.field private final mLockPatternViewReloader:Ljava/lang/Runnable;

.field private mTextInfo:Landroid/widget/TextView;

.field private mViewGroupProgressBar:Landroid/view/View;

.field private final mViewGroupProgressBarOnClickListener:Landroid/view/View$OnClickListener;

.field private maxRetries:I

.field private minWiredDots:I

.field private retryCount:I

.field private stealthMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockPatternActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".CREATE_PATTERN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".COMPARE_PATTERN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".VERIFY_CAPTCHA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".RETRY_COUNT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".THEME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PATTERN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".RESULT_RECEIVER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PENDING_INTENT_OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PENDING_INTENT_CANCELLED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".PENDING_INTENT_FORGOT_PATTERN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".TITLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_TITLE:Ljava/lang/String;

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LAYOUT"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_LAYOUT:Ljava/lang/String;

    .line 625
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->SUPPORTED_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    .line 1069
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$4;

    invoke-direct {v0, p0}, Lhaibison/android/lockpattern/LockPatternActivity$4;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    .line 1133
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$5;

    invoke-direct {v0, p0}, Lhaibison/android/lockpattern/LockPatternActivity$5;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 1145
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$6;

    invoke-direct {v0, p0}, Lhaibison/android/lockpattern/LockPatternActivity$6;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    .line 1178
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$7;

    invoke-direct {v0, p0}, Lhaibison/android/lockpattern/LockPatternActivity$7;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    .line 1191
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$8;

    invoke-direct {v0, p0}, Lhaibison/android/lockpattern/LockPatternActivity$8;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBarOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/utils/Encrypter;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->encrypter:Lhaibison/android/lockpattern/utils/Encrypter;

    return-object p0
.end method

.method static synthetic access$100(Lhaibison/android/lockpattern/LockPatternActivity;[C)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->finishWithResultOk([C)V

    return-void
.end method

.method static synthetic access$1000(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p0
.end method

.method static synthetic access$1002(Lhaibison/android/lockpattern/LockPatternActivity;Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;)Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 0

    .line 108
    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p1
.end method

.method static synthetic access$1100(Lhaibison/android/lockpattern/LockPatternActivity;Ljava/util/List;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->doCheckAndCreatePattern(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lhaibison/android/lockpattern/LockPatternActivity;Ljava/util/List;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->doComparePattern(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lhaibison/android/lockpattern/LockPatternActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->autoSave:Z

    return p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    return-object p0
.end method

.method static synthetic access$200(Lhaibison/android/lockpattern/LockPatternActivity;)I
    .locals 0

    .line 108
    iget p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    return p0
.end method

.method static synthetic access$208(Lhaibison/android/lockpattern/LockPatternActivity;)I
    .locals 2

    .line 108
    iget v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    return v0
.end method

.method static synthetic access$300(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/content/Intent;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lhaibison/android/lockpattern/LockPatternActivity;)I
    .locals 0

    .line 108
    iget p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->maxRetries:I

    return p0
.end method

.method static synthetic access$500(Lhaibison/android/lockpattern/LockPatternActivity;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->finishWithNegativeResult(I)V

    return-void
.end method

.method static synthetic access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    return-object p0
.end method

.method static synthetic access$700(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/TextView;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lhaibison/android/lockpattern/LockPatternActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lhaibison/android/lockpattern/LockPatternActivity;)Landroid/widget/Button;
    .locals 0

    .line 108
    iget-object p0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method private doCheckAndCreatePattern(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 935
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->minWiredDots:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 936
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 937
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$plurals;->alp_42447968_pmsg_connect_x_dots:I

    iget v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->minWiredDots:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewReloader:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    .line 938
    invoke-virtual {p1, v0, v1, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 943
    :cond_0
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$2;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBar:Landroid/view/View;

    invoke-direct {v0, p0, p0, v1, p1}, Lhaibison/android/lockpattern/LockPatternActivity$2;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->loadingView:Lhaibison/android/lockpattern/utils/LoadingView;

    new-array p1, v2, [Ljava/lang/Void;

    .line 974
    invoke-virtual {v0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 977
    :cond_1
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$3;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBar:Landroid/view/View;

    invoke-direct {v0, p0, p0, v1, p1}, Lhaibison/android/lockpattern/LockPatternActivity$3;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->loadingView:Lhaibison/android/lockpattern/utils/LoadingView;

    new-array p1, v2, [Ljava/lang/Void;

    .line 996
    invoke-virtual {v0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private doComparePattern(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 888
    :cond_0
    new-instance v0, Lhaibison/android/lockpattern/LockPatternActivity$1;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBar:Landroid/view/View;

    invoke-direct {v0, p0, p0, v1, p1}, Lhaibison/android/lockpattern/LockPatternActivity$1;-><init>(Lhaibison/android/lockpattern/LockPatternActivity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->loadingView:Lhaibison/android/lockpattern/utils/LoadingView;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 926
    invoke-virtual {v0, p1}, Lhaibison/android/lockpattern/utils/LoadingView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private finishWithNegativeResult(I)V
    .locals 4

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 1039
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, p1, v1}, Lhaibison/android/lockpattern/LockPatternActivity;->setResult(ILandroid/content/Intent;)V

    .line 1044
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    .line 1047
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    .line 1049
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1051
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1055
    :cond_2
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_CANCELLED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    .line 1056
    invoke-virtual {v0, p0, p1, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> Failed sending PendingIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALP_42447968_12.0.0"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->finish()V

    return-void
.end method

.method private finishWithResultOk([C)V
    .locals 5

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    add-int/lit8 v3, v3, 0x1

    .line 1009
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    const/4 v2, -0x1

    .line 1012
    invoke-virtual {p0, v2, v1}, Lhaibison/android/lockpattern/LockPatternActivity;->setResult(ILandroid/content/Intent;)V

    .line 1015
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RESULT_RECEIVER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    .line 1017
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1018
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_1

    :cond_1
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_RETRY_COUNT:Ljava/lang/String;

    iget v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    .line 1021
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1027
    :cond_2
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_OK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    .line 1028
    invoke-virtual {p1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> Failed sending PendingIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ALP_42447968_12.0.0"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->finish()V

    return-void
.end method

.method private initContentView()V
    .locals 9

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 784
    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    if-eqz v3, :cond_2

    .line 785
    invoke-virtual {v3}, Lhaibison/android/lockpattern/widget/LockPatternView;->getDisplayMode()Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    iget-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    if-eqz v4, :cond_3

    .line 786
    invoke-virtual {v4}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPattern()Ljava/util/List;

    move-result-object v1

    .line 788
    :cond_3
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_LAYOUT:Ljava/lang/String;

    sget v6, Lhaibison/android/lockpattern/R$layout;->alp_42447968_lock_pattern_activity:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->setContentView(I)V

    .line 789
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lhaibison/android/lockpattern/utils/UI;->adjustDialogSizeForLargeScreens(Landroid/view/Window;)V

    .line 793
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_textview_info:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 794
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_view_lock_pattern:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 796
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_viewgroup_footer:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    .line 797
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_button_cancel:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    .line 798
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_button_confirm:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 800
    sget v4, Lhaibison/android/lockpattern/R$id;->alp_42447968_view_group_progress_bar:I

    invoke-virtual {p0, v4}, Lhaibison/android/lockpattern/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBar:Landroid/view/View;

    iget-object v5, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mViewGroupProgressBarOnClickListener:Landroid/view/View$OnClickListener;

    .line 804
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    goto :goto_3

    .line 811
    :cond_4
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lhaibison/android/lockpattern/R$dimen;->alp_42447968_lockpatternview_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 812
    invoke-virtual {v5}, Lhaibison/android/lockpattern/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 813
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 814
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 815
    invoke-virtual {v4, v5}, Lhaibison/android/lockpattern/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :catchall_0
    move-exception v6

    const-string v7, "ALP_42447968_12.0.0"

    .line 827
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 v6, 0x0

    :goto_4
    iget-object v7, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 828
    invoke-virtual {v7, v6}, Lhaibison/android/lockpattern/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v6, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    iget-boolean v7, p0, Lhaibison/android/lockpattern/LockPatternActivity;->stealthMode:Z

    if-eqz v7, :cond_6

    sget-object v7, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 830
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6, v7}, Lhaibison/android/lockpattern/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v6, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    iget-object v7, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternViewListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    .line 831
    invoke-virtual {v6, v7}, Lhaibison/android/lockpattern/widget/LockPatternView;->setOnPatternListener(Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;)V

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    sget-object v6, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 832
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 833
    invoke-virtual {v6, v3, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setPattern(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    :cond_7
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    .line 837
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    iget-object v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 838
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    iget-object v3, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    .line 839
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnCancel:Landroid/widget/Button;

    .line 841
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    .line 842
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_8

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 844
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 845
    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_draw_an_unlock_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    if-nez v0, :cond_9

    .line 848
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    iput-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 849
    :cond_9
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity$9;->$SwitchMap$haibison$android$lockpattern$LockPatternActivity$ButtonOkCommand:[I

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->btnOkCmd:Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-virtual {v1}, Lhaibison/android/lockpattern/LockPatternActivity$ButtonOkCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 851
    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_cmd_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 850
    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_cmd_continue:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_7
    if-eqz v2, :cond_10

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 854
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_c
    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 856
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 857
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_draw_pattern_to_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 858
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    :goto_8
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PENDING_INTENT_FORGOT_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirmOnClickListener:Landroid/view/View$OnClickListener;

    .line 860
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 861
    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_cmd_forgot_pattern:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 862
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mFooter:Landroid/view/View;

    .line 863
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_e
    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_VERIFY_CAPTCHA:Ljava/lang/String;

    .line 866
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mTextInfo:Landroid/widget/TextView;

    .line 867
    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_msg_redraw_pattern_to_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 871
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_9

    .line 872
    :cond_f
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->captchaWiredDots:I

    invoke-static {v2}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->genCaptchaPattern(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object v0, v2

    :goto_9
    iget-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->mLockPatternView:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 874
    sget-object v2, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->setPattern(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    :cond_10
    :goto_a
    return-void
.end method

.method private loadSettings()V
    .locals 4

    const-string v0, "ALP_42447968_12.0.0"

    .line 742
    :try_start_0
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 743
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "minWiredDots"

    .line 745
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateMinWiredDots(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->minWiredDots:I

    goto :goto_1

    .line 747
    :cond_0
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->getMinWiredDots(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->minWiredDots:I

    :goto_1
    if-eqz v1, :cond_1

    const-string v2, "maxRetries"

    .line 749
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateMaxRetries(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->maxRetries:I

    goto :goto_2

    .line 751
    :cond_1
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->getMaxRetries(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->maxRetries:I

    :goto_2
    if-eqz v1, :cond_2

    const-string v2, "autoSavePattern"

    .line 753
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->autoSave:Z

    goto :goto_3

    .line 755
    :cond_2
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->isAutoSavePattern(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->autoSave:Z

    :goto_3
    if-eqz v1, :cond_3

    const-string v2, "captchaWiredDots"

    .line 757
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateCaptchaWiredDots(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->captchaWiredDots:I

    goto :goto_4

    .line 759
    :cond_3
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->getCaptchaWiredDots(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->captchaWiredDots:I

    :goto_4
    if-eqz v1, :cond_4

    const-string v2, "stealthMode"

    .line 761
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->stealthMode:Z

    goto :goto_5

    .line 762
    :cond_4
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->isStealthMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lhaibison/android/lockpattern/LockPatternActivity;->stealthMode:Z

    :goto_5
    if-eqz v1, :cond_5

    const-string v2, "encrypterClass"

    .line 766
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 767
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_6

    .line 768
    :cond_5
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->getEncrypterClass(Landroid/content/Context;)[C

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_6

    .line 771
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaibison/android/lockpattern/utils/Encrypter;

    iput-object v1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->encrypter:Lhaibison/android/lockpattern/utils/Encrypter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    .line 773
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    new-instance v0, Lhaibison/android/lockpattern/utils/InvalidEncrypterException;

    invoke-direct {v0}, Lhaibison/android/lockpattern/utils/InvalidEncrypterException;-><init>()V

    throw v0

    :cond_6
    :goto_7
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 688
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 692
    invoke-direct {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->initContentView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 652
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->SUPPORTED_ACTIONS:[Ljava/lang/String;

    .line 654
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 659
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget v2, Lhaibison/android/lockpattern/R$style;->Alp_42447968_Theme_Dark:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lhaibison/android/lockpattern/LockPatternActivity;->setTheme(I)V

    .line 662
    :cond_0
    sget v0, Lhaibison/android/lockpattern/R$attr;->alp_42447968_theme_resources:I

    invoke-static {p0, v0}, Lhaibison/android/lockpattern/utils/ResUtils;->resolveResourceId(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 669
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 671
    invoke-direct {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->loadSettings()V

    .line 673
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->intentResult:Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v3, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->setResult(ILandroid/content/Intent;)V

    .line 677
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 678
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 679
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 680
    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 683
    :cond_2
    invoke-direct {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->initContentView()V

    return-void

    .line 663
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Please provide theme resource via attribute `alp_42447968_theme_resources`. For example: <item name=\"alp_42447968_theme_resources\">@style/Alp_42447968.ThemeResources.Light</item>"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 655
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity;->loadingView:Lhaibison/android/lockpattern/utils/LoadingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 732
    invoke-virtual {v0, v1}, Lhaibison/android/lockpattern/utils/LoadingView;->cancel(Z)Z

    .line 734
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-object v0, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    .line 698
    invoke-virtual {p0}, Lhaibison/android/lockpattern/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity;->loadingView:Lhaibison/android/lockpattern/utils/LoadingView;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p1, p2}, Lhaibison/android/lockpattern/utils/LoadingView;->cancel(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 701
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/LockPatternActivity;->finishWithNegativeResult(I)V

    return p2

    .line 706
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 727
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
