.class public Lhaibison/android/lockpattern/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;,
        Lhaibison/android/lockpattern/widget/LockPatternView$CellState;,
        Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;,
        Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;,
        Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field public static final MATRIX_SIZE:I = 0x9

.field public static final MATRIX_WIDTH:I = 0x3

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private final mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 338
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 264
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 265
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x3

    filled-new-array {v1, v1}, [I

    move-result-object v2

    .line 287
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    iput v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 298
    sget-object v2, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    iput-boolean v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mHitFactor:F

    .line 309
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 310
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 311
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 340
    sget-object v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 342
    sget v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView_alp_42447968_aspect:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "square"

    .line 344
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string v4, "lock_width"

    .line 346
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v4, "lock_height"

    .line 348
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAspect:I

    .line 354
    :goto_0
    invoke-virtual {p0, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->setClickable(Z)V

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 356
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 357
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhaibison/android/lockpattern/R$attr;->alp_42447968_color_lock_pattern_view_regular:I

    .line 360
    invoke-static {p1, v4}, Lhaibison/android/lockpattern/utils/ResUtils;->resolveResourceId(Landroid/content/Context;I)I

    move-result v4

    .line 359
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mRegularColor:I

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhaibison/android/lockpattern/R$attr;->alp_42447968_color_lock_pattern_view_error:I

    .line 363
    invoke-static {p1, v4}, Lhaibison/android/lockpattern/utils/ResUtils;->resolveResourceId(Landroid/content/Context;I)I

    move-result v4

    .line 362
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mErrorColor:I

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhaibison/android/lockpattern/R$attr;->alp_42447968_color_lock_pattern_view_success:I

    .line 366
    invoke-static {p1, v4}, Lhaibison/android/lockpattern/utils/ResUtils;->resolveResourceId(Landroid/content/Context;I)I

    move-result v4

    .line 365
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSuccessColor:I

    .line 369
    sget v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView_alp_42447968_regularColor:I

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mRegularColor:I

    .line 370
    sget v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView_alp_42447968_errorColor:I

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mErrorColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mErrorColor:I

    .line 371
    sget v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView_alp_42447968_successColor:I

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSuccessColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSuccessColor:I

    .line 373
    sget v3, Lhaibison/android/lockpattern/R$styleable;->Alp_42447968_LockPatternView_alp_42447968_pathColor:I

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 374
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 376
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 377
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 378
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lhaibison/android/lockpattern/R$dimen;->alp_42447968_lock_pattern_dot_line_width:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathWidth:I

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    .line 381
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lhaibison/android/lockpattern/R$dimen;->alp_42447968_lock_pattern_dot_size:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSize:I

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lhaibison/android/lockpattern/R$dimen;->alp_42447968_lock_pattern_dot_size_activated:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSizeActivated:I

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 386
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 387
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setDither(Z)V

    filled-new-array {v1, v1}, [I

    move-result-object p2

    .line 389
    const-class v2, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    invoke-static {v2, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v1, :cond_4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 392
    aget-object v3, v3, p2

    new-instance v4, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    invoke-direct {v4}, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 393
    aget-object v3, v3, p2

    aget-object v3, v3, v2

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    iput v4, v3, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->size:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 397
    :cond_4
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_5

    const p2, 0x10c000d

    .line 398
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const p2, 0x10c000e

    .line 399
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :cond_5
    return-void
.end method

.method static synthetic access$100(Lhaibison/android/lockpattern/widget/LockPatternView;)I
    .locals 0

    .line 55
    iget p0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSizeActivated:I

    return p0
.end method

.method static synthetic access$200(Lhaibison/android/lockpattern/widget/LockPatternView;)I
    .locals 0

    .line 55
    iget p0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method static synthetic access$300(Lhaibison/android/lockpattern/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 55
    iget-object p0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lhaibison/android/lockpattern/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p7}, Lhaibison/android/lockpattern/widget/LockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method private addCellToPattern(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V
    .locals 3

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 681
    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 682
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->startCellActivatedAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V

    .line 686
    :cond_0
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 1193
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr p1, p2

    const p2, 0x3e99999a    # 0.3f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    const/4 p2, 0x0

    .line 1195
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private cancelLineAnimations()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 1012
    aget-object v4, v4, v1

    aget-object v4, v4, v3

    .line 1013
    iget-object v5, v4, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 1014
    iget-object v5, v4, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x1

    .line 1015
    iput v5, v4, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndX:F

    .line 1016
    iput v5, v4, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndY:F

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    .line 794
    invoke-direct {p0, p2}, Lhaibison/android/lockpattern/widget/LockPatternView;->getRowHit(F)I

    move-result p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 798
    :cond_0
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getColumnHit(F)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 803
    aget-object v1, v1, p2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    return-object v0

    .line 806
    :cond_2
    invoke-static {p2, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->of(II)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object p1

    return-object p1
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 560
    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
    .locals 8

    .line 638
    invoke-direct {p0, p1, p2}, Lhaibison/android/lockpattern/widget/LockPatternView;->checkForNewHit(FF)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 644
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 645
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 646
    iget v0, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    iget v1, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v0, v1

    .line 647
    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    iget v3, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v1, v3

    .line 649
    iget v3, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    .line 650
    iget v4, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 652
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 653
    iget v3, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    if-lez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    add-int/2addr v3, v5

    .line 656
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 657
    iget p2, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int v4, p2, v6

    .line 660
    :cond_3
    invoke-static {v3, v4}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->of(II)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 663
    iget v1, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_5

    .line 665
    invoke-direct {p0, p2}, Lhaibison/android/lockpattern/widget/LockPatternView;->addCellToPattern(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V

    .line 667
    :cond_5
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->addCellToPattern(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V

    iget-boolean p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    .line 670
    invoke-virtual {p0, v2, p2}, Lhaibison/android/lockpattern/widget/LockPatternView;->performHapticFeedback(II)Z

    :cond_6
    return-object p1

    :cond_7
    return-object p2
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 1219
    invoke-direct {p0, p5}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCurrentColor(Z)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p6, p6, v0

    float-to-int p6, p6

    .line 1220
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    iget-object p5, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 1221
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 2

    .line 1068
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareHeight:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 6

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v1, v0

    .line 841
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getCurrentColor(Z)I
    .locals 2

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1202
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mErrorColor:I

    return p1

    :cond_1
    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1205
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1209
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown display mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSuccessColor:I

    return p1

    :cond_4
    :goto_1
    iget p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mRegularColor:I

    return p1
.end method

.method private getRowHit(F)I
    .locals 6

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareHeight:F

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v1, v0

    .line 820
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1023
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->resetPattern()V

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1026
    invoke-direct {p0, v0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->detectAndAddHit(FF)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 1029
    sget-object v2, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1030
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 1040
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyPatternCleared()V

    :goto_0
    if-eqz v1, :cond_1

    .line 1043
    iget v2, v1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 1044
    iget v1, v1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iget v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v5, v4

    sub-float v4, v2, v3

    float-to-int v4, v4

    sub-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 1049
    invoke-virtual {p0, v4, v6, v2, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate(IIII)V

    :cond_1
    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathWidth:I

    int-to-float v0, v0

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    iget-object v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 919
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_7

    if-ge v2, v1, :cond_0

    .line 922
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    .line 923
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v2, v1, :cond_1

    .line 924
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    .line 925
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 926
    :goto_2
    invoke-direct {p0, v4, v5}, Lhaibison/android/lockpattern/widget/LockPatternView;->detectAndAddHit(FF)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object v6

    iget-object v7, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 927
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v7, v8, :cond_2

    iput-boolean v8, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 930
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyPatternStarted()V

    :cond_2
    iget v9, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    .line 933
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    .line 934
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_3

    cmpl-float v9, v10, v11

    if-lez v9, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    iget-boolean v8, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_6

    if-lez v7, :cond_6

    iget-object v8, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    .line 941
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 942
    iget v8, v7, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v8}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 943
    iget v7, v7, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 947
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    .line 948
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v0

    .line 949
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v0

    .line 950
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    if-eqz v6, :cond_5

    iget v7, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v7, v7, v10

    iget v11, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareHeight:F

    mul-float v11, v11, v10

    .line 957
    iget v10, v6, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v10}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 958
    iget v6, v6, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v6}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v6

    sub-float v12, v10, v7

    .line 960
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v7

    .line 961
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v7, v6, v11

    .line 962
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v6, v11

    .line 963
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_5
    iget-object v6, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 968
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 969
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 968
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 972
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    if-eqz v3, :cond_8

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 978
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 979
    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 980
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 995
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 997
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->cancelLineAnimations()V

    .line 998
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyPatternDetected()V

    .line 999
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 510
    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_lockscreen_access_pattern_cell_added:I

    invoke-direct {p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 512
    invoke-interface {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 531
    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_lockscreen_access_pattern_cleared:I

    invoke-direct {p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .line 524
    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_lockscreen_access_pattern_detected:I

    invoke-direct {p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 526
    invoke-interface {v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 517
    sget v0, Lhaibison/android/lockpattern/R$string;->alp_42447968_lockscreen_access_pattern_start:I

    invoke-direct {p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 549
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 550
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 551
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 2

    .line 591
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 592
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    move p2, v0

    goto :goto_0

    .line 597
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private sendAccessEvent(I)V
    .locals 1

    .line 990
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startCellActivatedAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V
    .locals 10

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 690
    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    aget-object v0, v0, v1

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSize:I

    int-to-float v3, v1

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mDotSizeActivated:I

    int-to-float v4, v1

    const-wide/16 v5, 0x60

    iget-object v7, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 691
    new-instance v9, Lhaibison/android/lockpattern/widget/LockPatternView$1;

    invoke-direct {v9, p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView$1;-><init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V

    move-object v2, p0

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lhaibison/android/lockpattern/widget/LockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    iget v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    iget v5, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 700
    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 701
    invoke-direct {p0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget p1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    move-object v3, v0

    .line 700
    invoke-direct/range {v2 .. v7}, Lhaibison/android/lockpattern/widget/LockPatternView;->startLineEndAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$CellState;FFFF)V

    return-void
.end method

.method private startLineEndAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$CellState;FFFF)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 713
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 714
    new-instance v8, Lhaibison/android/lockpattern/widget/LockPatternView$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lhaibison/android/lockpattern/widget/LockPatternView$2;-><init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;FFFF)V

    .line 715
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 726
    new-instance p2, Lhaibison/android/lockpattern/widget/LockPatternView$3;

    invoke-direct {p2, p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$3;-><init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 734
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x64

    .line 735
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 736
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 737
    iput-object v0, p1, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 763
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 764
    new-instance p2, Lhaibison/android/lockpattern/widget/LockPatternView$5;

    invoke-direct {p2, p0, p6}, Lhaibison/android/lockpattern/widget/LockPatternView$5;-><init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V

    .line 765
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p7, :cond_0

    .line 775
    new-instance p2, Lhaibison/android/lockpattern/widget/LockPatternView$6;

    invoke-direct {p2, p0, p7}, Lhaibison/android/lockpattern/widget/LockPatternView$6;-><init>(Lhaibison/android/lockpattern/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 785
    :cond_0
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 786
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 787
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 541
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public getCellStates()[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public getDisplayMode()Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public getPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1074
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget-object v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1077
    sget-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v10, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    rem-int/2addr v2, v0

    .line 1085
    div-int/lit16 v0, v2, 0x2bc

    .line 1087
    invoke-direct/range {p0 .. p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1089
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 1090
    iget v4, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v4, v11, v4

    iget v3, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    aput-boolean v13, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v10, :cond_1

    .line 1099
    rem-int/lit16 v2, v2, 0x2bc

    int-to-float v1, v2

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    .line 1102
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 1103
    iget v3, v2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {v7, v3}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1104
    iget v2, v2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {v7, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    .line 1106
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 1107
    iget v4, v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 1108
    invoke-direct {v7, v4}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float v4, v4, v1

    .line 1109
    iget v0, v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    .line 1110
    invoke-direct {v7, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    sub-float/2addr v0, v2

    mul-float v1, v1, v0

    add-float/2addr v3, v4

    iput v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    add-float/2addr v2, v1

    iput v2, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 1115
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    :cond_2
    iget-object v14, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1119
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    const/4 v15, 0x0

    :goto_1
    const/4 v6, 0x3

    if-ge v15, v6, :cond_4

    .line 1123
    invoke-direct {v7, v15}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    iget-object v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 1125
    aget-object v0, v0, v15

    aget-object v0, v0, v4

    .line 1126
    invoke-direct {v7, v4}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    .line 1127
    iget v2, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->size:F

    iget v3, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->scale:F

    mul-float v16, v2, v3

    .line 1128
    iget v2, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->translateY:F

    float-to-int v1, v1

    int-to-float v3, v1

    float-to-int v1, v5

    int-to-float v1, v1

    add-float v17, v1, v2

    .line 1129
    aget-object v1, v11, v15

    aget-boolean v18, v1, v4

    iget v2, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->alpha:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, v2

    move v2, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, v18

    const/16 v18, 0x3

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lhaibison/android/lockpattern/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v16

    const/4 v6, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    xor-int/2addr v0, v13

    if-eqz v0, :cond_a

    iget-object v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 1141
    invoke-direct {v7, v13}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v12, v10, :cond_8

    .line 1147
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 1152
    iget v4, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v4, v11, v4

    iget v5, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v5

    if-nez v4, :cond_5

    goto :goto_5

    .line 1157
    :cond_5
    iget v2, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {v7, v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 1158
    iget v4, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {v7, v4}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    if-eqz v12, :cond_7

    iget-object v5, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mCellStates:[[Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 1160
    iget v6, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v5, v5, v6

    iget v3, v3, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    aget-object v3, v5, v3

    .line 1161
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 1162
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1163
    iget v0, v3, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, v3, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 1165
    iget v0, v3, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndX:F

    iget v1, v3, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 1167
    :cond_6
    invoke-virtual {v14, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    iget-object v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 1169
    invoke-virtual {v8, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    move v0, v2

    move v1, v4

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    iget-boolean v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_9

    iget-object v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1176
    sget-object v4, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_a

    :cond_9
    if-eqz v2, :cond_a

    .line 1178
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 1179
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    iget v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 1180
    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v3, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    iget v4, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 1182
    invoke-direct {v7, v3, v4, v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lhaibison/android/lockpattern/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 1184
    invoke-virtual {v8, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 854
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 855
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 865
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 859
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 862
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 868
    :goto_0
    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 869
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 871
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 608
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 610
    invoke-direct {p0, p1, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 611
    invoke-direct {p0, p2, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->resolveMeasured(II)I

    move-result p2

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAspect:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 618
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 615
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, p1

    .line 626
    :goto_0
    invoke-virtual {p0, p1, p2}, Lhaibison/android/lockpattern/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1235
    check-cast p1, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    .line 1236
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1237
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1238
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1237
    invoke-virtual {p0, v0, v1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setPattern(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1239
    invoke-static {}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->values()[Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v0

    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1240
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    .line 1241
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v0

    iput-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    .line 1242
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1226
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1227
    new-instance v8, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1228
    invoke-static {v0}, Lhaibison/android/lockpattern/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 1229
    invoke-virtual {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLhaibison/android/lockpattern/widget/LockPatternView$1;)V

    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 582
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareWidth:F

    .line 585
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 876
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    iput-boolean v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternInProgress:Z

    .line 899
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->resetPattern()V

    .line 900
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->notifyPatternCleared()V

    return v2

    .line 888
    :cond_2
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 885
    :cond_3
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 882
    :cond_4
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V
    .locals 2

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDisplayMode:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    .line 494
    sget-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 495
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mAnimatingPeriodStart:J

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 502
    iget v0, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressX:F

    .line 503
    iget p1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p1

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInProgressY:F

    .line 504
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mOnPatternListener:Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 469
    invoke-direct {p0}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 470
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    iget-object v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 471
    iget v2, v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    aget-object v1, v1, v2

    iget v0, v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->setDisplayMode(Lhaibison/android/lockpattern/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
