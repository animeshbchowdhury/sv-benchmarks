typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct device;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_17 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_16 {
   s64 lock ;
   struct __anonstruct____missing_field_name_17 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_16 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct net_device;
struct file_operations;
struct completion;
struct pid;
enum system_states {
    SYSTEM_BOOTING = 0,
    SYSTEM_RUNNING = 1,
    SYSTEM_HALT = 2,
    SYSTEM_POWER_OFF = 3,
    SYSTEM_RESTART = 4
} ;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct lockdep_map;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled : 1 ;
   bool offline : 1 ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_148 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_166 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_174 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_172 __annonCompField52 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_176 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
enum ldv_21642 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21642 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_217 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_217 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_218 __annonCompField68 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
union __anonunion_in6_u_224 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_224 in6_u ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_28000 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28001 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_237 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_28000 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28001 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion____missing_field_name_241 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_241 __annonCompField75 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_246 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_246 __annonCompField76 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned int full_duplex : 1 ;
   unsigned int force_media : 1 ;
   unsigned int supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
struct iphdr {
   __u8 ihl : 4 ;
   __u8 version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_251 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_251 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
union __anonunion____missing_field_name_252 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_252 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_254 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_255 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_255 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_257 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_256 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_257 __annonCompField79 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_260 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_259 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_260 __annonCompField82 ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_262 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_261 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_262 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_263 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_263 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned int sk_shutdown : 2 ;
   unsigned int sk_no_check : 2 ;
   unsigned int sk_userlocks : 4 ;
   unsigned int sk_protocol : 8 ;
   unsigned int sk_type : 16 ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_264 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_264 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   u8 cookie_ts : 1 ;
   u8 num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum rtl_tx_desc_version {
    RTL_TD_0 = 0,
    RTL_TD_1 = 1
} ;
struct __anonstruct_rtl_chip_infos_271 {
   char const *name ;
   enum rtl_tx_desc_version txd_version ;
   char const *fw_name ;
   u16 jumbo_max ;
   bool jumbo_tx_csum ;
};
struct __anonstruct_debug_272 {
   u32 msg_enable ;
};
struct __anonstruct_checksum_273 {
   u32 udp ;
   u32 tcp ;
};
struct rtl_tx_desc_info {
   struct __anonstruct_checksum_273 checksum ;
   u16 mss_shift ;
   u16 opts_offset ;
};
struct TxDesc {
   __le32 opts1 ;
   __le32 opts2 ;
   __le64 addr ;
};
struct RxDesc {
   __le32 opts1 ;
   __le32 opts2 ;
   __le64 addr ;
};
struct ring_info {
   struct sk_buff *skb ;
   u32 len ;
   u8 __pad[4U] ;
};
struct rtl8169_counters {
   __le64 tx_packets ;
   __le64 rx_packets ;
   __le64 tx_errors ;
   __le32 rx_errors ;
   __le16 rx_missed ;
   __le16 align_errors ;
   __le32 tx_one_collision ;
   __le32 tx_multi_collision ;
   __le64 rx_unicast ;
   __le64 rx_broadcast ;
   __le32 rx_multicast ;
   __le16 tx_aborted ;
   __le16 tx_underun ;
};
enum rtl_flag {
    RTL_FLAG_TASK_ENABLED = 0,
    RTL_FLAG_TASK_SLOW_PENDING = 1,
    RTL_FLAG_TASK_RESET_PENDING = 2,
    RTL_FLAG_TASK_PHY_PENDING = 3,
    RTL_FLAG_MAX = 4
} ;
struct rtl8169_stats {
   u64 packets ;
   u64 bytes ;
   struct u64_stats_sync syncp ;
};
struct rtl8169_private;
struct mdio_ops {
   void (*write)(struct rtl8169_private * , int , int ) ;
   int (*read)(struct rtl8169_private * , int ) ;
};
struct pll_power_ops {
   void (*down)(struct rtl8169_private * ) ;
   void (*up)(struct rtl8169_private * ) ;
};
struct jumbo_ops {
   void (*enable)(struct rtl8169_private * ) ;
   void (*disable)(struct rtl8169_private * ) ;
};
struct csi_ops {
   void (*write)(struct rtl8169_private * , int , int ) ;
   u32 (*read)(struct rtl8169_private * , int ) ;
};
struct rtl_fw_phy_action {
   __le32 *code ;
   size_t size ;
};
struct rtl_fw {
   struct firmware const *fw ;
   char version[32U] ;
   struct rtl_fw_phy_action phy_action ;
};
struct __anonstruct_wk_274 {
   unsigned long flags[1U] ;
   struct mutex mutex ;
   struct work_struct work ;
};
struct rtl8169_private {
   void *mmio_addr ;
   struct pci_dev *pci_dev ;
   struct net_device *dev ;
   struct napi_struct napi ;
   u32 msg_enable ;
   u16 txd_version ;
   u16 mac_version ;
   u32 cur_rx ;
   u32 cur_tx ;
   u32 dirty_tx ;
   struct rtl8169_stats rx_stats ;
   struct rtl8169_stats tx_stats ;
   struct TxDesc *TxDescArray ;
   struct RxDesc *RxDescArray ;
   dma_addr_t TxPhyAddr ;
   dma_addr_t RxPhyAddr ;
   void *Rx_databuff[256U] ;
   struct ring_info tx_skb[64U] ;
   struct timer_list timer ;
   u16 cp_cmd ;
   u16 event_slow ;
   struct mdio_ops mdio_ops ;
   struct pll_power_ops pll_power_ops ;
   struct jumbo_ops jumbo_ops ;
   struct csi_ops csi_ops ;
   int (*set_speed)(struct net_device * , u8 , u16 , u8 , u32 ) ;
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*phy_reset_enable)(struct rtl8169_private * ) ;
   void (*hw_start)(struct net_device * ) ;
   unsigned int (*phy_reset_pending)(struct rtl8169_private * ) ;
   unsigned int (*link_ok)(void * ) ;
   int (*do_ioctl)(struct rtl8169_private * , struct mii_ioctl_data * , int ) ;
   struct __anonstruct_wk_274 wk ;
   unsigned int features ;
   struct mii_if_info mii ;
   struct rtl8169_counters counters ;
   u32 saved_wolopts ;
   u32 opts1_mask ;
   struct rtl_fw *rtl_fw ;
   u32 ocp_base ;
};
struct rtl_cond {
   bool (*check)(struct rtl8169_private * ) ;
   char const *msg ;
};
struct exgmac_reg {
   u16 addr ;
   u16 mask ;
   u32 val ;
};
struct __anonstruct_cfg_276 {
   u32 opt ;
   u16 reg ;
   u8 mask ;
};
struct rtl_mac_info {
   u32 mask ;
   u32 val ;
   int mac_version ;
};
struct phy_reg {
   u16 reg ;
   u16 val ;
};
struct fw_info {
   u32 magic ;
   char version[32U] ;
   __le32 fw_start ;
   __le32 fw_len ;
   u8 chksum ;
};
struct rtl_cfg2_info {
   u32 mac_version ;
   u32 clk ;
   u32 val ;
};
struct ephy_info {
   unsigned int offset ;
   u16 mask ;
   u16 bits ;
};
struct __anonstruct_rtl_work_323 {
   int bitnr ;
   void (*action)(struct rtl8169_private * ) ;
};
struct rtl_cfg_info {
   void (*hw_start)(struct net_device * ) ;
   unsigned int region ;
   unsigned int align ;
   u16 event_slow ;
   unsigned int features ;
   u8 default_ver ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef struct net_device *ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
typedef int ldv_map;
struct usb_device;
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_atomic_inc(atomic_t *v ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_is_err_or_null(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_33(int ldv_func_arg1 ) ;
static int ldv_ldv_post_probe_34(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
extern int printk(char const * , ...) ;
extern void dump_stack(void) ;
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern enum system_states system_state ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/a068ef8/linux-usb-dev/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static long IS_ERR_OR_NULL(void const *ptr ) ;
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5711;
  case_2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5711;
  case_4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5711;
  case_8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5711;
  switch_default:
  {
  __cmpxchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_5711: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  {
  c = atomic_read((atomic_t const *)v);
  }
  ldv_5740:
  {
  tmp = ldv__builtin_expect(c == u, 0L);
  }
  if (tmp != 0L) {
    goto ldv_5739;
  } else {
  }
  {
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  }
  if (tmp___0 != 0L) {
    goto ldv_5739;
  } else {
  }
  c = old;
  goto ldv_5740;
  ldv_5739: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  {
  tmp = __atomic_add_unless(v, a, u);
  }
  return (tmp != u);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void synchronize_sched(void) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_21(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_24(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  {
  memcpy(dst, (void const *)src, count);
  }
  return;
}
}
extern int device_set_wakeup_enable(struct device * , bool ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
__inline static int dev_to_node(struct device *dev )
{
  {
  return (dev->numa_node);
}
}
static void *ldv_dev_get_drvdata_16(struct device const *dev ) ;
static int ldv_dev_set_drvdata_17(struct device *dev , void *data ) ;
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern int net_ratelimit(void) ;
extern void kfree(void const * ) ;
extern void *__kmalloc_node(size_t , gfp_t , int ) ;
__inline static void *kmalloc_node(size_t size , gfp_t flags , int node )
{
  void *tmp___1 ;
  {
  {
  tmp___1 = __kmalloc_node(size, flags, node);
  }
  return (tmp___1);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (115), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_set_mask(struct device * , u64 ) ;
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/a068ef8/linux-usb-dev/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
extern int skb_pad(struct sk_buff * , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  }
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static void *skb_frag_address(skb_frag_t const *frag )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  }
  return (tmp___0 + (unsigned long )frag->page_offset);
}
}
__inline static int skb_padto(struct sk_buff *skb , unsigned int len )
{
  unsigned int size ;
  long tmp ;
  int tmp___0 ;
  {
  {
  size = skb->len;
  tmp = ldv__builtin_expect(size >= len, 1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  tmp___0 = skb_pad(skb, (int )(len - size));
  }
  return (tmp___0);
}
}
extern void skb_clone_tx_timestamp(struct sk_buff * ) ;
extern void skb_tstamp_tx(struct sk_buff * , struct skb_shared_hwtstamps * ) ;
__inline static void sw_tx_timestamp(struct sk_buff *skb )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (((int )((struct skb_shared_info *)tmp)->tx_flags & 2) != 0) {
    {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    }
    if (((int )((struct skb_shared_info *)tmp___0)->tx_flags & 4) == 0) {
      {
      skb_tstamp_tx(skb, (struct skb_shared_hwtstamps *)0);
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void skb_tx_timestamp(struct sk_buff *skb )
{
  {
  {
  skb_clone_tx_timestamp(skb);
  sw_tx_timestamp(skb);
  }
  return;
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern int ethtool_op_get_ts_info(struct net_device * , struct ethtool_ts_info * ) ;
__inline static void u64_stats_update_begin(struct u64_stats_sync *syncp )
{
  {
  return;
}
}
__inline static unsigned int u64_stats_fetch_begin_bh(struct u64_stats_sync const *syncp )
{
  {
  return (0U);
}
}
__inline static bool u64_stats_fetch_retry_bh(struct u64_stats_sync const *syncp ,
                                              unsigned int start )
{
  {
  return (0);
}
}
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(n);
  }
  if ((int )tmp) {
    {
    __napi_schedule(n);
    }
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_37742;
  ldv_37741:
  {
  msleep(1U);
  }
  ldv_37742:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_37741;
  } else {
  }
  {
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (502), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_23(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_30(struct net_device *ldv_func_arg1 ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = netpoll_trap();
  }
  if (tmp != 0) {
    {
    netif_tx_start_queue(dev_queue);
    }
    return;
  } else {
  }
  {
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___0 != 0) {
    {
    __netif_schedule(dev_queue->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  }
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  }
  return (tmp___0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if ((unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_29(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_27(struct net_device *ldv_func_arg1 ) ;
extern int skb_checksum_help(struct sk_buff * ) ;
extern void netdev_update_features(struct net_device * ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_notice(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
extern int pcie_capability_clear_and_set_word(struct pci_dev * , int , u16 , u16 ) ;
__inline static int pcie_capability_set_word(struct pci_dev *dev , int pos , u16 set )
{
  int tmp ;
  {
  {
  tmp = pcie_capability_clear_and_set_word(dev, pos, 0, (int )set);
  }
  return (tmp);
}
}
__inline static int pcie_capability_clear_word(struct pci_dev *dev , int pos , u16 clear )
{
  int tmp ;
  {
  {
  tmp = pcie_capability_clear_and_set_word(dev, pos, (int )clear, 0);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern void pci_clear_master(struct pci_dev * ) ;
extern int pci_set_mwi(struct pci_dev * ) ;
extern void pci_clear_mwi(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int pci_wake_from_d3(struct pci_dev * , bool ) ;
extern bool pci_dev_run_wake(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_31(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_32(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_16((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_17(& pdev->dev, data);
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
__inline static int pci_pcie_cap(struct pci_dev *dev )
{
  {
  return ((int )dev->pcie_cap);
}
}
__inline static bool pci_is_pcie(struct pci_dev *dev )
{
  int tmp ;
  {
  {
  tmp = pci_pcie_cap(dev);
  }
  return (tmp != 0);
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_28(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
extern int mii_ethtool_gset(struct mii_if_info * , struct ethtool_cmd * ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern int rtnl_is_locked(void) ;
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
extern u32 bitrev32(u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_26(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_25(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int __pm_runtime_idle(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
extern int pm_schedule_suspend(struct device * , unsigned int ) ;
__inline static void pm_runtime_get_noresume(struct device *dev )
{
  {
  {
  atomic_inc(& dev->power.usage_count);
  }
  return;
}
}
__inline static void pm_runtime_put_noidle(struct device *dev )
{
  {
  {
  atomic_add_unless(& dev->power.usage_count, -1, 0);
  }
  return;
}
}
__inline static int pm_request_resume(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_resume(dev, 1);
  }
  return (tmp);
}
}
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_resume(dev, 4);
  }
  return (tmp);
}
}
__inline static int pm_runtime_put_sync(struct device *dev )
{
  int tmp ;
  {
  {
  tmp = __pm_runtime_idle(dev, 4);
  }
  return (tmp);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern void pci_disable_link_state(struct pci_dev * , int ) ;
static struct __anonstruct_rtl_chip_infos_271 const rtl_chip_infos[44U] =
  { {"RTL8169", 0, (char const *)0, 7152U, 1},
        {"RTL8169s", 0, (char const *)0, 7152U, 1},
        {"RTL8110s", 0, (char const *)0, 7152U, 1},
        {"RTL8169sb/8110sb", 0, (char const *)0, 7152U, 1},
        {"RTL8169sc/8110sc", 0, (char const *)0, 7152U, 1},
        {"RTL8169sc/8110sc", 0, (char const *)0, 7152U, 1},
        {"RTL8102e", 1, (char const *)0, 1500U, 1},
        {"RTL8102e", 1, (char const *)0, 1500U, 1},
        {"RTL8102e", 1, (char const *)0, 1500U, 1},
        {"RTL8101e", 0, (char const *)0, 1500U, 1},
        {"RTL8168b/8111b", 0, (char const *)0, 4080U, 0},
        {"RTL8168b/8111b", 0, (char const *)0, 4080U, 0},
        {"RTL8101e", 0, (char const *)0, 1500U, 1},
        {"RTL8100e", 0, (char const *)0, 1500U, 1},
        {"RTL8100e", 0, (char const *)0, 1500U, 1},
        {"RTL8101e", 0, (char const *)0, 1500U, 1},
        {"RTL8168b/8111b", 0, (char const *)0, 4080U, 0},
        {"RTL8168cp/8111cp", 1, (char const *)0, 6128U, 0},
        {"RTL8168c/8111c", 1, (char const *)0, 6128U, 0},
        {"RTL8168c/8111c", 1, (char const *)0, 6128U, 0},
        {"RTL8168c/8111c", 1, (char const *)0, 6128U, 0},
        {"RTL8168c/8111c", 1, (char const *)0, 6128U, 0},
        {"RTL8168cp/8111cp", 1, (char const *)0, 6128U, 0},
        {"RTL8168cp/8111cp", 1, (char const *)0, 6128U, 0},
        {"RTL8168d/8111d", 1, "rtl_nic/rtl8168d-1.fw", 9200U, 0},
        {"RTL8168d/8111d", 1, "rtl_nic/rtl8168d-2.fw", 9200U, 0},
        {"RTL8168dp/8111dp", 1, (char const *)0, 9200U, 0},
        {"RTL8168dp/8111dp", 1, (char const *)0, 9200U, 0},
        {"RTL8105e", 1, "rtl_nic/rtl8105e-1.fw", 1500U, 1},
        {"RTL8105e", 1, "rtl_nic/rtl8105e-1.fw", 1500U, 1},
        {"RTL8168dp/8111dp", 1, (char const *)0, 9200U, 0},
        {"RTL8168e/8111e", 1, "rtl_nic/rtl8168e-1.fw", 9200U, 0},
        {"RTL8168e/8111e", 1, "rtl_nic/rtl8168e-2.fw", 9200U, 0},
        {"RTL8168evl/8111evl", 1, "rtl_nic/rtl8168e-3.fw", 9200U, 0},
        {"RTL8168f/8111f", 1, "rtl_nic/rtl8168f-1.fw", 9200U, 0},
        {"RTL8168f/8111f", 1, "rtl_nic/rtl8168f-2.fw", 9200U, 0},
        {"RTL8402", 1, "rtl_nic/rtl8402-1.fw", 1500U, 1},
        {"RTL8411", 1, "rtl_nic/rtl8411-1.fw", 9200U, 0},
        {"RTL8106e", 1, "rtl_nic/rtl8106e-1.fw", 1500U, 1},
        {"RTL8168g/8111g", 1, "rtl_nic/rtl8168g-2.fw", 9200U, 0},
        {"RTL8168g/8111g", 1, (char const *)0, 9200U, 0},
        {"RTL8168g/8111g", 1, "rtl_nic/rtl8168g-3.fw", 9200U, 0},
        {"RTL8106e", 1, "rtl_nic/rtl8106e-2.fw", 1500U, 1},
        {"RTL8411", 1, "rtl_nic/rtl8411-2.fw", 9200U, 0}};
static struct pci_device_id const rtl8169_pci_tbl[13U] =
  { {4332U, 33065U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4332U, 33078U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4332U, 33127U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4332U, 33128U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4332U, 33129U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 17152U, 4486U, 19216U, 0U, 0U, 1UL},
        {4486U, 17152U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 17154U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4697U, 49415U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5868U, 278U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5943U, 4146U, 4294967295U, 36U, 0U, 0U, 0UL},
        {1U, 33128U, 4294967295U, 9232U, 0U, 0U, 2UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int rx_buf_sz = 16383;
static int use_dac ;
static struct __anonstruct_debug_272 debug = {4294967295U};
static struct rtl_tx_desc_info const tx_desc_info[2U] = { {{393216U, 327680U}, 16U, 0U},
        {{2684354560U, 1610612736U}, 18U, 1U}};
static void rtl_lock_work(struct rtl8169_private *tp )
{
  {
  {
  mutex_lock_nested(& tp->wk.mutex, 0U);
  }
  return;
}
}
static void rtl_unlock_work(struct rtl8169_private *tp )
{
  {
  {
  mutex_unlock(& tp->wk.mutex);
  }
  return;
}
}
static void rtl_tx_performance_tweak(struct pci_dev *pdev , u16 force )
{
  {
  {
  pcie_capability_clear_and_set_word(pdev, 8, 28672, (int )force);
  }
  return;
}
}
static void rtl_udelay(unsigned int d )
{
  {
  {
  __udelay((unsigned long )d);
  }
  return;
}
}
static bool rtl_loop_wait(struct rtl8169_private *tp , struct rtl_cond const *c ,
                          void (*delay)(unsigned int ) , unsigned int d , int n ,
                          bool high )
{
  int i ;
  bool tmp ;
  {
  i = 0;
  goto ldv_48253;
  ldv_48252:
  {
  (*delay)(d);
  tmp = (*(c->check))(tp);
  }
  if ((int )tmp == (int )high) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_48253: ;
  if (i < n) {
    goto ldv_48252;
  } else {
  }
  if ((int )tp->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)tp->dev, "%s == %d (loop: %d, delay: %d).\n",
               c->msg, ! high, n, d);
    }
  } else {
  }
  return (0);
}
}
static bool rtl_udelay_loop_wait_high(struct rtl8169_private *tp , struct rtl_cond const *c ,
                                      unsigned int d , int n )
{
  bool tmp ;
  {
  {
  tmp = rtl_loop_wait(tp, c, & rtl_udelay, d, n, 1);
  }
  return (tmp);
}
}
static bool rtl_udelay_loop_wait_low(struct rtl8169_private *tp , struct rtl_cond const *c ,
                                     unsigned int d , int n )
{
  bool tmp ;
  {
  {
  tmp = rtl_loop_wait(tp, c, & rtl_udelay, d, n, 0);
  }
  return (tmp);
}
}
static bool rtl_msleep_loop_wait_high(struct rtl8169_private *tp , struct rtl_cond const *c ,
                                      unsigned int d , int n )
{
  bool tmp ;
  {
  {
  tmp = rtl_loop_wait(tp, c, & msleep, d, n, 1);
  }
  return (tmp);
}
}
static bool rtl_msleep_loop_wait_low(struct rtl8169_private *tp , struct rtl_cond const *c ,
                                     unsigned int d , int n )
{
  bool tmp ;
  {
  {
  tmp = rtl_loop_wait(tp, c, & msleep, d, n, 0);
  }
  return (tmp);
}
}
static bool rtl_ocpar_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_ocpar_cond = {& rtl_ocpar_cond_check, "rtl_ocpar_cond"};
static bool rtl_ocpar_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 180U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static u32 ocp_read(struct rtl8169_private *tp , u8 mask , u16 reg )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((((unsigned int )mask << 12) & 65535U) | ((unsigned int )reg & 4095U), (void volatile *)ioaddr + 180U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_ocpar_cond, 100U, 20);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 176U);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 4294967295U;
  }
  return (tmp___1);
}
}
static void ocp_write(struct rtl8169_private *tp , u8 mask , u16 reg , u32 data )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel(data, (void volatile *)ioaddr + 176U);
  writel(((((unsigned int )mask << 12) & 65535U) | ((unsigned int )reg & 4095U)) | 2147483648U,
         (void volatile *)ioaddr + 180U);
  rtl_udelay_loop_wait_low(tp, & rtl_ocpar_cond, 100U, 20);
  }
  return;
}
}
static bool rtl_eriar_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_eriar_cond = {& rtl_eriar_cond_check, "rtl_eriar_cond"};
static bool rtl_eriar_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 116U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static void rtl8168_oob_notify(struct rtl8169_private *tp , u8 cmd )
{
  void *ioaddr ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb((int )cmd, (void volatile *)ioaddr + 112U);
  writel(2147487976U, (void volatile *)ioaddr + 116U);
  msleep(2U);
  tmp = rtl_udelay_loop_wait_low(tp, & rtl_eriar_cond, 100U, 5);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  {
  ocp_write(tp, 1, 48, 1U);
  }
  return;
}
}
static u16 rtl8168_get_ocp_reg(struct rtl8169_private *tp )
{
  {
  return ((unsigned int )tp->mac_version == 30U ? 184U : 16U);
}
}
static bool rtl_ocp_read_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_ocp_read_cond = {& rtl_ocp_read_cond_check, "rtl_ocp_read_cond"};
static bool rtl_ocp_read_cond_check(struct rtl8169_private *tp )
{
  u16 reg ;
  u32 tmp ;
  {
  {
  reg = rtl8168_get_ocp_reg(tp);
  tmp = ocp_read(tp, 15, (int )reg);
  }
  return ((tmp & 2048U) != 0U);
}
}
static void rtl8168_driver_start(struct rtl8169_private *tp )
{
  {
  {
  rtl8168_oob_notify(tp, 5);
  rtl_msleep_loop_wait_high(tp, & rtl_ocp_read_cond, 10U, 10);
  }
  return;
}
}
static void rtl8168_driver_stop(struct rtl8169_private *tp )
{
  {
  {
  rtl8168_oob_notify(tp, 6);
  rtl_msleep_loop_wait_low(tp, & rtl_ocp_read_cond, 10U, 10);
  }
  return;
}
}
static int r8168dp_check_dash(struct rtl8169_private *tp )
{
  u16 reg ;
  u16 tmp ;
  u32 tmp___0 ;
  {
  {
  tmp = rtl8168_get_ocp_reg(tp);
  reg = tmp;
  tmp___0 = ocp_read(tp, 15, (int )reg);
  }
  return ((tmp___0 & 32768U) != 0U);
}
}
static bool rtl_ocp_reg_failure(struct rtl8169_private *tp , u32 reg )
{
  {
  if ((reg & 4294901761U) != 0U) {
    if ((int )tp->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)tp->dev, "Invalid ocp reg %x!\n", reg);
      }
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static bool rtl_ocp_gphy_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_ocp_gphy_cond = {& rtl_ocp_gphy_cond_check, "rtl_ocp_gphy_cond"};
static bool rtl_ocp_gphy_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 184U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static void r8168_phy_ocp_write(struct rtl8169_private *tp , u32 reg , u32 data )
{
  void *ioaddr ;
  bool tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = rtl_ocp_reg_failure(tp, reg);
  }
  if ((int )tmp) {
    return;
  } else {
  }
  {
  writel(((reg << 15) | data) | 2147483648U, (void volatile *)ioaddr + 184U);
  rtl_udelay_loop_wait_low(tp, & rtl_ocp_gphy_cond, 25U, 10);
  }
  return;
}
}
static u16 r8168_phy_ocp_read(struct rtl8169_private *tp , u32 reg )
{
  void *ioaddr ;
  bool tmp ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  bool tmp___3 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = rtl_ocp_reg_failure(tp, reg);
  }
  if ((int )tmp) {
    return (0U);
  } else {
  }
  {
  writel(reg << 15, (void volatile *)ioaddr + 184U);
  tmp___3 = rtl_udelay_loop_wait_high(tp, & rtl_ocp_gphy_cond, 25U, 10);
  }
  if ((int )tmp___3) {
    {
    tmp___1 = readl((void const volatile *)ioaddr + 184U);
    tmp___2 = (u16 )tmp___1;
    }
  } else {
    tmp___2 = 65535U;
  }
  return (tmp___2);
}
}
static void r8168_mac_ocp_write(struct rtl8169_private *tp , u32 reg , u32 data )
{
  void *ioaddr ;
  bool tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = rtl_ocp_reg_failure(tp, reg);
  }
  if ((int )tmp) {
    return;
  } else {
  }
  {
  writel(((reg << 15) | data) | 2147483648U, (void volatile *)ioaddr + 176U);
  }
  return;
}
}
static u16 r8168_mac_ocp_read(struct rtl8169_private *tp , u32 reg )
{
  void *ioaddr ;
  bool tmp ;
  unsigned int tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = rtl_ocp_reg_failure(tp, reg);
  }
  if ((int )tmp) {
    return (0U);
  } else {
  }
  {
  writel(reg << 15, (void volatile *)ioaddr + 176U);
  tmp___0 = readl((void const volatile *)ioaddr + 176U);
  }
  return ((u16 )tmp___0);
}
}
static void r8168g_mdio_write(struct rtl8169_private *tp , int reg , int value )
{
  {
  if (reg == 31) {
    tp->ocp_base = value != 0 ? (u32 )(value << 4) : 41984U;
    return;
  } else {
  }
  if (tp->ocp_base != 41984U) {
    reg = reg + -16;
  } else {
  }
  {
  r8168_phy_ocp_write(tp, tp->ocp_base + (u32 )(reg * 2), (u32 )value);
  }
  return;
}
}
static int r8168g_mdio_read(struct rtl8169_private *tp , int reg )
{
  u16 tmp ;
  {
  if (tp->ocp_base != 41984U) {
    reg = reg + -16;
  } else {
  }
  {
  tmp = r8168_phy_ocp_read(tp, tp->ocp_base + (u32 )(reg * 2));
  }
  return ((int )tmp);
}
}
static void mac_mcu_write(struct rtl8169_private *tp , int reg , int value )
{
  {
  if (reg == 31) {
    tp->ocp_base = (u32 )(value << 4);
    return;
  } else {
  }
  {
  r8168_mac_ocp_write(tp, tp->ocp_base + (u32 )reg, (u32 )value);
  }
  return;
}
}
static int mac_mcu_read(struct rtl8169_private *tp , int reg )
{
  u16 tmp ;
  {
  {
  tmp = r8168_mac_ocp_read(tp, tp->ocp_base + (u32 )reg);
  }
  return ((int )tmp);
}
}
static bool rtl_phyar_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_phyar_cond = {& rtl_phyar_cond_check, "rtl_phyar_cond"};
static bool rtl_phyar_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 96U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static void r8169_mdio_write(struct rtl8169_private *tp , int reg , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel(((unsigned int )((reg & 31) << 16) | ((unsigned int )value & 65535U)) | 2147483648U,
         (void volatile *)ioaddr + 96U);
  rtl_udelay_loop_wait_low(tp, & rtl_phyar_cond, 25U, 20);
  __const_udelay(85900UL);
  }
  return;
}
}
static int r8169_mdio_read(struct rtl8169_private *tp , int reg )
{
  void *ioaddr ;
  int value ;
  unsigned int tmp___0 ;
  bool tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((reg & 31) << 16), (void volatile *)ioaddr + 96U);
  tmp___1 = rtl_udelay_loop_wait_high(tp, & rtl_phyar_cond, 25U, 20);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 96U);
    value = (int )tmp___0 & 65535;
    }
  } else {
    value = -1;
  }
  {
  __const_udelay(85900UL);
  }
  return (value);
}
}
static void r8168dp_1_mdio_access(struct rtl8169_private *tp , int reg , u32 data )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel(data | (u32 )((reg & 127) << 16), (void volatile *)ioaddr + 176U);
  writel(2147545184U, (void volatile *)ioaddr + 180U);
  writel(0U, (void volatile *)ioaddr + 124U);
  rtl_udelay_loop_wait_low(tp, & rtl_ocpar_cond, 1000U, 100);
  }
  return;
}
}
static void r8168dp_1_mdio_write(struct rtl8169_private *tp , int reg , int value )
{
  {
  {
  r8168dp_1_mdio_access(tp, reg, ((unsigned int )value & 65535U) | 2147483648U);
  }
  return;
}
}
static int r8168dp_1_mdio_read(struct rtl8169_private *tp , int reg )
{
  void *ioaddr ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  {
  ioaddr = tp->mmio_addr;
  r8168dp_1_mdio_access(tp, reg, 0U);
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_48419;
    ldv_48418:
    {
    __const_udelay(4295000UL);
    }
    ldv_48419:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_48418;
    } else {
    }
  }
  {
  writel(61536U, (void volatile *)ioaddr + 180U);
  writel(0U, (void volatile *)ioaddr + 124U);
  tmp___3 = rtl_udelay_loop_wait_high(tp, & rtl_ocpar_cond, 1000U, 100);
  }
  if ((int )tmp___3) {
    {
    tmp___1 = readl((void const volatile *)ioaddr + 176U);
    tmp___2 = (int )tmp___1 & 65535;
    }
  } else {
    tmp___2 = -1;
  }
  return (tmp___2);
}
}
static void r8168dp_2_mdio_start(void *ioaddr )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)ioaddr + 208U);
  writel(tmp & 4294836223U, (void volatile *)ioaddr + 208U);
  }
  return;
}
}
static void r8168dp_2_mdio_stop(void *ioaddr )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)ioaddr + 208U);
  writel(tmp | 131072U, (void volatile *)ioaddr + 208U);
  }
  return;
}
}
static void r8168dp_2_mdio_write(struct rtl8169_private *tp , int reg , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  r8168dp_2_mdio_start(ioaddr);
  r8169_mdio_write(tp, reg, value);
  r8168dp_2_mdio_stop(ioaddr);
  }
  return;
}
}
static int r8168dp_2_mdio_read(struct rtl8169_private *tp , int reg )
{
  void *ioaddr ;
  int value ;
  {
  {
  ioaddr = tp->mmio_addr;
  r8168dp_2_mdio_start(ioaddr);
  value = r8169_mdio_read(tp, reg);
  r8168dp_2_mdio_stop(ioaddr);
  }
  return (value);
}
}
static void rtl_writephy(struct rtl8169_private *tp , int location , u32 val )
{
  {
  {
  (*(tp->mdio_ops.write))(tp, location, (int )val);
  }
  return;
}
}
static int rtl_readphy(struct rtl8169_private *tp , int location )
{
  int tmp ;
  {
  {
  tmp = (*(tp->mdio_ops.read))(tp, location);
  }
  return (tmp);
}
}
static void rtl_patchphy(struct rtl8169_private *tp , int reg_addr , int value )
{
  int tmp ;
  {
  {
  tmp = rtl_readphy(tp, reg_addr);
  rtl_writephy(tp, reg_addr, (u32 )(tmp | value));
  }
  return;
}
}
static void rtl_w1w0_phy(struct rtl8169_private *tp , int reg_addr , int p , int m )
{
  int val ;
  {
  {
  val = rtl_readphy(tp, reg_addr);
  rtl_writephy(tp, reg_addr, (u32 )((val | p) & ~ m));
  }
  return;
}
}
static void rtl_mdio_write(struct net_device *dev , int phy_id , int location , int val )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_writephy(tp, location, (u32 )val);
  }
  return;
}
}
static int rtl_mdio_read(struct net_device *dev , int phy_id , int location )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = rtl_readphy(tp, location);
  }
  return (tmp___0);
}
}
static bool rtl_ephyar_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_ephyar_cond = {& rtl_ephyar_cond_check, "rtl_ephyar_cond"};
static bool rtl_ephyar_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 128U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static void rtl_ephy_write(struct rtl8169_private *tp , int reg_addr , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((((unsigned int )value & 65535U) | (unsigned int )((reg_addr & 31) << 16)) | 2147483648U,
         (void volatile *)ioaddr + 128U);
  rtl_udelay_loop_wait_low(tp, & rtl_ephyar_cond, 10U, 100);
  __const_udelay(42950UL);
  }
  return;
}
}
static u16 rtl_ephy_read(struct rtl8169_private *tp , int reg_addr )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((reg_addr & 31) << 16), (void volatile *)ioaddr + 128U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_ephyar_cond, 10U, 100);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 128U);
    tmp___1 = (u16 )tmp___0;
    }
  } else {
    tmp___1 = 65535U;
  }
  return (tmp___1);
}
}
static void rtl_eri_write(struct rtl8169_private *tp , int addr , u32 mask , u32 val ,
                          int type )
{
  void *ioaddr ;
  long tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = ldv__builtin_expect((long )((addr & 3) != 0 || mask == 0U), 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/realtek/r8169.c"),
                         "i" (1288), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  writel(val, (void volatile *)ioaddr + 112U);
  writel((((unsigned int )type | mask) | (unsigned int )addr) | 2147483648U, (void volatile *)ioaddr + 116U);
  rtl_udelay_loop_wait_low(tp, & rtl_eriar_cond, 100U, 100);
  }
  return;
}
}
static u32 rtl_eri_read(struct rtl8169_private *tp , int addr , int type )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((type | 61440) | addr), (void volatile *)ioaddr + 116U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_eriar_cond, 100U, 100);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 112U);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 4294967295U;
  }
  return (tmp___1);
}
}
static void rtl_w1w0_eri(struct rtl8169_private *tp , int addr , u32 mask , u32 p ,
                         u32 m , int type )
{
  u32 val ;
  {
  {
  val = rtl_eri_read(tp, addr, type);
  rtl_eri_write(tp, addr, mask, (val & ~ m) | p, type);
  }
  return;
}
}
static void rtl_write_exgmac_batch(struct rtl8169_private *tp , struct exgmac_reg const *r ,
                                   int len )
{
  int tmp ;
  {
  goto ldv_48524;
  ldv_48523:
  {
  rtl_eri_write(tp, (int )r->addr, (u32 )r->mask, r->val, 0);
  r = r + 1;
  }
  ldv_48524:
  tmp = len;
  len = len - 1;
  if (tmp > 0) {
    goto ldv_48523;
  } else {
  }
  return;
}
}
static bool rtl_efusear_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_efusear_cond = {& rtl_efusear_cond_check, "rtl_efusear_cond"};
static bool rtl_efusear_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 220U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static u8 rtl8168d_efuse_read(struct rtl8169_private *tp , int reg_addr )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((reg_addr & 1023) << 8), (void volatile *)ioaddr + 220U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_efusear_cond, 100U, 300);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 220U);
    tmp___1 = (u8 )tmp___0;
    }
  } else {
    tmp___1 = 255U;
  }
  return (tmp___1);
}
}
static u16 rtl_get_events(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned short tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readw((void const volatile *)ioaddr + 62U);
  }
  return (tmp);
}
}
static void rtl_ack_events(struct rtl8169_private *tp , u16 bits )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writew((int )bits, (void volatile *)ioaddr + 62U);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
static void rtl_irq_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writew(0, (void volatile *)ioaddr + 60U);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
static void rtl_irq_enable(struct rtl8169_private *tp , u16 bits )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writew((int )bits, (void volatile *)ioaddr + 60U);
  }
  return;
}
}
static void rtl_irq_enable_all(struct rtl8169_private *tp )
{
  {
  {
  rtl_irq_enable(tp, (int )((unsigned int )tp->event_slow | 15U));
  }
  return;
}
}
static void rtl8169_irq_mask_and_ack(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  rtl_irq_disable(tp);
  rtl_ack_events(tp, (int )((unsigned int )tp->event_slow | 15U));
  readb((void const volatile *)ioaddr + 55U);
  }
  return;
}
}
static unsigned int rtl8169_tbi_reset_pending(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 100U);
  }
  return (tmp & 2147483648U);
}
}
static unsigned int rtl8169_xmii_reset_pending(struct rtl8169_private *tp )
{
  int tmp ;
  {
  {
  tmp = rtl_readphy(tp, 0);
  }
  return ((unsigned int )tmp & 32768U);
}
}
static unsigned int rtl8169_tbi_link_ok(void *ioaddr )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)ioaddr + 100U);
  }
  return (tmp & 33554432U);
}
}
static unsigned int rtl8169_xmii_link_ok(void *ioaddr )
{
  unsigned char tmp ;
  {
  {
  tmp = readb((void const volatile *)ioaddr + 108U);
  }
  return ((unsigned int )tmp & 2U);
}
}
static void rtl8169_tbi_reset_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 100U);
  writel(tmp | 2147483648U, (void volatile *)ioaddr + 100U);
  }
  return;
}
}
static void rtl8169_xmii_reset_enable(struct rtl8169_private *tp )
{
  unsigned int val ;
  int tmp ;
  {
  {
  tmp = rtl_readphy(tp, 0);
  val = (unsigned int )(tmp | 32768);
  rtl_writephy(tp, 0, val & 65535U);
  }
  return;
}
}
static void rtl_link_chg_patch(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct net_device *dev ;
  bool tmp ;
  int tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  {
  {
  ioaddr = tp->mmio_addr;
  dev = tp->dev;
  tmp = netif_running((struct net_device const *)dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  if ((unsigned int )tp->mac_version == 33U || (unsigned int )tp->mac_version == 37U) {
    {
    tmp___2 = readb((void const volatile *)ioaddr + 108U);
    }
    if (((int )tmp___2 & 16) != 0) {
      {
      rtl_eri_write(tp, 444, 61440U, 17U, 0);
      rtl_eri_write(tp, 476, 61440U, 5U, 0);
      }
    } else {
      {
      tmp___1 = readb((void const volatile *)ioaddr + 108U);
      }
      if (((int )tmp___1 & 8) != 0) {
        {
        rtl_eri_write(tp, 444, 61440U, 31U, 0);
        rtl_eri_write(tp, 476, 61440U, 5U, 0);
        }
      } else {
        {
        rtl_eri_write(tp, 444, 61440U, 31U, 0);
        rtl_eri_write(tp, 476, 61440U, 63U, 0);
        }
      }
    }
    {
    rtl_w1w0_eri(tp, 220, 4096U, 0U, 1U, 0);
    rtl_w1w0_eri(tp, 220, 4096U, 1U, 0U, 0);
    }
  } else
  if ((unsigned int )tp->mac_version - 34U <= 1U) {
    {
    tmp___3 = readb((void const volatile *)ioaddr + 108U);
    }
    if (((int )tmp___3 & 16) != 0) {
      {
      rtl_eri_write(tp, 444, 61440U, 17U, 0);
      rtl_eri_write(tp, 476, 61440U, 5U, 0);
      }
    } else {
      {
      rtl_eri_write(tp, 444, 61440U, 31U, 0);
      rtl_eri_write(tp, 476, 61440U, 63U, 0);
      }
    }
  } else
  if ((unsigned int )tp->mac_version == 36U) {
    {
    tmp___4 = readb((void const volatile *)ioaddr + 108U);
    }
    if (((int )tmp___4 & 4) != 0) {
      {
      rtl_eri_write(tp, 464, 12288U, 19714U, 0);
      rtl_eri_write(tp, 476, 12288U, 96U, 0);
      }
    } else {
      {
      rtl_eri_write(tp, 464, 12288U, 0U, 0);
      }
    }
  } else {
  }
  return;
}
}
static void __rtl8169_check_link_status(struct net_device *dev , struct rtl8169_private *tp ,
                                        void *ioaddr , bool pm )
{
  int tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp___0 = (*(tp->link_ok))(ioaddr);
  }
  if (tmp___0 != 0U) {
    {
    rtl_link_chg_patch(tp);
    }
    if ((int )pm) {
      {
      pm_request_resume(& (tp->pci_dev)->dev);
      }
    } else {
    }
    {
    netif_carrier_on(dev);
    tmp = net_ratelimit();
    }
    if (tmp != 0) {
      if ((tp->msg_enable & 32U) != 0U) {
        {
        netdev_info((struct net_device const *)dev, "link up\n");
        }
      } else {
      }
    } else {
    }
  } else {
    {
    netif_carrier_off(dev);
    }
    if ((tp->msg_enable & 16U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "link down\n");
      }
    } else {
    }
    if ((int )pm) {
      {
      pm_schedule_suspend(& (tp->pci_dev)->dev, 5000U);
      }
    } else {
    }
  }
  return;
}
}
static void rtl8169_check_link_status(struct net_device *dev , struct rtl8169_private *tp ,
                                      void *ioaddr )
{
  {
  {
  __rtl8169_check_link_status(dev, tp, ioaddr, 0);
  }
  return;
}
}
static u32 __rtl8169_get_wol(struct rtl8169_private *tp )
{
  void *ioaddr ;
  u8 options ;
  u32 wolopts ;
  {
  {
  ioaddr = tp->mmio_addr;
  wolopts = 0U;
  options = readb((void const volatile *)ioaddr + 82U);
  }
  if (((int )options & 1) == 0) {
    return (0U);
  } else {
  }
  {
  options = readb((void const volatile *)ioaddr + 84U);
  }
  if (((int )options & 16) != 0) {
    wolopts = wolopts | 1U;
  } else {
  }
  if (((int )options & 32) != 0) {
    wolopts = wolopts | 32U;
  } else {
  }
  {
  options = readb((void const volatile *)ioaddr + 86U);
  }
  if (((int )options & 16) != 0) {
    wolopts = wolopts | 2U;
  } else {
  }
  if (((int )options & 64) != 0) {
    wolopts = wolopts | 8U;
  } else {
  }
  if (((int )options & 32) != 0) {
    wolopts = wolopts | 4U;
  } else {
  }
  return (wolopts);
}
}
static void rtl8169_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_lock_work(tp);
  wol->supported = 47U;
  wol->wolopts = __rtl8169_get_wol(tp);
  rtl_unlock_work(tp);
  }
  return;
}
}
static void __rtl8169_set_wol(struct rtl8169_private *tp , u32 wolopts )
{
  void *ioaddr ;
  unsigned int i ;
  struct __anonstruct_cfg_276 cfg[6U] ;
  u8 options ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  cfg[0].opt = 1U;
  cfg[0].reg = 84U;
  cfg[0].mask = 16U;
  cfg[1].opt = 32U;
  cfg[1].reg = 84U;
  cfg[1].mask = 32U;
  cfg[2].opt = 2U;
  cfg[2].reg = 86U;
  cfg[2].mask = 16U;
  cfg[3].opt = 8U;
  cfg[3].reg = 86U;
  cfg[3].mask = 64U;
  cfg[4].opt = 4U;
  cfg[4].reg = 86U;
  cfg[4].mask = 32U;
  cfg[5].opt = 47U;
  cfg[5].reg = 86U;
  cfg[5].mask = 2U;
  writeb(192, (void volatile *)ioaddr + 80U);
  i = 0U;
  }
  goto ldv_48626;
  ldv_48625:
  {
  tmp = readb((void const volatile *)ioaddr + (unsigned long )cfg[i].reg);
  options = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )cfg[i].mask)));
  }
  if ((wolopts & cfg[i].opt) != 0U) {
    options = (u8 )((int )options | (int )cfg[i].mask);
  } else {
  }
  {
  writeb((int )options, (void volatile *)ioaddr + (unsigned long )cfg[i].reg);
  i = i + 1U;
  }
  ldv_48626: ;
  if (i <= 5U) {
    goto ldv_48625;
  } else {
  }
  {
  if (((((((((((((((((int )tp->mac_version == 16 || (int )tp->mac_version == 15) || (int )tp->mac_version == 14) || (int )tp->mac_version == 13) || (int )tp->mac_version == 12) || (int )tp->mac_version == 11) || (int )tp->mac_version == 10) || (int )tp->mac_version == 9) || (int )tp->mac_version == 8) || (int )tp->mac_version == 7) || (int )tp->mac_version == 6) || (int )tp->mac_version == 5) || (int )tp->mac_version == 4) || (int )tp->mac_version == 3) || (int )tp->mac_version == 2) || (int )tp->mac_version == 1) || (int )tp->mac_version == 0) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_16:
  case_15:
  case_14:
  case_13:
  case_12:
  case_11:
  case_10:
  case_9:
  case_8:
  case_7:
  case_6:
  case_5:
  case_4:
  case_3:
  case_2:
  case_1:
  case_0:
  {
  tmp___0 = readb((void const volatile *)ioaddr + 82U);
  options = (unsigned int )tmp___0 & 254U;
  }
  if (wolopts != 0U) {
    options = (u8 )((unsigned int )options | 1U);
  } else {
  }
  {
  writeb((int )options, (void volatile *)ioaddr + 82U);
  }
  goto ldv_48629;
  switch_default:
  {
  tmp___1 = readb((void const volatile *)ioaddr + 83U);
  options = (unsigned int )tmp___1 & 223U;
  }
  if (wolopts != 0U) {
    options = (u8 )((unsigned int )options | 32U);
  } else {
  }
  {
  writeb((int )options, (void volatile *)ioaddr + 83U);
  }
  goto ldv_48629;
  switch_break: ;
  }
  ldv_48629:
  {
  writeb(0, (void volatile *)ioaddr + 80U);
  }
  return;
}
}
static int rtl8169_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_lock_work(tp);
  }
  if (wol->wolopts != 0U) {
    tp->features = tp->features | 1U;
  } else {
    tp->features = tp->features & 4294967294U;
  }
  {
  __rtl8169_set_wol(tp, wol->wolopts);
  rtl_unlock_work(tp);
  device_set_wakeup_enable(& (tp->pci_dev)->dev, wol->wolopts != 0U);
  }
  return (0);
}
}
static char const *rtl_lookup_firmware_name(struct rtl8169_private *tp )
{
  {
  return ((char const *)rtl_chip_infos[(int )tp->mac_version].fw_name);
}
}
extern void __compiletime_assert_1634(void) ;
static void rtl8169_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct rtl_fw *rtl_fw ;
  char const *tmp___0 ;
  bool __cond ;
  long tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_fw = tp->rtl_fw;
  strlcpy((char *)(& info->driver), "r8169", 32UL);
  strlcpy((char *)(& info->version), "2.3LK-NAPI", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)tp->pci_dev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  __cond = 0;
  }
  if ((int )__cond) {
    {
    __compiletime_assert_1634();
    }
  } else {
  }
  {
  tmp___1 = IS_ERR_OR_NULL((void const *)rtl_fw);
  }
  if (tmp___1 == 0L) {
    {
    strlcpy((char *)(& info->fw_version), (char const *)(& rtl_fw->version), 32UL);
    }
  } else {
  }
  return;
}
}
static int rtl8169_get_regs_len(struct net_device *dev )
{
  {
  return (256);
}
}
static int rtl8169_set_speed_tbi(struct net_device *dev , u8 autoneg , u16 speed ,
                                 u8 duplex , u32 ignored )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int ret ;
  u32 reg ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  ret = 0;
  reg = readl((void const volatile *)ioaddr + 100U);
  }
  if (((unsigned int )autoneg == 0U && (unsigned int )speed == 1000U) && (unsigned int )duplex == 1U) {
    {
    writel(reg & 3489660927U, (void volatile *)ioaddr + 100U);
    }
  } else
  if ((unsigned int )autoneg == 1U) {
    {
    writel(reg | 805306368U, (void volatile *)ioaddr + 100U);
    }
  } else {
    if ((tp->msg_enable & 4U) != 0U) {
      {
      netdev_warn((struct net_device const *)dev, "incorrect speed setting refused in TBI mode\n");
      }
    } else {
    }
    ret = -95;
  }
  return (ret);
}
}
static int rtl8169_set_speed_xmii(struct net_device *dev , u8 autoneg , u16 speed ,
                                  u8 duplex , u32 adv )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int giga_ctrl ;
  int bmcr ;
  int rc ;
  int auto_nego ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rc = -22;
  rtl_writephy(tp, 31, 0U);
  }
  if ((unsigned int )autoneg == 1U) {
    {
    auto_nego = rtl_readphy(tp, 4);
    auto_nego = auto_nego & -481;
    }
    if ((int )adv & 1) {
      auto_nego = auto_nego | 32;
    } else {
    }
    if ((adv & 2U) != 0U) {
      auto_nego = auto_nego | 64;
    } else {
    }
    if ((adv & 4U) != 0U) {
      auto_nego = auto_nego | 128;
    } else {
    }
    if ((adv & 8U) != 0U) {
      auto_nego = auto_nego | 256;
    } else {
    }
    {
    auto_nego = auto_nego | 3072;
    giga_ctrl = rtl_readphy(tp, 9);
    giga_ctrl = giga_ctrl & -769;
    }
    if ((unsigned int )*((unsigned char *)tp + 3904UL) != 0U) {
      if ((adv & 16U) != 0U) {
        giga_ctrl = giga_ctrl | 256;
      } else {
      }
      if ((adv & 32U) != 0U) {
        giga_ctrl = giga_ctrl | 512;
      } else {
      }
    } else
    if ((adv & 48U) != 0U) {
      if ((tp->msg_enable & 4U) != 0U) {
        {
        netdev_info((struct net_device const *)dev, "PHY does not support 1000Mbps\n");
        }
      } else {
      }
      goto out;
    } else {
    }
    {
    bmcr = 4608;
    rtl_writephy(tp, 4, (u32 )auto_nego);
    rtl_writephy(tp, 9, (u32 )giga_ctrl);
    }
  } else {
    giga_ctrl = 0;
    if ((unsigned int )speed == 10U) {
      bmcr = 0;
    } else
    if ((unsigned int )speed == 100U) {
      bmcr = 8192;
    } else {
      goto out;
    }
    if ((unsigned int )duplex == 1U) {
      bmcr = bmcr | 256;
    } else {
    }
  }
  {
  rtl_writephy(tp, 0, (u32 )bmcr);
  }
  if ((unsigned int )tp->mac_version - 1U <= 1U) {
    if ((unsigned int )speed == 100U && (unsigned int )autoneg != 1U) {
      {
      rtl_writephy(tp, 23, 8504U);
      rtl_writephy(tp, 14, 608U);
      }
    } else {
      {
      rtl_writephy(tp, 23, 8456U);
      rtl_writephy(tp, 14, 0U);
      }
    }
  } else {
  }
  rc = 0;
  out: ;
  return (rc);
}
}
static int rtl8169_set_speed(struct net_device *dev , u8 autoneg , u16 speed , u8 duplex ,
                             u32 advertising )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ret = (*(tp->set_speed))(dev, (int )autoneg, (int )speed, (int )duplex, advertising);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (((int )tmp___0 && (unsigned int )autoneg == 1U) && (advertising & 32U) != 0U) {
    {
    ldv_mod_timer_20(& tp->timer, (unsigned long )jiffies + 2500UL);
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int rtl8169_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int ret ;
  __u32 tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ldv_del_timer_sync_21(& tp->timer);
  rtl_lock_work(tp);
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  ret = rtl8169_set_speed(dev, (int )cmd->autoneg, (int )((u16 )tmp___0), (int )cmd->duplex,
                          cmd->advertising);
  rtl_unlock_work(tp);
  }
  return (ret);
}
}
static netdev_features_t rtl8169_fix_features(struct net_device *dev , netdev_features_t features )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  }
  if (dev->mtu > 2047U) {
    features = features & 0xffffffffffe6ffffULL;
  } else {
  }
  if (dev->mtu > 1500U && ! ((_Bool )rtl_chip_infos[(int )tp->mac_version].jumbo_tx_csum)) {
    features = features & 0xfffffffffffffffdULL;
  } else {
  }
  return (features);
}
}
static void __rtl8169_set_features(struct net_device *dev , netdev_features_t features )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  netdev_features_t changed ;
  void *ioaddr ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  changed = features ^ dev->features;
  ioaddr = tp->mmio_addr;
  }
  if ((changed & 73014444288ULL) == 0ULL) {
    return;
  } else {
  }
  if ((changed & 4294967552ULL) != 0ULL) {
    if ((features & 4294967296ULL) != 0ULL) {
      tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 32U);
    } else {
      tp->cp_cmd = (unsigned int )tp->cp_cmd & 65503U;
    }
    if ((dev->features & 256ULL) != 0ULL) {
      tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 64U);
    } else {
      tp->cp_cmd = (unsigned int )tp->cp_cmd & 65471U;
    }
    {
    writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
    readw((void const volatile *)ioaddr + 224U);
    }
  } else {
  }
  if ((changed & 68719476736ULL) != 0ULL) {
    {
    tmp___1 = readl((void const volatile *)ioaddr + 68U);
    tmp___0 = (int )tmp___1 & -49;
    }
    if ((features & 68719476736ULL) != 0ULL) {
      tmp___0 = tmp___0 | 48;
    } else {
    }
    {
    writel((unsigned int )tmp___0, (void volatile *)ioaddr + 68U);
    }
  } else {
  }
  return;
}
}
static int rtl8169_set_features(struct net_device *dev , netdev_features_t features )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_lock_work(tp);
  __rtl8169_set_features(dev, features);
  rtl_unlock_work(tp);
  }
  return (0);
}
}
__inline static u32 rtl8169_tx_vlan_tag(struct sk_buff *skb )
{
  __u16 tmp ;
  u32 tmp___0 ;
  {
  if (((int )skb->vlan_tci & 4096) != 0) {
    {
    tmp = __fswab16((int )skb->vlan_tci & 61439);
    tmp___0 = (u32 )((int )tmp | 131072);
    }
  } else {
    tmp___0 = 0U;
  }
  return (tmp___0);
}
}
static void rtl8169_rx_vlan_tag(struct RxDesc *desc , struct sk_buff *skb )
{
  u32 opts2 ;
  __u16 tmp ;
  {
  opts2 = desc->opts2;
  if ((opts2 & 65536U) != 0U) {
    {
    tmp = __fswab16((int )((__u16 )opts2));
    __vlan_hwaccel_put_tag(skb, 129, (int )tmp);
    }
  } else {
  }
  return;
}
}
static int rtl8169_gset_tbi(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  u32 status ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  cmd->supported = 1120U;
  cmd->port = 3U;
  cmd->transceiver = 0U;
  status = readl((void const volatile *)ioaddr + 100U);
  cmd->advertising = (status & 536870912U) != 0U ? 64U : 0U;
  cmd->autoneg = (status & 536870912U) != 0U;
  ethtool_cmd_speed_set(cmd, 1000U);
  cmd->duplex = 1U;
  }
  return (0);
}
}
static int rtl8169_gset_xmii(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = mii_ethtool_gset(& tp->mii, cmd);
  }
  return (tmp___0);
}
}
static int rtl8169_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_lock_work(tp);
  rc = (*(tp->get_settings))(dev, cmd);
  rtl_unlock_work(tp);
  }
  return (rc);
}
}
static void rtl8169_get_regs(struct net_device *dev , struct ethtool_regs *regs ,
                             void *p )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  u32 *data ;
  u32 *dw ;
  int i ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  data = (u32 *)tp->mmio_addr;
  dw = (u32 *)p;
  rtl_lock_work(tp);
  i = 0;
  }
  goto ldv_48746;
  ldv_48745:
  {
  tmp___0 = data;
  data = data + 1;
  tmp___1 = dw;
  dw = dw + 1;
  memcpy_fromio((void *)tmp___1, (void const volatile *)tmp___0, 4UL);
  i = i + 4;
  }
  ldv_48746: ;
  if (i <= 255) {
    goto ldv_48745;
  } else {
  }
  {
  rtl_unlock_work(tp);
  }
  return;
}
}
static u32 rtl8169_get_msglevel(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  }
  return (tp->msg_enable);
}
}
static void rtl8169_set_msglevel(struct net_device *dev , u32 value )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tp->msg_enable = value;
  }
  return;
}
}
static char const rtl8169_gstrings[13U][32U] =
  { { 't', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'm',
            'i', 's', 's', 'e',
            'd', '\000'},
   { 'a', 'l', 'i', 'g',
            'n', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 't', 'x', '_', 's',
            'i', 'n', 'g', 'l',
            'e', '_', 'c', 'o',
            'l', 'l', 'i', 's',
            'i', 'o', 'n', 's',
            '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', 's', '\000'},
   { 'u', 'n', 'i', 'c',
            'a', 's', 't', '\000'},
   { 'b', 'r', 'o', 'a',
            'd', 'c', 'a', 's',
            't', '\000'},
   { 'm', 'u', 'l', 't',
            'i', 'c', 'a', 's',
            't', '\000'},
   { 't', 'x', '_', 'a',
            'b', 'o', 'r', 't',
            'e', 'd', '\000'},
   { 't', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            'r', 'u', 'n', '\000'}};
static int rtl8169_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (13);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static bool rtl_counters_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_counters_cond = {& rtl_counters_cond_check, "rtl_counters_cond"};
static bool rtl_counters_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 16U);
  }
  return ((tmp & 8U) != 0U);
}
}
static void rtl8169_update_counters(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct device *d ;
  struct rtl8169_counters *counters ;
  dma_addr_t paddr ;
  u32 cmd ;
  unsigned char tmp___0 ;
  void *tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  d = & (tp->pci_dev)->dev;
  tmp___0 = readb((void const volatile *)ioaddr + 55U);
  }
  if (((int )tmp___0 & 8) == 0) {
    return;
  } else {
  }
  {
  tmp___1 = dma_alloc_attrs(d, 64UL, & paddr, 208U, (struct dma_attrs *)0);
  counters = (struct rtl8169_counters *)tmp___1;
  }
  if ((unsigned long )counters == (unsigned long )((struct rtl8169_counters *)0)) {
    return;
  } else {
  }
  {
  writel((unsigned int )(paddr >> 32), (void volatile *)ioaddr + 20U);
  cmd = (u32 )paddr;
  writel(cmd, (void volatile *)ioaddr + 16U);
  writel(cmd | 8U, (void volatile *)ioaddr + 16U);
  tmp___2 = rtl_udelay_loop_wait_low(tp, & rtl_counters_cond, 10U, 1000);
  }
  if ((int )tmp___2) {
    {
    memcpy((void *)(& tp->counters), (void const *)counters, 64UL);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)ioaddr + 16U);
  writel(0U, (void volatile *)ioaddr + 20U);
  dma_free_attrs(d, 64UL, (void *)counters, paddr, (struct dma_attrs *)0);
  }
  return;
}
}
static void rtl8169_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                      u64 *data )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = rtnl_is_locked();
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    printk("\vRTNL: assertion failed at %s (%d)\n", (char *)"drivers/net/ethernet/realtek/r8169.c",
           1995);
    dump_stack();
    }
  } else {
  }
  {
  rtl8169_update_counters(dev);
  *data = tp->counters.tx_packets;
  *(data + 1UL) = tp->counters.rx_packets;
  *(data + 2UL) = tp->counters.tx_errors;
  *(data + 3UL) = (u64 )tp->counters.rx_errors;
  *(data + 4UL) = (u64 )tp->counters.rx_missed;
  *(data + 5UL) = (u64 )tp->counters.align_errors;
  *(data + 6UL) = (u64 )tp->counters.tx_one_collision;
  *(data + 7UL) = (u64 )tp->counters.tx_multi_collision;
  *(data + 8UL) = tp->counters.rx_unicast;
  *(data + 9UL) = tp->counters.rx_broadcast;
  *(data + 10UL) = (u64 )tp->counters.rx_multicast;
  *(data + 11UL) = (u64 )tp->counters.tx_aborted;
  *(data + 12UL) = (u64 )tp->counters.tx_underun;
  }
  return;
}
}
static void rtl8169_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  {
  {
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_1:
  {
  memcpy((void *)data, (void const *)(& rtl8169_gstrings), 416UL);
  }
  goto ldv_48794;
  switch_break: ;
  }
  ldv_48794: ;
  return;
}
}
static struct ethtool_ops const rtl8169_ethtool_ops =
     {& rtl8169_get_settings, & rtl8169_set_settings, & rtl8169_get_drvinfo, & rtl8169_get_regs_len,
    & rtl8169_get_regs, & rtl8169_get_wol, & rtl8169_set_wol, & rtl8169_get_msglevel,
    & rtl8169_set_msglevel, 0, & ethtool_op_get_link, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & rtl8169_get_strings, 0, & rtl8169_get_ethtool_stats, 0, 0, 0, 0, & rtl8169_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ethtool_op_get_ts_info, 0, 0, 0, 0};
static void rtl8169_get_mac_version(struct rtl8169_private *tp , struct net_device *dev ,
                                    u8 default_version )
{
  void *ioaddr ;
  struct rtl_mac_info mac_info[58U] ;
  struct rtl_mac_info const *p ;
  u32 reg ;
  {
  {
  ioaddr = tp->mmio_addr;
  mac_info[0].mask = 2096103424U;
  mac_info[0].val = 1551892480U;
  mac_info[0].mac_version = 43;
  mac_info[1].mask = 2096103424U;
  mac_info[1].val = 1351614464U;
  mac_info[1].mac_version = 41;
  mac_info[2].mask = 2096103424U;
  mac_info[2].val = 1276116992U;
  mac_info[2].mac_version = 40;
  mac_info[3].mask = 2096103424U;
  mac_info[3].val = 1275068416U;
  mac_info[3].mac_version = 39;
  mac_info[4].mask = 2088763392U;
  mac_info[4].val = 1216348160U;
  mac_info[4].mac_version = 37;
  mac_info[5].mask = 2096103424U;
  mac_info[5].val = 1209008128U;
  mac_info[5].mac_version = 35;
  mac_info[6].mask = 2096103424U;
  mac_info[6].val = 1207959552U;
  mac_info[6].mac_version = 34;
  mac_info[7].mask = 2088763392U;
  mac_info[7].val = 746586112U;
  mac_info[7].mac_version = 33;
  mac_info[8].mask = 2096103424U;
  mac_info[8].val = 740294656U;
  mac_info[8].mac_version = 32;
  mac_info[9].mask = 2096103424U;
  mac_info[9].val = 739246080U;
  mac_info[9].mac_version = 31;
  mac_info[10].mask = 2088763392U;
  mac_info[10].val = 738197504U;
  mac_info[10].mac_version = 32;
  mac_info[11].mask = 2096103424U;
  mac_info[11].val = 674234368U;
  mac_info[11].mac_version = 25;
  mac_info[12].mask = 2096103424U;
  mac_info[12].val = 672137216U;
  mac_info[12].mac_version = 24;
  mac_info[13].mask = 2088763392U;
  mac_info[13].val = 671088640U;
  mac_info[13].mac_version = 25;
  mac_info[14].mask = 2096103424U;
  mac_info[14].val = 679477248U;
  mac_info[14].mac_version = 26;
  mac_info[15].mask = 2096103424U;
  mac_info[15].val = 681574400U;
  mac_info[15].mac_version = 27;
  mac_info[16].mask = 2096103424U;
  mac_info[16].val = 682622976U;
  mac_info[16].mac_version = 30;
  mac_info[17].mask = 2096103424U;
  mac_info[17].val = 1018167296U;
  mac_info[17].mac_version = 23;
  mac_info[18].mask = 2096103424U;
  mac_info[18].val = 1016070144U;
  mac_info[18].mac_version = 22;
  mac_info[19].mask = 2096103424U;
  mac_info[19].val = 1015021568U;
  mac_info[19].mac_version = 17;
  mac_info[20].mask = 2088763392U;
  mac_info[20].val = 1015021568U;
  mac_info[20].mac_version = 23;
  mac_info[21].mask = 2096103424U;
  mac_info[21].val = 1006632960U;
  mac_info[21].mac_version = 18;
  mac_info[22].mask = 2096103424U;
  mac_info[22].val = 1008730112U;
  mac_info[22].mac_version = 19;
  mac_info[23].mask = 2096103424U;
  mac_info[23].val = 1009778688U;
  mac_info[23].mac_version = 20;
  mac_info[24].mask = 2096103424U;
  mac_info[24].val = 1010827264U;
  mac_info[24].mac_version = 21;
  mac_info[25].mask = 2088763392U;
  mac_info[25].val = 1006632960U;
  mac_info[25].mac_version = 21;
  mac_info[26].mask = 2096103424U;
  mac_info[26].val = 939524096U;
  mac_info[26].mac_version = 11;
  mac_info[27].mask = 2096103424U;
  mac_info[27].val = 944766976U;
  mac_info[27].mac_version = 16;
  mac_info[28].mask = 2088763392U;
  mac_info[28].val = 939524096U;
  mac_info[28].mac_version = 16;
  mac_info[29].mask = 2088763392U;
  mac_info[29].val = 805306368U;
  mac_info[29].mac_version = 10;
  mac_info[30].mask = 2096103424U;
  mac_info[30].val = 1150287872U;
  mac_info[30].mac_version = 38;
  mac_info[31].mask = 2088763392U;
  mac_info[31].val = 1149239296U;
  mac_info[31].mac_version = 38;
  mac_info[32].mask = 2088763392U;
  mac_info[32].val = 1140850688U;
  mac_info[32].mac_version = 36;
  mac_info[33].mask = 2096103424U;
  mac_info[33].val = 1085276160U;
  mac_info[33].mac_version = 29;
  mac_info[34].mask = 2096103424U;
  mac_info[34].val = 1084227584U;
  mac_info[34].mac_version = 29;
  mac_info[35].mask = 2096103424U;
  mac_info[35].val = 1083179008U;
  mac_info[35].mac_version = 28;
  mac_info[36].mask = 2088763392U;
  mac_info[36].val = 1082130432U;
  mac_info[36].mac_version = 29;
  mac_info[37].mask = 2096103424U;
  mac_info[37].val = 882900992U;
  mac_info[37].mac_version = 8;
  mac_info[38].mask = 2096103424U;
  mac_info[38].val = 614465536U;
  mac_info[38].mac_version = 8;
  mac_info[39].mask = 2096103424U;
  mac_info[39].val = 881852416U;
  mac_info[39].mac_version = 7;
  mac_info[40].mask = 2096103424U;
  mac_info[40].val = 613416960U;
  mac_info[40].mac_version = 7;
  mac_info[41].mask = 2096103424U;
  mac_info[41].val = 880803840U;
  mac_info[41].mac_version = 6;
  mac_info[42].mask = 2096103424U;
  mac_info[42].val = 612368384U;
  mac_info[42].mac_version = 6;
  mac_info[43].mask = 2096103424U;
  mac_info[43].val = 872415232U;
  mac_info[43].mac_version = 12;
  mac_info[44].mask = 2096103424U;
  mac_info[44].val = 875560960U;
  mac_info[44].mac_version = 9;
  mac_info[45].mask = 2096103424U;
  mac_info[45].val = 874512384U;
  mac_info[45].mac_version = 15;
  mac_info[46].mask = 2088763392U;
  mac_info[46].val = 880803840U;
  mac_info[46].mac_version = 8;
  mac_info[47].mask = 2088763392U;
  mac_info[47].val = 612368384U;
  mac_info[47].mac_version = 8;
  mac_info[48].mask = 2088763392U;
  mac_info[48].val = 872415232U;
  mac_info[48].mac_version = 15;
  mac_info[49].mask = 4236247040U;
  mac_info[49].val = 947912704U;
  mac_info[49].mac_version = 14;
  mac_info[50].mask = 4236247040U;
  mac_info[50].val = 813694976U;
  mac_info[50].mac_version = 13;
  mac_info[51].mask = 4236247040U;
  mac_info[51].val = 2550136832U;
  mac_info[51].mac_version = 5;
  mac_info[52].mask = 4236247040U;
  mac_info[52].val = 402653184U;
  mac_info[52].mac_version = 4;
  mac_info[53].mask = 4236247040U;
  mac_info[53].val = 268435456U;
  mac_info[53].mac_version = 3;
  mac_info[54].mask = 4236247040U;
  mac_info[54].val = 67108864U;
  mac_info[54].mac_version = 2;
  mac_info[55].mask = 4236247040U;
  mac_info[55].val = 8388608U;
  mac_info[55].mac_version = 1;
  mac_info[56].mask = 4236247040U;
  mac_info[56].val = 0U;
  mac_info[56].mac_version = 0;
  mac_info[57].mask = 0U;
  mac_info[57].val = 0U;
  mac_info[57].mac_version = 255;
  p = (struct rtl_mac_info const *)(& mac_info);
  reg = readl((void const volatile *)ioaddr + 64U);
  }
  goto ldv_48810;
  ldv_48809:
  p = p + 1;
  ldv_48810: ;
  if ((reg & (u32 )p->mask) != (u32 )p->val) {
    goto ldv_48809;
  } else {
  }
  tp->mac_version = (u16 )p->mac_version;
  if ((unsigned int )tp->mac_version == 255U) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_notice((struct net_device const *)dev, "unknown MAC, using family default\n");
      }
    } else {
    }
    tp->mac_version = (u16 )default_version;
  } else
  if ((unsigned int )tp->mac_version == 41U) {
    tp->mac_version = (unsigned int )*((unsigned char *)tp + 3904UL) != 0U ? 41U : 42U;
  } else {
  }
  return;
}
}
static void rtl8169_print_mac_version(struct rtl8169_private *tp )
{
  {
  return;
}
}
static void rtl_writephy_batch(struct rtl8169_private *tp , struct phy_reg const *regs ,
                               int len )
{
  int tmp ;
  {
  goto ldv_48824;
  ldv_48823:
  {
  rtl_writephy(tp, (int )regs->reg, (u32 )regs->val);
  regs = regs + 1;
  }
  ldv_48824:
  tmp = len;
  len = len - 1;
  if (tmp > 0) {
    goto ldv_48823;
  } else {
  }
  return;
}
}
static bool rtl_fw_format_ok(struct rtl8169_private *tp , struct rtl_fw *rtl_fw )
{
  struct firmware const *fw ;
  struct fw_info *fw_info ;
  struct rtl_fw_phy_action *pa ;
  char *version ;
  bool rc ;
  size_t i ;
  size_t size ;
  size_t start ;
  u8 checksum ;
  char const *tmp ;
  {
  fw = rtl_fw->fw;
  fw_info = (struct fw_info *)fw->data;
  pa = & rtl_fw->phy_action;
  version = (char *)(& rtl_fw->version);
  rc = 0;
  if ((unsigned long )fw->size <= 3UL) {
    goto out;
  } else {
  }
  if (fw_info->magic == 0U) {
    checksum = 0U;
    if ((unsigned long )fw->size <= 44UL) {
      goto out;
    } else {
    }
    i = 0UL;
    goto ldv_48847;
    ldv_48846:
    checksum = (int )checksum + (int )((u8 )*(fw->data + i));
    i = i + 1UL;
    ldv_48847: ;
    if (i < (unsigned long )fw->size) {
      goto ldv_48846;
    } else {
    }
    if ((unsigned int )checksum != 0U) {
      goto out;
    } else {
    }
    start = (size_t )fw_info->fw_start;
    if (start > (unsigned long )fw->size) {
      goto out;
    } else {
    }
    size = (size_t )fw_info->fw_len;
    if (size > ((unsigned long )fw->size - start) / 4UL) {
      goto out;
    } else {
    }
    {
    memcpy((void *)version, (void const *)(& fw_info->version), 32UL);
    pa->code = (__le32 *)(fw->data + start);
    pa->size = size;
    }
  } else {
    if (((unsigned long )fw->size & 3UL) != 0UL) {
      goto out;
    } else {
    }
    {
    tmp = rtl_lookup_firmware_name(tp);
    strlcpy(version, tmp, 32UL);
    pa->code = (__le32 *)fw->data;
    pa->size = (unsigned long )fw->size / 4UL;
    }
  }
  *(version + 31UL) = 0;
  rc = 1;
  out: ;
  return (rc);
}
}
static bool rtl_fw_data_ok(struct rtl8169_private *tp , struct net_device *dev , struct rtl_fw_phy_action *pa )
{
  bool rc ;
  size_t index ;
  u32 action ;
  u32 regno ;
  {
  rc = 0;
  index = 0UL;
  goto ldv_48875;
  ldv_48874:
  action = *(pa->code + index);
  regno = (action & 268369920U) >> 16;
  {
  if ((action & 4026531840U) == 0U) {
    goto case_0;
  } else {
  }
  if ((action & 4026531840U) == 268435456U) {
    goto case_268435456;
  } else {
  }
  if ((action & 4026531840U) == 536870912U) {
    goto case_536870912;
  } else {
  }
  if ((action & 4026531840U) == 1073741824U) {
    goto case_1073741824;
  } else {
  }
  if ((action & 4026531840U) == 1879048192U) {
    goto case_1879048192;
  } else {
  }
  if ((action & 4026531840U) == 2147483648U) {
    goto case_2147483648;
  } else {
  }
  if ((action & 4026531840U) == 3221225472U) {
    goto case_3221225472;
  } else {
  }
  if ((action & 4026531840U) == 3758096384U) {
    goto case_3758096384;
  } else {
  }
  if ((action & 4026531840U) == 805306368U) {
    goto case_805306368;
  } else {
  }
  if ((action & 4026531840U) == 2415919104U) {
    goto case_2415919104;
  } else {
  }
  if ((action & 4026531840U) == 2684354560U) {
    goto case_2684354560;
  } else {
  }
  if ((action & 4026531840U) == 2952790016U) {
    goto case_2952790016;
  } else {
  }
  if ((action & 4026531840U) == 3489660928U) {
    goto case_3489660928;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_268435456: ;
  case_536870912: ;
  case_1073741824: ;
  case_1879048192: ;
  case_2147483648: ;
  case_3221225472: ;
  case_3758096384: ;
  goto ldv_48866;
  case_805306368: ;
  if ((size_t )regno > index) {
    if ((tp->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)tp->dev, "Out of range of firmware\n");
      }
    } else {
    }
    goto out;
  } else {
  }
  goto ldv_48866;
  case_2415919104: ;
  if (index + 2UL >= pa->size) {
    if ((tp->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)tp->dev, "Out of range of firmware\n");
      }
    } else {
    }
    goto out;
  } else {
  }
  goto ldv_48866;
  case_2684354560: ;
  case_2952790016: ;
  case_3489660928: ;
  if ((index + (size_t )regno) + 1UL >= pa->size) {
    if ((tp->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)tp->dev, "Out of range of firmware\n");
      }
    } else {
    }
    goto out;
  } else {
  }
  goto ldv_48866;
  switch_default: ;
  if ((tp->msg_enable & 32U) != 0U) {
    {
    netdev_err((struct net_device const *)tp->dev, "Invalid action 0x%08x\n", action);
    }
  } else {
  }
  goto out;
  switch_break: ;
  }
  ldv_48866:
  index = index + 1UL;
  ldv_48875: ;
  if (index < pa->size) {
    goto ldv_48874;
  } else {
  }
  rc = 1;
  out: ;
  return (rc);
}
}
static int rtl_check_firmware(struct rtl8169_private *tp , struct rtl_fw *rtl_fw )
{
  struct net_device *dev ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  dev = tp->dev;
  rc = -22;
  tmp = rtl_fw_format_ok(tp, rtl_fw);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    if ((tp->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "invalid firwmare\n");
      }
    } else {
    }
    goto out;
  } else {
  }
  {
  tmp___1 = rtl_fw_data_ok(tp, dev, & rtl_fw->phy_action);
  }
  if ((int )tmp___1) {
    rc = 0;
  } else {
  }
  out: ;
  return (rc);
}
}
static void rtl_phy_write_fw(struct rtl8169_private *tp , struct rtl_fw *rtl_fw )
{
  struct rtl_fw_phy_action *pa ;
  struct mdio_ops org ;
  struct mdio_ops *ops ;
  u32 predata ;
  u32 count ;
  size_t index ;
  u32 action ;
  u32 data ;
  u32 regno ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  pa = & rtl_fw->phy_action;
  ops = & tp->mdio_ops;
  count = 0U;
  predata = count;
  org.write = ops->write;
  org.read = ops->read;
  index = 0UL;
  goto ldv_48918;
  ldv_48917:
  action = *(pa->code + index);
  data = action & 65535U;
  regno = (action & 268369920U) >> 16;
  if (action == 0U) {
    goto ldv_48897;
  } else {
  }
  {
  if ((action & 4026531840U) == 0U) {
    goto case_0;
  } else {
  }
  if ((action & 4026531840U) == 268435456U) {
    goto case_268435456;
  } else {
  }
  if ((action & 4026531840U) == 536870912U) {
    goto case_536870912;
  } else {
  }
  if ((action & 4026531840U) == 805306368U) {
    goto case_805306368;
  } else {
  }
  if ((action & 4026531840U) == 1073741824U) {
    goto case_1073741824;
  } else {
  }
  if ((action & 4026531840U) == 1879048192U) {
    goto case_1879048192;
  } else {
  }
  if ((action & 4026531840U) == 2147483648U) {
    goto case_2147483648;
  } else {
  }
  if ((action & 4026531840U) == 2415919104U) {
    goto case_2415919104;
  } else {
  }
  if ((action & 4026531840U) == 2684354560U) {
    goto case_2684354560;
  } else {
  }
  if ((action & 4026531840U) == 2952790016U) {
    goto case_2952790016;
  } else {
  }
  if ((action & 4026531840U) == 3221225472U) {
    goto case_3221225472;
  } else {
  }
  if ((action & 4026531840U) == 3489660928U) {
    goto case_3489660928;
  } else {
  }
  if ((action & 4026531840U) == 3758096384U) {
    goto case_3758096384;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp = rtl_readphy(tp, (int )regno);
  predata = (u32 )tmp;
  count = count + 1U;
  index = index + 1UL;
  }
  goto ldv_48899;
  case_268435456:
  predata = predata | data;
  index = index + 1UL;
  goto ldv_48899;
  case_536870912:
  predata = predata & data;
  index = index + 1UL;
  goto ldv_48899;
  case_805306368:
  index = index - (size_t )regno;
  goto ldv_48899;
  case_1073741824: ;
  if (data == 0U) {
    ops->write = org.write;
    ops->read = org.read;
  } else
  if (data == 1U) {
    ops->write = & mac_mcu_write;
    ops->read = & mac_mcu_read;
  } else {
  }
  index = index + 1UL;
  goto ldv_48899;
  case_1879048192:
  count = 0U;
  index = index + 1UL;
  goto ldv_48899;
  case_2147483648:
  {
  rtl_writephy(tp, (int )regno, data);
  index = index + 1UL;
  }
  goto ldv_48899;
  case_2415919104:
  index = index + (count == data ? 2UL : 1UL);
  goto ldv_48899;
  case_2684354560: ;
  if (predata == data) {
    index = index + (size_t )regno;
  } else {
  }
  index = index + 1UL;
  goto ldv_48899;
  case_2952790016: ;
  if (predata != data) {
    index = index + (size_t )regno;
  } else {
  }
  index = index + 1UL;
  goto ldv_48899;
  case_3221225472:
  {
  rtl_writephy(tp, (int )regno, predata);
  index = index + 1UL;
  }
  goto ldv_48899;
  case_3489660928:
  index = index + (size_t )(regno + 1U);
  goto ldv_48899;
  case_3758096384:
  __ms = (unsigned long )data;
  goto ldv_48914;
  ldv_48913:
  {
  __const_udelay(4295000UL);
  }
  ldv_48914:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_48913;
  } else {
  }
  index = index + 1UL;
  goto ldv_48899;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/realtek/r8169.c"),
                       "i" (2405), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_48899: ;
  ldv_48918: ;
  if (index < pa->size) {
    goto ldv_48917;
  } else {
  }
  ldv_48897:
  ops->write = org.write;
  ops->read = org.read;
  return;
}
}
static void rtl_release_firmware(struct rtl8169_private *tp )
{
  long tmp ;
  void *tmp___0 ;
  {
  {
  tmp = IS_ERR_OR_NULL((void const *)tp->rtl_fw);
  }
  if (tmp == 0L) {
    {
    release_firmware((tp->rtl_fw)->fw);
    kfree((void const *)tp->rtl_fw);
    }
  } else {
  }
  {
  tmp___0 = ERR_PTR(-11L);
  tp->rtl_fw = (struct rtl_fw *)tmp___0;
  }
  return;
}
}
static void rtl_apply_firmware(struct rtl8169_private *tp )
{
  struct rtl_fw *rtl_fw ;
  long tmp ;
  {
  {
  rtl_fw = tp->rtl_fw;
  tmp = IS_ERR_OR_NULL((void const *)rtl_fw);
  }
  if (tmp == 0L) {
    {
    rtl_phy_write_fw(tp, rtl_fw);
    }
  } else {
  }
  return;
}
}
static void rtl_apply_firmware_cond(struct rtl8169_private *tp , u8 reg , u16 val )
{
  int tmp ;
  {
  {
  tmp = rtl_readphy(tp, (int )reg);
  }
  if (tmp != (int )val) {
    if ((tp->msg_enable & 8192U) != 0U) {
      {
      netdev_warn((struct net_device const *)tp->dev, "chipset not ready for firmware\n");
      }
    } else {
    }
  } else {
    {
    rtl_apply_firmware(tp);
    }
  }
  return;
}
}
static void rtl8169s_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[51U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 6U;
  phy_reg_init[1].val = 110U;
  phy_reg_init[2].reg = 8U;
  phy_reg_init[2].val = 1800U;
  phy_reg_init[3].reg = 21U;
  phy_reg_init[3].val = 16384U;
  phy_reg_init[4].reg = 24U;
  phy_reg_init[4].val = 26055U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 1U;
  phy_reg_init[6].reg = 3U;
  phy_reg_init[6].val = 161U;
  phy_reg_init[7].reg = 2U;
  phy_reg_init[7].val = 8U;
  phy_reg_init[8].reg = 1U;
  phy_reg_init[8].val = 288U;
  phy_reg_init[9].reg = 0U;
  phy_reg_init[9].val = 4096U;
  phy_reg_init[10].reg = 4U;
  phy_reg_init[10].val = 2048U;
  phy_reg_init[11].reg = 4U;
  phy_reg_init[11].val = 0U;
  phy_reg_init[12].reg = 3U;
  phy_reg_init[12].val = 65345U;
  phy_reg_init[13].reg = 2U;
  phy_reg_init[13].val = 57184U;
  phy_reg_init[14].reg = 1U;
  phy_reg_init[14].val = 320U;
  phy_reg_init[15].reg = 0U;
  phy_reg_init[15].val = 119U;
  phy_reg_init[16].reg = 4U;
  phy_reg_init[16].val = 30720U;
  phy_reg_init[17].reg = 4U;
  phy_reg_init[17].val = 28672U;
  phy_reg_init[18].reg = 3U;
  phy_reg_init[18].val = 32815U;
  phy_reg_init[19].reg = 2U;
  phy_reg_init[19].val = 20226U;
  phy_reg_init[20].reg = 1U;
  phy_reg_init[20].val = 1033U;
  phy_reg_init[21].reg = 0U;
  phy_reg_init[21].val = 61689U;
  phy_reg_init[22].reg = 4U;
  phy_reg_init[22].val = 38912U;
  phy_reg_init[23].reg = 4U;
  phy_reg_init[23].val = 36864U;
  phy_reg_init[24].reg = 3U;
  phy_reg_init[24].val = 57089U;
  phy_reg_init[25].reg = 2U;
  phy_reg_init[25].val = 57120U;
  phy_reg_init[26].reg = 1U;
  phy_reg_init[26].val = 65429U;
  phy_reg_init[27].reg = 0U;
  phy_reg_init[27].val = 47616U;
  phy_reg_init[28].reg = 4U;
  phy_reg_init[28].val = 43008U;
  phy_reg_init[29].reg = 4U;
  phy_reg_init[29].val = 40960U;
  phy_reg_init[30].reg = 3U;
  phy_reg_init[30].val = 65345U;
  phy_reg_init[31].reg = 2U;
  phy_reg_init[31].val = 57120U;
  phy_reg_init[32].reg = 1U;
  phy_reg_init[32].val = 320U;
  phy_reg_init[33].reg = 0U;
  phy_reg_init[33].val = 187U;
  phy_reg_init[34].reg = 4U;
  phy_reg_init[34].val = 47104U;
  phy_reg_init[35].reg = 4U;
  phy_reg_init[35].val = 45056U;
  phy_reg_init[36].reg = 3U;
  phy_reg_init[36].val = 57153U;
  phy_reg_init[37].reg = 2U;
  phy_reg_init[37].val = 56416U;
  phy_reg_init[38].reg = 1U;
  phy_reg_init[38].val = 25408U;
  phy_reg_init[39].reg = 0U;
  phy_reg_init[39].val = 125U;
  phy_reg_init[40].reg = 4U;
  phy_reg_init[40].val = 55296U;
  phy_reg_init[41].reg = 4U;
  phy_reg_init[41].val = 53248U;
  phy_reg_init[42].reg = 3U;
  phy_reg_init[42].val = 57089U;
  phy_reg_init[43].reg = 2U;
  phy_reg_init[43].val = 57120U;
  phy_reg_init[44].reg = 1U;
  phy_reg_init[44].val = 4106U;
  phy_reg_init[45].reg = 0U;
  phy_reg_init[45].val = 41215U;
  phy_reg_init[46].reg = 4U;
  phy_reg_init[46].val = 63488U;
  phy_reg_init[47].reg = 4U;
  phy_reg_init[47].val = 61440U;
  phy_reg_init[48].reg = 31U;
  phy_reg_init[48].val = 0U;
  phy_reg_init[49].reg = 11U;
  phy_reg_init[49].val = 0U;
  phy_reg_init[50].reg = 0U;
  phy_reg_init[50].val = 37376U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 51);
  }
  return;
}
}
static void rtl8169sb_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 2U;
  phy_reg_init[1].reg = 1U;
  phy_reg_init[1].val = 37072U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 3);
  }
  return;
}
}
static void rtl8169scd_hw_phy_config_quirk(struct rtl8169_private *tp )
{
  struct pci_dev *pdev ;
  {
  pdev = tp->pci_dev;
  if (*((unsigned int *)pdev + 16UL) != 3758101592U) {
    return;
  } else {
  }
  {
  rtl_writephy(tp, 31, 1U);
  rtl_writephy(tp, 16, 61467U);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8169scd_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[35U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 4U;
  phy_reg_init[1].val = 0U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 161U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 8U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 288U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 4096U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 2048U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 3U;
  phy_reg_init[8].val = 32815U;
  phy_reg_init[9].reg = 2U;
  phy_reg_init[9].val = 20226U;
  phy_reg_init[10].reg = 1U;
  phy_reg_init[10].val = 1033U;
  phy_reg_init[11].reg = 0U;
  phy_reg_init[11].val = 61593U;
  phy_reg_init[12].reg = 4U;
  phy_reg_init[12].val = 38912U;
  phy_reg_init[13].reg = 4U;
  phy_reg_init[13].val = 40960U;
  phy_reg_init[14].reg = 3U;
  phy_reg_init[14].val = 57089U;
  phy_reg_init[15].reg = 2U;
  phy_reg_init[15].val = 57120U;
  phy_reg_init[16].reg = 1U;
  phy_reg_init[16].val = 65429U;
  phy_reg_init[17].reg = 0U;
  phy_reg_init[17].val = 47616U;
  phy_reg_init[18].reg = 4U;
  phy_reg_init[18].val = 43008U;
  phy_reg_init[19].reg = 4U;
  phy_reg_init[19].val = 61440U;
  phy_reg_init[20].reg = 3U;
  phy_reg_init[20].val = 57089U;
  phy_reg_init[21].reg = 2U;
  phy_reg_init[21].val = 57120U;
  phy_reg_init[22].reg = 1U;
  phy_reg_init[22].val = 4122U;
  phy_reg_init[23].reg = 0U;
  phy_reg_init[23].val = 41215U;
  phy_reg_init[24].reg = 4U;
  phy_reg_init[24].val = 63488U;
  phy_reg_init[25].reg = 4U;
  phy_reg_init[25].val = 0U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 0U;
  phy_reg_init[27].reg = 31U;
  phy_reg_init[27].val = 1U;
  phy_reg_init[28].reg = 16U;
  phy_reg_init[28].val = 62491U;
  phy_reg_init[29].reg = 20U;
  phy_reg_init[29].val = 64340U;
  phy_reg_init[30].reg = 24U;
  phy_reg_init[30].val = 62919U;
  phy_reg_init[31].reg = 31U;
  phy_reg_init[31].val = 0U;
  phy_reg_init[32].reg = 31U;
  phy_reg_init[32].val = 1U;
  phy_reg_init[33].reg = 23U;
  phy_reg_init[33].val = 3264U;
  phy_reg_init[34].reg = 31U;
  phy_reg_init[34].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 35);
  rtl8169scd_hw_phy_config_quirk(tp);
  }
  return;
}
}
static void rtl8169sce_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[42U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 4U;
  phy_reg_init[1].val = 0U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 161U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 8U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 288U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 4096U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 2048U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 3U;
  phy_reg_init[8].val = 32815U;
  phy_reg_init[9].reg = 2U;
  phy_reg_init[9].val = 20226U;
  phy_reg_init[10].reg = 1U;
  phy_reg_init[10].val = 1033U;
  phy_reg_init[11].reg = 0U;
  phy_reg_init[11].val = 61593U;
  phy_reg_init[12].reg = 4U;
  phy_reg_init[12].val = 38912U;
  phy_reg_init[13].reg = 4U;
  phy_reg_init[13].val = 40960U;
  phy_reg_init[14].reg = 3U;
  phy_reg_init[14].val = 57089U;
  phy_reg_init[15].reg = 2U;
  phy_reg_init[15].val = 57120U;
  phy_reg_init[16].reg = 1U;
  phy_reg_init[16].val = 65429U;
  phy_reg_init[17].reg = 0U;
  phy_reg_init[17].val = 47616U;
  phy_reg_init[18].reg = 4U;
  phy_reg_init[18].val = 43008U;
  phy_reg_init[19].reg = 4U;
  phy_reg_init[19].val = 61440U;
  phy_reg_init[20].reg = 3U;
  phy_reg_init[20].val = 57089U;
  phy_reg_init[21].reg = 2U;
  phy_reg_init[21].val = 57120U;
  phy_reg_init[22].reg = 1U;
  phy_reg_init[22].val = 4122U;
  phy_reg_init[23].reg = 0U;
  phy_reg_init[23].val = 41215U;
  phy_reg_init[24].reg = 4U;
  phy_reg_init[24].val = 63488U;
  phy_reg_init[25].reg = 4U;
  phy_reg_init[25].val = 0U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 0U;
  phy_reg_init[27].reg = 31U;
  phy_reg_init[27].val = 1U;
  phy_reg_init[28].reg = 11U;
  phy_reg_init[28].val = 33920U;
  phy_reg_init[29].reg = 31U;
  phy_reg_init[29].val = 0U;
  phy_reg_init[30].reg = 31U;
  phy_reg_init[30].val = 1U;
  phy_reg_init[31].reg = 24U;
  phy_reg_init[31].val = 26567U;
  phy_reg_init[32].reg = 4U;
  phy_reg_init[32].val = 8192U;
  phy_reg_init[33].reg = 3U;
  phy_reg_init[33].val = 47U;
  phy_reg_init[34].reg = 2U;
  phy_reg_init[34].val = 17248U;
  phy_reg_init[35].reg = 1U;
  phy_reg_init[35].val = 265U;
  phy_reg_init[36].reg = 0U;
  phy_reg_init[36].val = 12322U;
  phy_reg_init[37].reg = 4U;
  phy_reg_init[37].val = 10240U;
  phy_reg_init[38].reg = 31U;
  phy_reg_init[38].val = 0U;
  phy_reg_init[39].reg = 31U;
  phy_reg_init[39].val = 1U;
  phy_reg_init[40].reg = 23U;
  phy_reg_init[40].val = 3264U;
  phy_reg_init[41].reg = 31U;
  phy_reg_init[41].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 42);
  }
  return;
}
}
static void rtl8168bb_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[2U] ;
  {
  {
  phy_reg_init[0].reg = 16U;
  phy_reg_init[0].val = 62491U;
  phy_reg_init[1].reg = 31U;
  phy_reg_init[1].val = 0U;
  rtl_writephy(tp, 31, 1U);
  rtl_patchphy(tp, 22, 1);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 2);
  }
  return;
}
}
static void rtl8168bef_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 16U;
  phy_reg_init[1].val = 62491U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 3);
  }
  return;
}
}
static void rtl8168cp_1_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[5U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 0U;
  phy_reg_init[1].reg = 29U;
  phy_reg_init[1].val = 3840U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 2U;
  phy_reg_init[3].reg = 12U;
  phy_reg_init[3].val = 7880U;
  phy_reg_init[4].reg = 31U;
  phy_reg_init[4].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 5);
  }
  return;
}
}
static void rtl8168cp_2_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 29U;
  phy_reg_init[1].val = 15768U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  rtl_writephy(tp, 31, 0U);
  rtl_patchphy(tp, 20, 32);
  rtl_patchphy(tp, 13, 32);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 3);
  }
  return;
}
}
static void rtl8168c_1_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[17U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 2U;
  phy_reg_init[3].reg = 0U;
  phy_reg_init[3].val = 35028U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 33457U;
  phy_reg_init[5].reg = 3U;
  phy_reg_init[5].val = 28674U;
  phy_reg_init[6].reg = 8U;
  phy_reg_init[6].val = 40496U;
  phy_reg_init[7].reg = 9U;
  phy_reg_init[7].val = 496U;
  phy_reg_init[8].reg = 10U;
  phy_reg_init[8].val = 21760U;
  phy_reg_init[9].reg = 12U;
  phy_reg_init[9].val = 200U;
  phy_reg_init[10].reg = 31U;
  phy_reg_init[10].val = 3U;
  phy_reg_init[11].reg = 18U;
  phy_reg_init[11].val = 49302U;
  phy_reg_init[12].reg = 22U;
  phy_reg_init[12].val = 10U;
  phy_reg_init[13].reg = 31U;
  phy_reg_init[13].val = 0U;
  phy_reg_init[14].reg = 31U;
  phy_reg_init[14].val = 0U;
  phy_reg_init[15].reg = 9U;
  phy_reg_init[15].val = 8192U;
  phy_reg_init[16].reg = 9U;
  phy_reg_init[16].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 17);
  rtl_patchphy(tp, 20, 32);
  rtl_patchphy(tp, 13, 32);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168c_2_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[15U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 32815U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 20226U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 1033U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 61593U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 38912U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 29U;
  phy_reg_init[8].val = 15768U;
  phy_reg_init[9].reg = 31U;
  phy_reg_init[9].val = 2U;
  phy_reg_init[10].reg = 12U;
  phy_reg_init[10].val = 32440U;
  phy_reg_init[11].reg = 6U;
  phy_reg_init[11].val = 1889U;
  phy_reg_init[12].reg = 31U;
  phy_reg_init[12].val = 3U;
  phy_reg_init[13].reg = 22U;
  phy_reg_init[13].val = 3850U;
  phy_reg_init[14].reg = 31U;
  phy_reg_init[14].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 15);
  rtl_patchphy(tp, 22, 1);
  rtl_patchphy(tp, 20, 32);
  rtl_patchphy(tp, 13, 32);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168c_3_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[9U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 29U;
  phy_reg_init[2].val = 15768U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 2U;
  phy_reg_init[4].reg = 12U;
  phy_reg_init[4].val = 32440U;
  phy_reg_init[5].reg = 6U;
  phy_reg_init[5].val = 21601U;
  phy_reg_init[6].reg = 31U;
  phy_reg_init[6].val = 3U;
  phy_reg_init[7].reg = 22U;
  phy_reg_init[7].val = 3850U;
  phy_reg_init[8].reg = 31U;
  phy_reg_init[8].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 9);
  rtl_patchphy(tp, 22, 1);
  rtl_patchphy(tp, 20, 32);
  rtl_patchphy(tp, 13, 32);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168c_4_hw_phy_config(struct rtl8169_private *tp )
{
  {
  {
  rtl8168c_3_hw_phy_config(tp);
  }
  return;
}
}
static void rtl8168d_1_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init_0[26U] ;
  struct phy_reg phy_reg_init[6U] ;
  int val ;
  u32 set[8U] ;
  int i ;
  struct phy_reg phy_reg_init___0[5U] ;
  u8 tmp ;
  {
  {
  phy_reg_init_0[0].reg = 31U;
  phy_reg_init_0[0].val = 1U;
  phy_reg_init_0[1].reg = 6U;
  phy_reg_init_0[1].val = 16484U;
  phy_reg_init_0[2].reg = 7U;
  phy_reg_init_0[2].val = 10339U;
  phy_reg_init_0[3].reg = 8U;
  phy_reg_init_0[3].val = 1436U;
  phy_reg_init_0[4].reg = 9U;
  phy_reg_init_0[4].val = 9908U;
  phy_reg_init_0[5].reg = 10U;
  phy_reg_init_0[5].val = 27161U;
  phy_reg_init_0[6].reg = 11U;
  phy_reg_init_0[6].val = 56520U;
  phy_reg_init_0[7].reg = 16U;
  phy_reg_init_0[7].val = 61549U;
  phy_reg_init_0[8].reg = 20U;
  phy_reg_init_0[8].val = 32616U;
  phy_reg_init_0[9].reg = 24U;
  phy_reg_init_0[9].val = 32729U;
  phy_reg_init_0[10].reg = 28U;
  phy_reg_init_0[10].val = 61695U;
  phy_reg_init_0[11].reg = 29U;
  phy_reg_init_0[11].val = 15772U;
  phy_reg_init_0[12].reg = 31U;
  phy_reg_init_0[12].val = 3U;
  phy_reg_init_0[13].reg = 18U;
  phy_reg_init_0[13].val = 62623U;
  phy_reg_init_0[14].reg = 19U;
  phy_reg_init_0[14].val = 1803U;
  phy_reg_init_0[15].reg = 26U;
  phy_reg_init_0[15].val = 1453U;
  phy_reg_init_0[16].reg = 20U;
  phy_reg_init_0[16].val = 38080U;
  phy_reg_init_0[17].reg = 31U;
  phy_reg_init_0[17].val = 2U;
  phy_reg_init_0[18].reg = 6U;
  phy_reg_init_0[18].val = 21857U;
  phy_reg_init_0[19].reg = 31U;
  phy_reg_init_0[19].val = 5U;
  phy_reg_init_0[20].reg = 5U;
  phy_reg_init_0[20].val = 33586U;
  phy_reg_init_0[21].reg = 6U;
  phy_reg_init_0[21].val = 21857U;
  phy_reg_init_0[22].reg = 31U;
  phy_reg_init_0[22].val = 1U;
  phy_reg_init_0[23].reg = 23U;
  phy_reg_init_0[23].val = 3264U;
  phy_reg_init_0[24].reg = 31U;
  phy_reg_init_0[24].val = 0U;
  phy_reg_init_0[25].reg = 13U;
  phy_reg_init_0[25].val = 63616U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init_0), 26);
  rtl_writephy(tp, 31, 2U);
  rtl_w1w0_phy(tp, 11, 16, 239);
  rtl_w1w0_phy(tp, 12, 41472, 23808);
  tmp = rtl8168d_efuse_read(tp, 1);
  }
  if ((unsigned int )tmp == 177U) {
    {
    phy_reg_init[0].reg = 31U;
    phy_reg_init[0].val = 2U;
    phy_reg_init[1].reg = 5U;
    phy_reg_init[1].val = 26266U;
    phy_reg_init[2].reg = 31U;
    phy_reg_init[2].val = 5U;
    phy_reg_init[3].reg = 5U;
    phy_reg_init[3].val = 33584U;
    phy_reg_init[4].reg = 6U;
    phy_reg_init[4].val = 26266U;
    phy_reg_init[5].reg = 31U;
    phy_reg_init[5].val = 2U;
    rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 6);
    val = rtl_readphy(tp, 13);
    }
    if ((val & 255) != 108) {
      {
      set[0] = 101U;
      set[1] = 102U;
      set[2] = 103U;
      set[3] = 104U;
      set[4] = 105U;
      set[5] = 106U;
      set[6] = 107U;
      set[7] = 108U;
      rtl_writephy(tp, 31, 2U);
      val = val & 65280;
      i = 0;
      }
      goto ldv_49019;
      ldv_49018:
      {
      rtl_writephy(tp, 13, (unsigned int )val | set[i]);
      i = i + 1;
      }
      ldv_49019: ;
      if ((unsigned int )i <= 7U) {
        goto ldv_49018;
      } else {
      }
    } else {
    }
  } else {
    {
    phy_reg_init___0[0].reg = 31U;
    phy_reg_init___0[0].val = 2U;
    phy_reg_init___0[1].reg = 5U;
    phy_reg_init___0[1].val = 26210U;
    phy_reg_init___0[2].reg = 31U;
    phy_reg_init___0[2].val = 5U;
    phy_reg_init___0[3].reg = 5U;
    phy_reg_init___0[3].val = 33584U;
    phy_reg_init___0[4].reg = 6U;
    phy_reg_init___0[4].val = 26210U;
    rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init___0), 5);
    }
  }
  {
  rtl_writephy(tp, 31, 2U);
  rtl_patchphy(tp, 13, 768);
  rtl_patchphy(tp, 15, 16);
  rtl_writephy(tp, 31, 2U);
  rtl_w1w0_phy(tp, 2, 256, 1536);
  rtl_w1w0_phy(tp, 3, 0, 57344);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 27U);
  rtl_apply_firmware_cond(tp, 6, 48896);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168d_2_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init_0[26U] ;
  struct phy_reg phy_reg_init[6U] ;
  int val ;
  u32 set[8U] ;
  int i ;
  struct phy_reg phy_reg_init___0[5U] ;
  u8 tmp ;
  {
  {
  phy_reg_init_0[0].reg = 31U;
  phy_reg_init_0[0].val = 1U;
  phy_reg_init_0[1].reg = 6U;
  phy_reg_init_0[1].val = 16484U;
  phy_reg_init_0[2].reg = 7U;
  phy_reg_init_0[2].val = 10339U;
  phy_reg_init_0[3].reg = 8U;
  phy_reg_init_0[3].val = 1436U;
  phy_reg_init_0[4].reg = 9U;
  phy_reg_init_0[4].val = 9908U;
  phy_reg_init_0[5].reg = 10U;
  phy_reg_init_0[5].val = 27161U;
  phy_reg_init_0[6].reg = 11U;
  phy_reg_init_0[6].val = 56520U;
  phy_reg_init_0[7].reg = 16U;
  phy_reg_init_0[7].val = 61549U;
  phy_reg_init_0[8].reg = 20U;
  phy_reg_init_0[8].val = 32616U;
  phy_reg_init_0[9].reg = 24U;
  phy_reg_init_0[9].val = 32729U;
  phy_reg_init_0[10].reg = 28U;
  phy_reg_init_0[10].val = 61695U;
  phy_reg_init_0[11].reg = 29U;
  phy_reg_init_0[11].val = 15772U;
  phy_reg_init_0[12].reg = 31U;
  phy_reg_init_0[12].val = 3U;
  phy_reg_init_0[13].reg = 18U;
  phy_reg_init_0[13].val = 62623U;
  phy_reg_init_0[14].reg = 19U;
  phy_reg_init_0[14].val = 1803U;
  phy_reg_init_0[15].reg = 26U;
  phy_reg_init_0[15].val = 1453U;
  phy_reg_init_0[16].reg = 20U;
  phy_reg_init_0[16].val = 38080U;
  phy_reg_init_0[17].reg = 31U;
  phy_reg_init_0[17].val = 2U;
  phy_reg_init_0[18].reg = 6U;
  phy_reg_init_0[18].val = 21857U;
  phy_reg_init_0[19].reg = 31U;
  phy_reg_init_0[19].val = 5U;
  phy_reg_init_0[20].reg = 5U;
  phy_reg_init_0[20].val = 33586U;
  phy_reg_init_0[21].reg = 6U;
  phy_reg_init_0[21].val = 21857U;
  phy_reg_init_0[22].reg = 31U;
  phy_reg_init_0[22].val = 1U;
  phy_reg_init_0[23].reg = 23U;
  phy_reg_init_0[23].val = 3264U;
  phy_reg_init_0[24].reg = 31U;
  phy_reg_init_0[24].val = 0U;
  phy_reg_init_0[25].reg = 13U;
  phy_reg_init_0[25].val = 63616U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init_0), 26);
  tmp = rtl8168d_efuse_read(tp, 1);
  }
  if ((unsigned int )tmp == 177U) {
    {
    phy_reg_init[0].reg = 31U;
    phy_reg_init[0].val = 2U;
    phy_reg_init[1].reg = 5U;
    phy_reg_init[1].val = 26266U;
    phy_reg_init[2].reg = 31U;
    phy_reg_init[2].val = 5U;
    phy_reg_init[3].reg = 5U;
    phy_reg_init[3].val = 33584U;
    phy_reg_init[4].reg = 6U;
    phy_reg_init[4].val = 26266U;
    phy_reg_init[5].reg = 31U;
    phy_reg_init[5].val = 2U;
    rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 6);
    val = rtl_readphy(tp, 13);
    }
    if ((val & 255) != 108) {
      {
      set[0] = 101U;
      set[1] = 102U;
      set[2] = 103U;
      set[3] = 104U;
      set[4] = 105U;
      set[5] = 106U;
      set[6] = 107U;
      set[7] = 108U;
      rtl_writephy(tp, 31, 2U);
      val = val & 65280;
      i = 0;
      }
      goto ldv_49039;
      ldv_49038:
      {
      rtl_writephy(tp, 13, (unsigned int )val | set[i]);
      i = i + 1;
      }
      ldv_49039: ;
      if ((unsigned int )i <= 7U) {
        goto ldv_49038;
      } else {
      }
    } else {
    }
  } else {
    {
    phy_reg_init___0[0].reg = 31U;
    phy_reg_init___0[0].val = 2U;
    phy_reg_init___0[1].reg = 5U;
    phy_reg_init___0[1].val = 9794U;
    phy_reg_init___0[2].reg = 31U;
    phy_reg_init___0[2].val = 5U;
    phy_reg_init___0[3].reg = 5U;
    phy_reg_init___0[3].val = 33584U;
    phy_reg_init___0[4].reg = 6U;
    phy_reg_init___0[4].val = 9794U;
    rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init___0), 5);
    }
  }
  {
  rtl_writephy(tp, 31, 2U);
  rtl_w1w0_phy(tp, 2, 256, 1536);
  rtl_w1w0_phy(tp, 3, 0, 57344);
  rtl_writephy(tp, 31, 2U);
  rtl_patchphy(tp, 15, 23);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 27U);
  rtl_apply_firmware_cond(tp, 6, 45824);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168d_3_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[48U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 2U;
  phy_reg_init[1].reg = 16U;
  phy_reg_init[1].val = 8U;
  phy_reg_init[2].reg = 13U;
  phy_reg_init[2].val = 108U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  phy_reg_init[4].reg = 13U;
  phy_reg_init[4].val = 63616U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 1U;
  phy_reg_init[6].reg = 23U;
  phy_reg_init[6].val = 3264U;
  phy_reg_init[7].reg = 31U;
  phy_reg_init[7].val = 1U;
  phy_reg_init[8].reg = 11U;
  phy_reg_init[8].val = 42200U;
  phy_reg_init[9].reg = 9U;
  phy_reg_init[9].val = 10268U;
  phy_reg_init[10].reg = 7U;
  phy_reg_init[10].val = 10371U;
  phy_reg_init[11].reg = 10U;
  phy_reg_init[11].val = 27445U;
  phy_reg_init[12].reg = 29U;
  phy_reg_init[12].val = 15780U;
  phy_reg_init[13].reg = 28U;
  phy_reg_init[13].val = 61437U;
  phy_reg_init[14].reg = 20U;
  phy_reg_init[14].val = 32594U;
  phy_reg_init[15].reg = 24U;
  phy_reg_init[15].val = 32710U;
  phy_reg_init[16].reg = 8U;
  phy_reg_init[16].val = 1537U;
  phy_reg_init[17].reg = 6U;
  phy_reg_init[17].val = 16483U;
  phy_reg_init[18].reg = 16U;
  phy_reg_init[18].val = 61556U;
  phy_reg_init[19].reg = 31U;
  phy_reg_init[19].val = 3U;
  phy_reg_init[20].reg = 19U;
  phy_reg_init[20].val = 1929U;
  phy_reg_init[21].reg = 18U;
  phy_reg_init[21].val = 62653U;
  phy_reg_init[22].reg = 26U;
  phy_reg_init[22].val = 1277U;
  phy_reg_init[23].reg = 20U;
  phy_reg_init[23].val = 33968U;
  phy_reg_init[24].reg = 31U;
  phy_reg_init[24].val = 0U;
  phy_reg_init[25].reg = 0U;
  phy_reg_init[25].val = 37376U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 5U;
  phy_reg_init[27].reg = 1U;
  phy_reg_init[27].val = 832U;
  phy_reg_init[28].reg = 31U;
  phy_reg_init[28].val = 1U;
  phy_reg_init[29].reg = 4U;
  phy_reg_init[29].val = 16384U;
  phy_reg_init[30].reg = 3U;
  phy_reg_init[30].val = 7457U;
  phy_reg_init[31].reg = 2U;
  phy_reg_init[31].val = 3122U;
  phy_reg_init[32].reg = 1U;
  phy_reg_init[32].val = 512U;
  phy_reg_init[33].reg = 0U;
  phy_reg_init[33].val = 21844U;
  phy_reg_init[34].reg = 4U;
  phy_reg_init[34].val = 18432U;
  phy_reg_init[35].reg = 4U;
  phy_reg_init[35].val = 16384U;
  phy_reg_init[36].reg = 4U;
  phy_reg_init[36].val = 61440U;
  phy_reg_init[37].reg = 3U;
  phy_reg_init[37].val = 57089U;
  phy_reg_init[38].reg = 2U;
  phy_reg_init[38].val = 57120U;
  phy_reg_init[39].reg = 1U;
  phy_reg_init[39].val = 4122U;
  phy_reg_init[40].reg = 0U;
  phy_reg_init[40].val = 41215U;
  phy_reg_init[41].reg = 4U;
  phy_reg_init[41].val = 63488U;
  phy_reg_init[42].reg = 4U;
  phy_reg_init[42].val = 61440U;
  phy_reg_init[43].reg = 31U;
  phy_reg_init[43].val = 0U;
  phy_reg_init[44].reg = 31U;
  phy_reg_init[44].val = 7U;
  phy_reg_init[45].reg = 30U;
  phy_reg_init[45].val = 35U;
  phy_reg_init[46].reg = 22U;
  phy_reg_init[46].val = 0U;
  phy_reg_init[47].reg = 31U;
  phy_reg_init[47].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 48);
  }
  return;
}
}
static void rtl8168d_4_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[6U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 23U;
  phy_reg_init[1].val = 3264U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 7U;
  phy_reg_init[3].reg = 30U;
  phy_reg_init[3].val = 45U;
  phy_reg_init[4].reg = 24U;
  phy_reg_init[4].val = 64U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 0U;
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 6);
  rtl_patchphy(tp, 13, 32);
  }
  return;
}
}
static void rtl8168e_1_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[19U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 5U;
  phy_reg_init[1].reg = 5U;
  phy_reg_init[1].val = 35712U;
  phy_reg_init[2].reg = 6U;
  phy_reg_init[2].val = 51350U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  phy_reg_init[4].reg = 31U;
  phy_reg_init[4].val = 1U;
  phy_reg_init[5].reg = 11U;
  phy_reg_init[5].val = 27680U;
  phy_reg_init[6].reg = 7U;
  phy_reg_init[6].val = 10354U;
  phy_reg_init[7].reg = 28U;
  phy_reg_init[7].val = 61439U;
  phy_reg_init[8].reg = 31U;
  phy_reg_init[8].val = 3U;
  phy_reg_init[9].reg = 20U;
  phy_reg_init[9].val = 25632U;
  phy_reg_init[10].reg = 31U;
  phy_reg_init[10].val = 0U;
  phy_reg_init[11].reg = 31U;
  phy_reg_init[11].val = 7U;
  phy_reg_init[12].reg = 30U;
  phy_reg_init[12].val = 47U;
  phy_reg_init[13].reg = 21U;
  phy_reg_init[13].val = 6425U;
  phy_reg_init[14].reg = 31U;
  phy_reg_init[14].val = 0U;
  phy_reg_init[15].reg = 31U;
  phy_reg_init[15].val = 7U;
  phy_reg_init[16].reg = 30U;
  phy_reg_init[16].val = 172U;
  phy_reg_init[17].reg = 24U;
  phy_reg_init[17].val = 6U;
  phy_reg_init[18].reg = 31U;
  phy_reg_init[18].val = 0U;
  rtl_apply_firmware(tp);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 19);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 35U);
  rtl_w1w0_phy(tp, 23, 6, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 2U);
  rtl_w1w0_phy(tp, 8, 32768, 32512);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 45U);
  rtl_w1w0_phy(tp, 24, 80, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_w1w0_phy(tp, 20, 32768, 0);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35718U);
  rtl_w1w0_phy(tp, 6, 1, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 0, 8192);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 32U);
  rtl_w1w0_phy(tp, 21, 0, 4352);
  rtl_writephy(tp, 31, 6U);
  rtl_writephy(tp, 0, 23040U);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 13, 7U);
  rtl_writephy(tp, 14, 60U);
  rtl_writephy(tp, 13, 16391U);
  rtl_writephy(tp, 14, 0U);
  rtl_writephy(tp, 13, 0U);
  }
  return;
}
}
static void rtl_rar_exgmac_set(struct rtl8169_private *tp , u8 *addr )
{
  u16 w[3U] ;
  struct exgmac_reg e[4U] ;
  {
  {
  w[0] = (unsigned short )((int )((short )*addr) | (int )((short )((int )*(addr + 1UL) << 8)));
  w[1] = (unsigned short )((int )((short )*(addr + 2UL)) | (int )((short )((int )*(addr + 3UL) << 8)));
  w[2] = (unsigned short )((int )((short )*(addr + 4UL)) | (int )((short )((int )*(addr + 5UL) << 8)));
  e[0].addr = 224U;
  e[0].mask = 61440U;
  e[0].val = (unsigned int )((int )w[0] | ((int )w[1] << 16));
  e[1].addr = 228U;
  e[1].mask = 61440U;
  e[1].val = (unsigned int )w[2];
  e[2].addr = 240U;
  e[2].mask = 61440U;
  e[2].val = (unsigned int )((int )w[0] << 16);
  e[3].addr = 244U;
  e[3].mask = 61440U;
  e[3].val = (unsigned int )((int )w[1] | ((int )w[2] << 16));
  rtl_write_exgmac_batch(tp, (struct exgmac_reg const *)(& e), 4);
  }
  return;
}
}
static void rtl8168e_2_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[19U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 4U;
  phy_reg_init[1].reg = 31U;
  phy_reg_init[1].val = 7U;
  phy_reg_init[2].reg = 30U;
  phy_reg_init[2].val = 172U;
  phy_reg_init[3].reg = 24U;
  phy_reg_init[3].val = 6U;
  phy_reg_init[4].reg = 31U;
  phy_reg_init[4].val = 2U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 0U;
  phy_reg_init[6].reg = 31U;
  phy_reg_init[6].val = 0U;
  phy_reg_init[7].reg = 31U;
  phy_reg_init[7].val = 3U;
  phy_reg_init[8].reg = 9U;
  phy_reg_init[8].val = 41487U;
  phy_reg_init[9].reg = 31U;
  phy_reg_init[9].val = 0U;
  phy_reg_init[10].reg = 31U;
  phy_reg_init[10].val = 0U;
  phy_reg_init[11].reg = 31U;
  phy_reg_init[11].val = 5U;
  phy_reg_init[12].reg = 5U;
  phy_reg_init[12].val = 35675U;
  phy_reg_init[13].reg = 6U;
  phy_reg_init[13].val = 37410U;
  phy_reg_init[14].reg = 5U;
  phy_reg_init[14].val = 35693U;
  phy_reg_init[15].reg = 6U;
  phy_reg_init[15].val = 32768U;
  phy_reg_init[16].reg = 5U;
  phy_reg_init[16].val = 35702U;
  phy_reg_init[17].reg = 6U;
  phy_reg_init[17].val = 32768U;
  phy_reg_init[18].reg = 31U;
  phy_reg_init[18].val = 0U;
  rtl_apply_firmware(tp);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 19);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35712U);
  rtl_w1w0_phy(tp, 23, 6, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 4U);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 45U);
  rtl_w1w0_phy(tp, 24, 16, 0);
  rtl_writephy(tp, 31, 2U);
  rtl_writephy(tp, 31, 0U);
  rtl_w1w0_phy(tp, 20, 32768, 0);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35718U);
  rtl_w1w0_phy(tp, 6, 1, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 16384, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_w1w0_eri(tp, 432, 61440U, 0U, 3U, 0);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 0, 8192);
  rtl_writephy(tp, 31, 4U);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 32U);
  rtl_w1w0_phy(tp, 21, 0, 256);
  rtl_writephy(tp, 31, 2U);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 13, 7U);
  rtl_writephy(tp, 14, 60U);
  rtl_writephy(tp, 13, 16391U);
  rtl_writephy(tp, 14, 0U);
  rtl_writephy(tp, 13, 0U);
  rtl_writephy(tp, 31, 3U);
  rtl_w1w0_phy(tp, 25, 0, 1);
  rtl_w1w0_phy(tp, 16, 0, 1024);
  rtl_writephy(tp, 31, 0U);
  rtl_rar_exgmac_set(tp, (tp->dev)->dev_addr);
  }
  return;
}
}
static void rtl8168f_hw_phy_config(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35712U);
  rtl_w1w0_phy(tp, 6, 6, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 45U);
  rtl_w1w0_phy(tp, 24, 16, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_w1w0_phy(tp, 20, 32768, 0);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35718U);
  rtl_w1w0_phy(tp, 6, 1, 0);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168f_1_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[25U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 3U;
  phy_reg_init[1].reg = 9U;
  phy_reg_init[1].val = 41487U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 5U;
  phy_reg_init[4].reg = 5U;
  phy_reg_init[4].val = 35669U;
  phy_reg_init[5].reg = 6U;
  phy_reg_init[5].val = 0U;
  phy_reg_init[6].reg = 5U;
  phy_reg_init[6].val = 35678U;
  phy_reg_init[7].reg = 6U;
  phy_reg_init[7].val = 0U;
  phy_reg_init[8].reg = 5U;
  phy_reg_init[8].val = 35687U;
  phy_reg_init[9].reg = 6U;
  phy_reg_init[9].val = 0U;
  phy_reg_init[10].reg = 5U;
  phy_reg_init[10].val = 35696U;
  phy_reg_init[11].reg = 6U;
  phy_reg_init[11].val = 0U;
  phy_reg_init[12].reg = 31U;
  phy_reg_init[12].val = 0U;
  phy_reg_init[13].reg = 31U;
  phy_reg_init[13].val = 7U;
  phy_reg_init[14].reg = 30U;
  phy_reg_init[14].val = 120U;
  phy_reg_init[15].reg = 23U;
  phy_reg_init[15].val = 0U;
  phy_reg_init[16].reg = 25U;
  phy_reg_init[16].val = 251U;
  phy_reg_init[17].reg = 31U;
  phy_reg_init[17].val = 0U;
  phy_reg_init[18].reg = 31U;
  phy_reg_init[18].val = 5U;
  phy_reg_init[19].reg = 5U;
  phy_reg_init[19].val = 35705U;
  phy_reg_init[20].reg = 6U;
  phy_reg_init[20].val = 43520U;
  phy_reg_init[21].reg = 31U;
  phy_reg_init[21].val = 0U;
  phy_reg_init[22].reg = 31U;
  phy_reg_init[22].val = 3U;
  phy_reg_init[23].reg = 1U;
  phy_reg_init[23].val = 12938U;
  phy_reg_init[24].reg = 31U;
  phy_reg_init[24].val = 0U;
  rtl_apply_firmware(tp);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 25);
  rtl8168f_hw_phy_config(tp);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 16384, 0);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168f_2_hw_phy_config(struct rtl8169_private *tp )
{
  {
  {
  rtl_apply_firmware(tp);
  rtl8168f_hw_phy_config(tp);
  }
  return;
}
}
static void rtl8411_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[25U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 3U;
  phy_reg_init[1].reg = 9U;
  phy_reg_init[1].val = 41487U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 5U;
  phy_reg_init[4].reg = 5U;
  phy_reg_init[4].val = 35669U;
  phy_reg_init[5].reg = 6U;
  phy_reg_init[5].val = 0U;
  phy_reg_init[6].reg = 5U;
  phy_reg_init[6].val = 35678U;
  phy_reg_init[7].reg = 6U;
  phy_reg_init[7].val = 0U;
  phy_reg_init[8].reg = 5U;
  phy_reg_init[8].val = 35687U;
  phy_reg_init[9].reg = 6U;
  phy_reg_init[9].val = 0U;
  phy_reg_init[10].reg = 5U;
  phy_reg_init[10].val = 35696U;
  phy_reg_init[11].reg = 6U;
  phy_reg_init[11].val = 0U;
  phy_reg_init[12].reg = 31U;
  phy_reg_init[12].val = 0U;
  phy_reg_init[13].reg = 31U;
  phy_reg_init[13].val = 7U;
  phy_reg_init[14].reg = 30U;
  phy_reg_init[14].val = 120U;
  phy_reg_init[15].reg = 23U;
  phy_reg_init[15].val = 0U;
  phy_reg_init[16].reg = 25U;
  phy_reg_init[16].val = 170U;
  phy_reg_init[17].reg = 31U;
  phy_reg_init[17].val = 0U;
  phy_reg_init[18].reg = 31U;
  phy_reg_init[18].val = 5U;
  phy_reg_init[19].reg = 5U;
  phy_reg_init[19].val = 35705U;
  phy_reg_init[20].reg = 6U;
  phy_reg_init[20].val = 43520U;
  phy_reg_init[21].reg = 31U;
  phy_reg_init[21].val = 0U;
  phy_reg_init[22].reg = 31U;
  phy_reg_init[22].val = 3U;
  phy_reg_init[23].reg = 1U;
  phy_reg_init[23].val = 12938U;
  phy_reg_init[24].reg = 31U;
  phy_reg_init[24].val = 0U;
  rtl_apply_firmware(tp);
  rtl8168f_hw_phy_config(tp);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 16384, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 25);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35668U);
  rtl_w1w0_phy(tp, 6, 0, 2048);
  rtl_writephy(tp, 5, 35677U);
  rtl_w1w0_phy(tp, 6, 0, 2048);
  rtl_writephy(tp, 5, 35452U);
  rtl_w1w0_phy(tp, 6, 0, 256);
  rtl_writephy(tp, 5, 35455U);
  rtl_w1w0_phy(tp, 6, 256, 0);
  rtl_writephy(tp, 5, 35458U);
  rtl_w1w0_phy(tp, 6, 0, 256);
  rtl_writephy(tp, 5, 35461U);
  rtl_w1w0_phy(tp, 6, 0, 256);
  rtl_writephy(tp, 5, 35464U);
  rtl_w1w0_phy(tp, 6, 0, 256);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 32768, 0);
  rtl_writephy(tp, 31, 0U);
  rtl_w1w0_eri(tp, 432, 4096U, 0U, 3U, 0);
  rtl_writephy(tp, 31, 5U);
  rtl_writephy(tp, 5, 35717U);
  rtl_w1w0_phy(tp, 6, 0, 8192);
  rtl_writephy(tp, 31, 4U);
  rtl_writephy(tp, 31, 7U);
  rtl_writephy(tp, 30, 32U);
  rtl_w1w0_phy(tp, 21, 0, 256);
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 13, 7U);
  rtl_writephy(tp, 14, 60U);
  rtl_writephy(tp, 13, 16391U);
  rtl_writephy(tp, 14, 0U);
  rtl_writephy(tp, 13, 0U);
  rtl_writephy(tp, 31, 3U);
  rtl_w1w0_phy(tp, 25, 0, 1);
  rtl_w1w0_phy(tp, 16, 0, 1024);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168g_1_hw_phy_config(struct rtl8169_private *tp )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  rtl_apply_firmware(tp);
  rtl_writephy(tp, 31, 2630U);
  tmp = rtl_readphy(tp, 16);
  }
  if ((tmp & 256) != 0) {
    {
    rtl_writephy(tp, 31, 3020U);
    rtl_w1w0_phy(tp, 18, 0, 32768);
    }
  } else {
    {
    rtl_writephy(tp, 31, 3020U);
    rtl_w1w0_phy(tp, 18, 32768, 0);
    }
  }
  {
  rtl_writephy(tp, 31, 2630U);
  tmp___0 = rtl_readphy(tp, 19);
  }
  if ((tmp___0 & 256) != 0) {
    {
    rtl_writephy(tp, 31, 3137U);
    rtl_w1w0_phy(tp, 21, 2, 0);
    }
  } else {
    {
    rtl_writephy(tp, 31, 3137U);
    rtl_w1w0_phy(tp, 21, 0, 2);
    }
  }
  {
  rtl_writephy(tp, 31, 2628U);
  rtl_w1w0_phy(tp, 17, 12, 0);
  rtl_writephy(tp, 31, 3020U);
  rtl_w1w0_phy(tp, 20, 256, 0);
  rtl_writephy(tp, 31, 2628U);
  rtl_w1w0_phy(tp, 17, 192, 0);
  rtl_writephy(tp, 31, 2627U);
  rtl_writephy(tp, 19, 32900U);
  rtl_w1w0_phy(tp, 20, 0, 24576);
  rtl_w1w0_phy(tp, 16, 4099, 0);
  rtl_writephy(tp, 31, 2635U);
  rtl_w1w0_phy(tp, 17, 4, 0);
  rtl_writephy(tp, 31, 2627U);
  rtl_writephy(tp, 19, 32786U);
  rtl_w1w0_phy(tp, 20, 32768, 0);
  rtl_writephy(tp, 31, 3138U);
  rtl_w1w0_phy(tp, 17, 16384, 8192);
  rtl_writephy(tp, 31, 3021U);
  rtl_writephy(tp, 20, 20581U);
  rtl_writephy(tp, 20, 53349U);
  rtl_writephy(tp, 31, 3016U);
  rtl_writephy(tp, 17, 22101U);
  rtl_writephy(tp, 31, 3021U);
  rtl_writephy(tp, 20, 4197U);
  rtl_writephy(tp, 20, 36965U);
  rtl_writephy(tp, 20, 4197U);
  rtl_writephy(tp, 31, 2627U);
  tmp___1 = rtl_readphy(tp, 16);
  }
  if ((tmp___1 & 4) != 0) {
    {
    rtl_w1w0_phy(tp, 16, 0, 4);
    }
  } else {
  }
  {
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8168g_2_hw_phy_config(struct rtl8169_private *tp )
{
  {
  {
  rtl_apply_firmware(tp);
  }
  return;
}
}
static void rtl8102e_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[4U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 3U;
  phy_reg_init[1].reg = 8U;
  phy_reg_init[1].val = 17437U;
  phy_reg_init[2].reg = 1U;
  phy_reg_init[2].val = 37120U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  rtl_writephy(tp, 31, 0U);
  rtl_patchphy(tp, 17, 4096);
  rtl_patchphy(tp, 25, 8192);
  rtl_patchphy(tp, 16, 32768);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 4);
  }
  return;
}
}
static void rtl8105e_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[9U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 5U;
  phy_reg_init[1].reg = 26U;
  phy_reg_init[1].val = 0U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 4U;
  phy_reg_init[4].reg = 28U;
  phy_reg_init[4].val = 0U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 0U;
  phy_reg_init[6].reg = 31U;
  phy_reg_init[6].val = 1U;
  phy_reg_init[7].reg = 21U;
  phy_reg_init[7].val = 30465U;
  phy_reg_init[8].reg = 31U;
  phy_reg_init[8].val = 0U;
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 24, 784U);
  msleep(100U);
  rtl_apply_firmware(tp);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 9);
  }
  return;
}
}
static void rtl8402_hw_phy_config(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 24, 784U);
  msleep(20U);
  rtl_apply_firmware(tp);
  rtl_eri_write(tp, 432, 12288U, 0U, 0);
  rtl_writephy(tp, 31, 4U);
  rtl_writephy(tp, 16, 16415U);
  rtl_writephy(tp, 25, 28720U);
  rtl_writephy(tp, 31, 0U);
  }
  return;
}
}
static void rtl8106e_hw_phy_config(struct rtl8169_private *tp )
{
  struct phy_reg phy_reg_init[4U] ;
  {
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 4U;
  phy_reg_init[1].reg = 16U;
  phy_reg_init[1].val = 49279U;
  phy_reg_init[2].reg = 25U;
  phy_reg_init[2].val = 28720U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 24, 784U);
  msleep(100U);
  rtl_apply_firmware(tp);
  rtl_eri_write(tp, 432, 12288U, 0U, 0);
  rtl_writephy_batch(tp, (struct phy_reg const *)(& phy_reg_init), 4);
  rtl_eri_write(tp, 464, 12288U, 0U, 0);
  }
  return;
}
}
static void rtl_hw_phy_config(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl8169_print_mac_version(tp);
  }
  {
  if ((int )tp->mac_version == 0) {
    goto case_0;
  } else {
  }
  if ((int )tp->mac_version == 1) {
    goto case_1;
  } else {
  }
  if ((int )tp->mac_version == 2) {
    goto case_2;
  } else {
  }
  if ((int )tp->mac_version == 3) {
    goto case_3;
  } else {
  }
  if ((int )tp->mac_version == 4) {
    goto case_4;
  } else {
  }
  if ((int )tp->mac_version == 5) {
    goto case_5;
  } else {
  }
  if ((int )tp->mac_version == 6) {
    goto case_6;
  } else {
  }
  if ((int )tp->mac_version == 7) {
    goto case_7;
  } else {
  }
  if ((int )tp->mac_version == 8) {
    goto case_8;
  } else {
  }
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 28) {
    goto case_28;
  } else {
  }
  if ((int )tp->mac_version == 29) {
    goto case_29;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 34) {
    goto case_34;
  } else {
  }
  if ((int )tp->mac_version == 35) {
    goto case_35;
  } else {
  }
  if ((int )tp->mac_version == 36) {
    goto case_36;
  } else {
  }
  if ((int )tp->mac_version == 37) {
    goto case_37;
  } else {
  }
  if ((int )tp->mac_version == 38) {
    goto case_38;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_49126;
  case_1: ;
  case_2:
  {
  rtl8169s_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_3:
  {
  rtl8169sb_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_4:
  {
  rtl8169scd_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_5:
  {
  rtl8169sce_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_6: ;
  case_7: ;
  case_8:
  {
  rtl8102e_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_10:
  {
  rtl8168bb_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_11:
  {
  rtl8168bef_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_16:
  {
  rtl8168bef_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_17:
  {
  rtl8168cp_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_18:
  {
  rtl8168c_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_19:
  {
  rtl8168c_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_20:
  {
  rtl8168c_3_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_21:
  {
  rtl8168c_4_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_22: ;
  case_23:
  {
  rtl8168cp_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_24:
  {
  rtl8168d_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_25:
  {
  rtl8168d_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_26:
  {
  rtl8168d_3_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_27:
  {
  rtl8168d_4_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_28: ;
  case_29:
  {
  rtl8105e_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_30: ;
  goto ldv_49126;
  case_31: ;
  case_32:
  {
  rtl8168e_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_33:
  {
  rtl8168e_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_34:
  {
  rtl8168f_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_35:
  {
  rtl8168f_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_36:
  {
  rtl8402_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_37:
  {
  rtl8411_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_38:
  {
  rtl8106e_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_39:
  {
  rtl8168g_1_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_41: ;
  case_42: ;
  case_43:
  {
  rtl8168g_2_hw_phy_config(tp);
  }
  goto ldv_49126;
  case_40: ;
  switch_default: ;
  goto ldv_49126;
  switch_break: ;
  }
  ldv_49126: ;
  return;
}
}
static void rtl_phy_work(struct rtl8169_private *tp )
{
  struct timer_list *timer ;
  void *ioaddr ;
  unsigned long timeout ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  timer = & tp->timer;
  ioaddr = tp->mmio_addr;
  timeout = 2500UL;
  tmp = (*(tp->phy_reset_pending))(tp);
  }
  if (tmp != 0U) {
    timeout = 25UL;
    goto out_mod_timer;
  } else {
  }
  {
  tmp___0 = (*(tp->link_ok))(ioaddr);
  }
  if (tmp___0 != 0U) {
    return;
  } else {
  }
  if ((tp->msg_enable & 4U) != 0U) {
    {
    descriptor.modname = "r8169";
    descriptor.function = "rtl_phy_work";
    descriptor.filename = "drivers/net/ethernet/realtek/r8169.c";
    descriptor.format = "PHY reset until link up\n";
    descriptor.lineno = 3697U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "PHY reset until link up\n");
      }
    } else {
    }
  } else {
  }
  {
  (*(tp->phy_reset_enable))(tp);
  }
  out_mod_timer:
  {
  ldv_mod_timer_22(timer, (unsigned long )jiffies + timeout);
  }
  return;
}
}
static void rtl_schedule_task(struct rtl8169_private *tp , enum rtl_flag flag )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit((long )flag, (unsigned long volatile *)(& tp->wk.flags));
  }
  if (tmp == 0) {
    {
    schedule_work(& tp->wk.work);
    }
  } else {
  }
  return;
}
}
static void rtl8169_phy_timer(unsigned long __opaque )
{
  struct net_device *dev ;
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  dev = (struct net_device *)__opaque;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_schedule_task(tp, 3);
  }
  return;
}
}
static void rtl8169_release_board(struct pci_dev *pdev , struct net_device *dev ,
                                  void *ioaddr )
{
  {
  {
  iounmap((void volatile *)ioaddr);
  pci_release_regions(pdev);
  pci_clear_mwi(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_23(dev);
  }
  return;
}
}
static bool rtl_phy_reset_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_phy_reset_cond = {& rtl_phy_reset_cond_check, "rtl_phy_reset_cond"};
static bool rtl_phy_reset_cond_check(struct rtl8169_private *tp )
{
  unsigned int tmp ;
  {
  {
  tmp = (*(tp->phy_reset_pending))(tp);
  }
  return (tmp != 0U);
}
}
static void rtl8169_phy_reset(struct net_device *dev , struct rtl8169_private *tp )
{
  {
  {
  (*(tp->phy_reset_enable))(tp);
  rtl_msleep_loop_wait_low(tp, & rtl_phy_reset_cond, 1U, 100);
  }
  return;
}
}
static bool rtl_tbi_enabled(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  ioaddr = tp->mmio_addr;
  if ((unsigned int )tp->mac_version == 0U) {
    {
    tmp = readb((void const volatile *)ioaddr + 108U);
    }
    if ((int )((signed char )tmp) < 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return ((bool )tmp___0);
}
}
static void rtl8169_init_phy(struct net_device *dev , struct rtl8169_private *tp )
{
  void *ioaddr ;
  bool tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  rtl_hw_phy_config(dev);
  }
  if ((unsigned int )tp->mac_version <= 5U) {
    {
    writeb(1, (void volatile *)ioaddr + 130U);
    }
  } else {
  }
  {
  pci_write_config_byte((struct pci_dev const *)tp->pci_dev, 13, 64);
  }
  if ((unsigned int )tp->mac_version <= 5U) {
    {
    pci_write_config_byte((struct pci_dev const *)tp->pci_dev, 12, 8);
    }
  } else {
  }
  if ((unsigned int )tp->mac_version == 1U) {
    {
    writeb(1, (void volatile *)ioaddr + 130U);
    rtl_writephy(tp, 11, 0U);
    }
  } else {
  }
  {
  rtl8169_phy_reset(dev, tp);
  rtl8169_set_speed(dev, 1, 1000, 1, (unsigned int )*((unsigned char *)tp + 3904UL) != 0U ? 63U : 15U);
  tmp = rtl_tbi_enabled(tp);
  }
  if ((int )tmp) {
    if ((tp->msg_enable & 4U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "TBI auto-negotiating\n");
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl_rar_set(struct rtl8169_private *tp , u8 *addr )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  rtl_lock_work(tp);
  writeb(192, (void volatile *)ioaddr + 80U);
  writel((unsigned int )((int )*(addr + 4UL) | ((int )*(addr + 5UL) << 8)), (void volatile *)ioaddr + 4U);
  readl((void const volatile *)ioaddr + 4U);
  writel((unsigned int )((((int )*addr | ((int )*(addr + 1UL) << 8)) | ((int )*(addr + 2UL) << 16)) | ((int )*(addr + 3UL) << 24)),
         (void volatile *)ioaddr);
  readl((void const volatile *)ioaddr);
  }
  if ((unsigned int )tp->mac_version == 33U) {
    {
    rtl_rar_exgmac_set(tp, addr);
    }
  } else {
  }
  {
  writeb(0, (void volatile *)ioaddr + 80U);
  rtl_unlock_work(tp);
  }
  return;
}
}
static int rtl_set_mac_address(struct net_device *dev , void *p )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  {
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  rtl_rar_set(tp, dev->dev_addr);
  }
  return (0);
}
}
static int rtl8169_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = if_mii(ifr);
  data = tmp___0;
  tmp___4 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___4) {
    {
    tmp___2 = (*(tp->do_ioctl))(tp, data, cmd);
    tmp___3 = tmp___2;
    }
  } else {
    tmp___3 = -19;
  }
  return (tmp___3);
}
}
static int rtl_xmii_ioctl(struct rtl8169_private *tp , struct mii_ioctl_data *data ,
                          int cmd )
{
  int tmp ;
  {
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_break;
  case_35143:
  data->phy_id = 32U;
  return (0);
  case_35144:
  {
  tmp = rtl_readphy(tp, (int )data->reg_num & 31);
  data->val_out = (__u16 )tmp;
  }
  return (0);
  case_35145:
  {
  rtl_writephy(tp, (int )data->reg_num & 31, (u32 )data->val_in);
  }
  return (0);
  switch_break: ;
  }
  return (-95);
}
}
static int rtl_tbi_ioctl(struct rtl8169_private *tp , struct mii_ioctl_data *data ,
                         int cmd )
{
  {
  return (-95);
}
}
static void rtl_disable_msi(struct pci_dev *pdev , struct rtl8169_private *tp )
{
  {
  if ((tp->features & 2U) != 0U) {
    {
    pci_disable_msi(pdev);
    tp->features = tp->features & 4294967293U;
    }
  } else {
  }
  return;
}
}
static void rtl_init_mdio_ops(struct rtl8169_private *tp )
{
  struct mdio_ops *ops ;
  {
  ops = & tp->mdio_ops;
  {
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_26:
  ops->write = & r8168dp_1_mdio_write;
  ops->read = & r8168dp_1_mdio_read;
  goto ldv_49248;
  case_27: ;
  case_30:
  ops->write = & r8168dp_2_mdio_write;
  ops->read = & r8168dp_2_mdio_read;
  goto ldv_49248;
  case_39: ;
  case_40: ;
  case_41: ;
  case_42: ;
  case_43:
  ops->write = & r8168g_mdio_write;
  ops->read = & r8168g_mdio_read;
  goto ldv_49248;
  switch_default:
  ops->write = & r8169_mdio_write;
  ops->read = & r8169_mdio_read;
  goto ldv_49248;
  switch_break: ;
  }
  ldv_49248: ;
  return;
}
}
static void rtl_speed_down(struct rtl8169_private *tp )
{
  u32 adv ;
  int lpa ;
  {
  {
  rtl_writephy(tp, 31, 0U);
  lpa = rtl_readphy(tp, 5);
  }
  if ((lpa & 96) != 0) {
    adv = 3U;
  } else
  if ((lpa & 384) != 0) {
    adv = 15U;
  } else {
    adv = (unsigned int )*((unsigned char *)tp + 3904UL) != 0U ? 63U : 15U;
  }
  {
  rtl8169_set_speed(tp->dev, 1, 1000, 1, adv);
  }
  return;
}
}
static void rtl_wol_suspend_quirk(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  ioaddr = tp->mmio_addr;
  {
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 28) {
    goto case_28;
  } else {
  }
  if ((int )tp->mac_version == 29) {
    goto case_29;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 36) {
    goto case_36;
  } else {
  }
  if ((int )tp->mac_version == 37) {
    goto case_37;
  } else {
  }
  if ((int )tp->mac_version == 38) {
    goto case_38;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_24: ;
  case_25: ;
  case_28: ;
  case_29: ;
  case_31: ;
  case_32: ;
  case_33: ;
  case_36: ;
  case_37: ;
  case_38: ;
  case_39: ;
  case_40: ;
  case_41: ;
  case_42: ;
  case_43:
  {
  tmp = readl((void const volatile *)ioaddr + 68U);
  writel(tmp | 14U, (void volatile *)ioaddr + 68U);
  }
  goto ldv_49281;
  switch_default: ;
  goto ldv_49281;
  switch_break: ;
  }
  ldv_49281: ;
  return;
}
}
static bool rtl_wol_pll_power_down(struct rtl8169_private *tp )
{
  u32 tmp ;
  {
  {
  tmp = __rtl8169_get_wol(tp);
  }
  if ((tmp & 47U) == 0U) {
    return (0);
  } else {
  }
  {
  rtl_speed_down(tp);
  rtl_wol_suspend_quirk(tp);
  }
  return (1);
}
}
static void r810x_phy_power_down(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 0, 2048U);
  }
  return;
}
}
static void r810x_phy_power_up(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 0U);
  rtl_writephy(tp, 0, 4096U);
  }
  return;
}
}
static void r810x_pll_power_down(struct rtl8169_private *tp )
{
  void *ioaddr ;
  bool tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = rtl_wol_pll_power_down(tp);
  }
  if ((int )tmp) {
    return;
  } else {
  }
  {
  r810x_phy_power_down(tp);
  }
  {
  if ((int )tp->mac_version == 6) {
    goto case_6;
  } else {
  }
  if ((int )tp->mac_version == 7) {
    goto case_7;
  } else {
  }
  if ((int )tp->mac_version == 8) {
    goto case_8;
  } else {
  }
  if ((int )tp->mac_version == 9) {
    goto case_9;
  } else {
  }
  if ((int )tp->mac_version == 12) {
    goto case_12;
  } else {
  }
  if ((int )tp->mac_version == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_7: ;
  case_8: ;
  case_9: ;
  case_12: ;
  case_15: ;
  goto ldv_49302;
  switch_default:
  {
  tmp___0 = readb((void const volatile *)ioaddr + 111U);
  writeb((int )tmp___0 & 127, (void volatile *)ioaddr + 111U);
  }
  goto ldv_49302;
  switch_break: ;
  }
  ldv_49302: ;
  return;
}
}
static void r810x_pll_power_up(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  r810x_phy_power_up(tp);
  }
  {
  if ((int )tp->mac_version == 6) {
    goto case_6;
  } else {
  }
  if ((int )tp->mac_version == 7) {
    goto case_7;
  } else {
  }
  if ((int )tp->mac_version == 8) {
    goto case_8;
  } else {
  }
  if ((int )tp->mac_version == 9) {
    goto case_9;
  } else {
  }
  if ((int )tp->mac_version == 12) {
    goto case_12;
  } else {
  }
  if ((int )tp->mac_version == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_7: ;
  case_8: ;
  case_9: ;
  case_12: ;
  case_15: ;
  goto ldv_49314;
  switch_default:
  {
  tmp = readb((void const volatile *)ioaddr + 111U);
  writeb((int )((unsigned int )tmp | 128U), (void volatile *)ioaddr + 111U);
  }
  goto ldv_49314;
  switch_break: ;
  }
  ldv_49314: ;
  return;
}
}
static void r8168_phy_power_up(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 0U);
  }
  {
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  goto switch_default;
  case_10: ;
  case_11: ;
  case_16: ;
  case_17: ;
  case_18: ;
  case_19: ;
  case_20: ;
  case_21: ;
  case_22: ;
  case_23: ;
  case_24: ;
  case_25: ;
  case_26: ;
  case_27: ;
  case_30:
  {
  rtl_writephy(tp, 14, 0U);
  }
  goto ldv_49334;
  switch_default: ;
  goto ldv_49334;
  switch_break: ;
  }
  ldv_49334:
  {
  rtl_writephy(tp, 0, 4096U);
  }
  return;
}
}
static void r8168_phy_power_down(struct rtl8169_private *tp )
{
  {
  {
  rtl_writephy(tp, 31, 0U);
  }
  {
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  goto switch_default;
  case_31: ;
  case_32: ;
  case_39: ;
  case_40:
  {
  rtl_writephy(tp, 0, 6144U);
  }
  goto ldv_49343;
  case_10: ;
  case_11: ;
  case_16: ;
  case_17: ;
  case_18: ;
  case_19: ;
  case_20: ;
  case_21: ;
  case_22: ;
  case_23: ;
  case_24: ;
  case_25: ;
  case_26: ;
  case_27: ;
  case_30:
  {
  rtl_writephy(tp, 14, 512U);
  }
  switch_default:
  {
  rtl_writephy(tp, 0, 2048U);
  }
  goto ldv_49343;
  switch_break: ;
  }
  ldv_49343: ;
  return;
}
}
static void r8168_pll_power_down(struct rtl8169_private *tp )
{
  void *ioaddr ;
  int tmp ;
  unsigned short tmp___0 ;
  bool tmp___1 ;
  unsigned char tmp___2 ;
  {
  ioaddr = tp->mmio_addr;
  if ((unsigned int )tp->mac_version - 26U <= 1U || (unsigned int )tp->mac_version == 30U) {
    {
    tmp = r8168dp_check_dash(tp);
    }
    if (tmp != 0) {
      return;
    } else {
    }
  } else {
  }
  if ((unsigned int )tp->mac_version - 22U <= 1U) {
    {
    tmp___0 = readw((void const volatile *)ioaddr + 224U);
    }
    if (((int )tmp___0 & 256) != 0) {
      return;
    } else {
    }
  } else {
  }
  if ((unsigned int )tp->mac_version - 31U <= 1U) {
    {
    rtl_ephy_write(tp, 25, 65380);
    }
  } else {
  }
  {
  tmp___1 = rtl_wol_pll_power_down(tp);
  }
  if ((int )tmp___1) {
    return;
  } else {
  }
  {
  r8168_phy_power_down(tp);
  }
  {
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  goto switch_break;
  case_24: ;
  case_25: ;
  case_26: ;
  case_27: ;
  case_30: ;
  case_31: ;
  case_32:
  {
  tmp___2 = readb((void const volatile *)ioaddr + 111U);
  writeb((int )tmp___2 & 127, (void volatile *)ioaddr + 111U);
  }
  goto ldv_49371;
  case_39: ;
  case_40:
  {
  rtl_w1w0_eri(tp, 424, 61440U, 0U, 4227858432U, 0);
  }
  goto ldv_49371;
  switch_break: ;
  }
  ldv_49371: ;
  return;
}
}
static void r8168_pll_power_up(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  ioaddr = tp->mmio_addr;
  {
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  goto switch_break;
  case_24: ;
  case_25: ;
  case_26: ;
  case_27: ;
  case_30: ;
  case_31: ;
  case_32:
  {
  tmp = readb((void const volatile *)ioaddr + 111U);
  writeb((int )((unsigned int )tmp | 128U), (void volatile *)ioaddr + 111U);
  }
  goto ldv_49385;
  case_39: ;
  case_40:
  {
  rtl_w1w0_eri(tp, 424, 61440U, 4227858432U, 0U, 0);
  }
  goto ldv_49385;
  switch_break: ;
  }
  ldv_49385:
  {
  r8168_phy_power_up(tp);
  }
  return;
}
}
static void rtl_generic_op(struct rtl8169_private *tp , void (*op)(struct rtl8169_private * ) )
{
  {
  if ((unsigned long )op != (unsigned long )((void (*)(struct rtl8169_private * ))0)) {
    {
    (*op)(tp);
    }
  } else {
  }
  return;
}
}
static void rtl_pll_power_down(struct rtl8169_private *tp )
{
  {
  {
  rtl_generic_op(tp, tp->pll_power_ops.down);
  }
  return;
}
}
static void rtl_pll_power_up(struct rtl8169_private *tp )
{
  {
  {
  rtl_generic_op(tp, tp->pll_power_ops.up);
  }
  return;
}
}
static void rtl_init_pll_power_ops(struct rtl8169_private *tp )
{
  struct pll_power_ops *ops ;
  {
  ops = & tp->pll_power_ops;
  {
  if ((int )tp->mac_version == 6) {
    goto case_6;
  } else {
  }
  if ((int )tp->mac_version == 7) {
    goto case_7;
  } else {
  }
  if ((int )tp->mac_version == 8) {
    goto case_8;
  } else {
  }
  if ((int )tp->mac_version == 9) {
    goto case_9;
  } else {
  }
  if ((int )tp->mac_version == 15) {
    goto case_15;
  } else {
  }
  if ((int )tp->mac_version == 28) {
    goto case_28;
  } else {
  }
  if ((int )tp->mac_version == 29) {
    goto case_29;
  } else {
  }
  if ((int )tp->mac_version == 36) {
    goto case_36;
  } else {
  }
  if ((int )tp->mac_version == 38) {
    goto case_38;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 34) {
    goto case_34;
  } else {
  }
  if ((int )tp->mac_version == 35) {
    goto case_35;
  } else {
  }
  if ((int )tp->mac_version == 37) {
    goto case_37;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_6: ;
  case_7: ;
  case_8: ;
  case_9: ;
  case_15: ;
  case_28: ;
  case_29: ;
  case_36: ;
  case_38: ;
  case_42:
  ops->down = & r810x_pll_power_down;
  ops->up = & r810x_pll_power_up;
  goto ldv_49413;
  case_10: ;
  case_11: ;
  case_16: ;
  case_17: ;
  case_18: ;
  case_19: ;
  case_20: ;
  case_21: ;
  case_22: ;
  case_23: ;
  case_24: ;
  case_25: ;
  case_26: ;
  case_27: ;
  case_30: ;
  case_31: ;
  case_32: ;
  case_33: ;
  case_34: ;
  case_35: ;
  case_37: ;
  case_39: ;
  case_40: ;
  case_41: ;
  case_43:
  ops->down = & r8168_pll_power_down;
  ops->up = & r8168_pll_power_up;
  goto ldv_49413;
  switch_default:
  ops->down = (void (*)(struct rtl8169_private * ))0;
  ops->up = (void (*)(struct rtl8169_private * ))0;
  goto ldv_49413;
  switch_break: ;
  }
  ldv_49413: ;
  return;
}
}
static void rtl_init_rxcfg(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  ioaddr = tp->mmio_addr;
  {
  if ((int )tp->mac_version == 0) {
    goto case_0;
  } else {
  }
  if ((int )tp->mac_version == 1) {
    goto case_1;
  } else {
  }
  if ((int )tp->mac_version == 2) {
    goto case_2;
  } else {
  }
  if ((int )tp->mac_version == 3) {
    goto case_3;
  } else {
  }
  if ((int )tp->mac_version == 4) {
    goto case_4;
  } else {
  }
  if ((int )tp->mac_version == 5) {
    goto case_5;
  } else {
  }
  if ((int )tp->mac_version == 9) {
    goto case_9;
  } else {
  }
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 12) {
    goto case_12;
  } else {
  }
  if ((int )tp->mac_version == 13) {
    goto case_13;
  } else {
  }
  if ((int )tp->mac_version == 14) {
    goto case_14;
  } else {
  }
  if ((int )tp->mac_version == 15) {
    goto case_15;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 34) {
    goto case_34;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  case_9: ;
  case_10: ;
  case_11: ;
  case_12: ;
  case_13: ;
  case_14: ;
  case_15: ;
  case_16:
  {
  writel(59136U, (void volatile *)ioaddr + 68U);
  }
  goto ldv_49458;
  case_17: ;
  case_18: ;
  case_19: ;
  case_20: ;
  case_21: ;
  case_22: ;
  case_23: ;
  case_33: ;
  case_34:
  {
  writel(50944U, (void volatile *)ioaddr + 68U);
  }
  goto ldv_49458;
  case_39: ;
  case_40: ;
  case_41: ;
  case_42: ;
  case_43:
  {
  writel(36608U, (void volatile *)ioaddr + 68U);
  }
  goto ldv_49458;
  switch_default:
  {
  writel(34560U, (void volatile *)ioaddr + 68U);
  }
  goto ldv_49458;
  switch_break: ;
  }
  ldv_49458: ;
  return;
}
}
static void rtl8169_init_ring_indexes(struct rtl8169_private *tp )
{
  u32 tmp ;
  u32 tmp___0 ;
  {
  tmp___0 = 0U;
  tp->cur_rx = tmp___0;
  tmp = tmp___0;
  tp->cur_tx = tmp;
  tp->dirty_tx = tmp;
  return;
}
}
static void rtl_hw_jumbo_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb(192, (void volatile *)ioaddr + 80U);
  rtl_generic_op(tp, tp->jumbo_ops.enable);
  writeb(0, (void volatile *)ioaddr + 80U);
  }
  return;
}
}
static void rtl_hw_jumbo_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb(192, (void volatile *)ioaddr + 80U);
  rtl_generic_op(tp, tp->jumbo_ops.disable);
  writeb(0, (void volatile *)ioaddr + 80U);
  }
  return;
}
}
static void r8168c_hw_jumbo_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )((unsigned int )tmp | 4U), (void volatile *)ioaddr + 84U);
  tmp___0 = readb((void const volatile *)ioaddr + 85U);
  writeb((int )((unsigned int )tmp___0 | 2U), (void volatile *)ioaddr + 85U);
  rtl_tx_performance_tweak(tp->pci_dev, 8192);
  }
  return;
}
}
static void r8168c_hw_jumbo_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 251, (void volatile *)ioaddr + 84U);
  tmp___0 = readb((void const volatile *)ioaddr + 85U);
  writeb((int )tmp___0 & 253, (void volatile *)ioaddr + 85U);
  rtl_tx_performance_tweak(tp->pci_dev, 20480);
  }
  return;
}
}
static void r8168dp_hw_jumbo_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )((unsigned int )tmp | 4U), (void volatile *)ioaddr + 84U);
  }
  return;
}
}
static void r8168dp_hw_jumbo_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 251, (void volatile *)ioaddr + 84U);
  }
  return;
}
}
static void r8168e_hw_jumbo_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb(63, (void volatile *)ioaddr + 236U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )((unsigned int )tmp | 4U), (void volatile *)ioaddr + 84U);
  tmp___0 = readb((void const volatile *)ioaddr + 85U);
  writeb((int )((unsigned int )tmp___0 | 1U), (void volatile *)ioaddr + 85U);
  rtl_tx_performance_tweak(tp->pci_dev, 8192);
  }
  return;
}
}
static void r8168e_hw_jumbo_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb(12, (void volatile *)ioaddr + 236U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 251, (void volatile *)ioaddr + 84U);
  tmp___0 = readb((void const volatile *)ioaddr + 85U);
  writeb((int )tmp___0 & 254, (void volatile *)ioaddr + 85U);
  rtl_tx_performance_tweak(tp->pci_dev, 20480);
  }
  return;
}
}
static void r8168b_0_hw_jumbo_enable(struct rtl8169_private *tp )
{
  {
  {
  rtl_tx_performance_tweak(tp->pci_dev, 10240);
  }
  return;
}
}
static void r8168b_0_hw_jumbo_disable(struct rtl8169_private *tp )
{
  {
  {
  rtl_tx_performance_tweak(tp->pci_dev, 22528);
  }
  return;
}
}
static void r8168b_1_hw_jumbo_enable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  r8168b_0_hw_jumbo_enable(tp);
  tmp = readb((void const volatile *)ioaddr + 85U);
  writeb((int )((unsigned int )tmp | 1U), (void volatile *)ioaddr + 85U);
  }
  return;
}
}
static void r8168b_1_hw_jumbo_disable(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  r8168b_0_hw_jumbo_disable(tp);
  tmp = readb((void const volatile *)ioaddr + 85U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 85U);
  }
  return;
}
}
static void rtl_init_jumbo_ops(struct rtl8169_private *tp )
{
  struct jumbo_ops *ops ;
  {
  ops = & tp->jumbo_ops;
  {
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_10:
  ops->disable = & r8168b_0_hw_jumbo_disable;
  ops->enable = & r8168b_0_hw_jumbo_enable;
  goto ldv_49528;
  case_11: ;
  case_16:
  ops->disable = & r8168b_1_hw_jumbo_disable;
  ops->enable = & r8168b_1_hw_jumbo_enable;
  goto ldv_49528;
  case_17: ;
  case_18: ;
  case_19: ;
  case_20: ;
  case_21: ;
  case_22: ;
  case_23: ;
  case_24: ;
  case_25:
  ops->disable = & r8168c_hw_jumbo_disable;
  ops->enable = & r8168c_hw_jumbo_enable;
  goto ldv_49528;
  case_26: ;
  case_27:
  ops->disable = & r8168dp_hw_jumbo_disable;
  ops->enable = & r8168dp_hw_jumbo_enable;
  goto ldv_49528;
  case_30: ;
  case_31: ;
  case_32: ;
  case_33:
  ops->disable = & r8168e_hw_jumbo_disable;
  ops->enable = & r8168e_hw_jumbo_enable;
  goto ldv_49528;
  case_39: ;
  case_40: ;
  case_41: ;
  case_42: ;
  case_43: ;
  switch_default:
  ops->disable = (void (*)(struct rtl8169_private * ))0;
  ops->enable = (void (*)(struct rtl8169_private * ))0;
  goto ldv_49528;
  switch_break: ;
  }
  ldv_49528: ;
  return;
}
}
static bool rtl_chipcmd_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_chipcmd_cond = {& rtl_chipcmd_cond_check, "rtl_chipcmd_cond"};
static bool rtl_chipcmd_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 55U);
  }
  return (((int )tmp & 16) != 0);
}
}
static void rtl_hw_reset(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writeb(16, (void volatile *)ioaddr + 55U);
  rtl_udelay_loop_wait_low(tp, & rtl_chipcmd_cond, 100U, 100);
  }
  return;
}
}
static void rtl_request_uncached_firmware(struct rtl8169_private *tp )
{
  struct rtl_fw *rtl_fw ;
  char const *name ;
  int rc ;
  void *tmp ;
  {
  {
  rc = -12;
  name = rtl_lookup_firmware_name(tp);
  }
  if ((unsigned long )name == (unsigned long )((char const *)0)) {
    goto out_no_firmware;
  } else {
  }
  {
  tmp = kzalloc(56UL, 208U);
  rtl_fw = (struct rtl_fw *)tmp;
  }
  if ((unsigned long )rtl_fw == (unsigned long )((struct rtl_fw *)0)) {
    goto err_warn;
  } else {
  }
  {
  rc = request_firmware(& rtl_fw->fw, name, & (tp->pci_dev)->dev);
  }
  if (rc < 0) {
    goto err_free;
  } else {
  }
  {
  rc = rtl_check_firmware(tp, rtl_fw);
  }
  if (rc < 0) {
    goto err_release_firmware;
  } else {
  }
  tp->rtl_fw = rtl_fw;
  out: ;
  return;
  err_release_firmware:
  {
  release_firmware(rtl_fw->fw);
  }
  err_free:
  {
  kfree((void const *)rtl_fw);
  }
  err_warn: ;
  if ((tp->msg_enable & 32U) != 0U) {
    {
    netdev_warn((struct net_device const *)tp->dev, "unable to load firmware patch %s (%d)\n",
                name, rc);
    }
  } else {
  }
  out_no_firmware:
  tp->rtl_fw = (struct rtl_fw *)0;
  goto out;
}
}
static void rtl_request_firmware(struct rtl8169_private *tp )
{
  long tmp ;
  {
  {
  tmp = IS_ERR((void const *)tp->rtl_fw);
  }
  if (tmp != 0L) {
    {
    rtl_request_uncached_firmware(tp);
    }
  } else {
  }
  return;
}
}
static void rtl_rx_close(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 68U);
  writel(tmp & 4294967232U, (void volatile *)ioaddr + 68U);
  }
  return;
}
}
static bool rtl_npq_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_npq_cond = {& rtl_npq_cond_check, "rtl_npq_cond"};
static bool rtl_npq_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 56U);
  }
  return (((int )tmp & 64) != 0);
}
}
static bool rtl_txcfg_empty_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_txcfg_empty_cond = {& rtl_txcfg_empty_cond_check, "rtl_txcfg_empty_cond"};
static bool rtl_txcfg_empty_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 64U);
  }
  return ((tmp & 2048U) != 0U);
}
}
static void rtl8169_hw_reset(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  rtl8169_irq_mask_and_ack(tp);
  rtl_rx_close(tp);
  }
  if ((unsigned int )tp->mac_version - 26U <= 1U || (unsigned int )tp->mac_version == 30U) {
    {
    rtl_udelay_loop_wait_low(tp, & rtl_npq_cond, 20U, 1764);
    }
  } else
  if (((((((unsigned int )tp->mac_version - 33U <= 3U || (unsigned int )tp->mac_version == 39U) || (unsigned int )tp->mac_version == 40U) || (unsigned int )tp->mac_version == 41U) || (unsigned int )tp->mac_version == 42U) || (unsigned int )tp->mac_version == 43U) || (unsigned int )tp->mac_version == 37U) {
    {
    tmp = readb((void const volatile *)ioaddr + 55U);
    writeb((int )((unsigned int )tmp | 128U), (void volatile *)ioaddr + 55U);
    rtl_udelay_loop_wait_high(tp, & rtl_txcfg_empty_cond, 100U, 666);
    }
  } else {
    {
    tmp___0 = readb((void const volatile *)ioaddr + 55U);
    writeb((int )((unsigned int )tmp___0 | 128U), (void volatile *)ioaddr + 55U);
    __const_udelay(429500UL);
    }
  }
  {
  rtl_hw_reset(tp);
  }
  return;
}
}
static void rtl_set_rx_tx_config_registers(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel(50333440U, (void volatile *)ioaddr + 64U);
  }
  return;
}
}
static void rtl_hw_start(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  (*(tp->hw_start))(dev);
  rtl_irq_enable_all(tp);
  }
  return;
}
}
static void rtl_set_rx_tx_desc_registers(struct rtl8169_private *tp , void *ioaddr )
{
  {
  {
  writel((unsigned int )(tp->TxPhyAddr >> 32), (void volatile *)ioaddr + 36U);
  writel((unsigned int )tp->TxPhyAddr, (void volatile *)ioaddr + 32U);
  writel((unsigned int )(tp->RxPhyAddr >> 32), (void volatile *)ioaddr + 232U);
  writel((unsigned int )tp->RxPhyAddr, (void volatile *)ioaddr + 228U);
  }
  return;
}
}
static u16 rtl_rw_cpluscmd(void *ioaddr )
{
  u16 cmd ;
  {
  {
  cmd = readw((void const volatile *)ioaddr + 224U);
  writew((int )cmd, (void volatile *)ioaddr + 224U);
  }
  return (cmd);
}
}
static void rtl_set_rx_max_size(void *ioaddr , unsigned int rx_buf_sz___0 )
{
  {
  {
  writew((int )((unsigned int )((unsigned short )rx_buf_sz___0) + 1U), (void volatile *)ioaddr + 218U);
  }
  return;
}
}
static void rtl8169_set_magic_reg(void *ioaddr , unsigned int mac_version )
{
  struct rtl_cfg2_info cfg2_info[4U] ;
  struct rtl_cfg2_info const *p ;
  unsigned int i ;
  u32 clk ;
  unsigned char tmp ;
  {
  {
  cfg2_info[0].mac_version = 4U;
  cfg2_info[0].clk = 0U;
  cfg2_info[0].val = 1048320U;
  cfg2_info[1].mac_version = 4U;
  cfg2_info[1].clk = 1U;
  cfg2_info[1].val = 1048575U;
  cfg2_info[2].mac_version = 5U;
  cfg2_info[2].clk = 0U;
  cfg2_info[2].val = 16776960U;
  cfg2_info[3].mac_version = 5U;
  cfg2_info[3].clk = 1U;
  cfg2_info[3].val = 16777215U;
  p = (struct rtl_cfg2_info const *)(& cfg2_info);
  tmp = readb((void const volatile *)ioaddr + 83U);
  clk = (u32 )tmp & 1U;
  i = 0U;
  }
  goto ldv_49635;
  ldv_49634: ;
  if ((unsigned int )p->mac_version == mac_version && (unsigned int )p->clk == clk) {
    {
    writel(p->val, (void volatile *)ioaddr + 124U);
    }
    goto ldv_49633;
  } else {
  }
  i = i + 1U;
  p = p + 1;
  ldv_49635: ;
  if (i <= 3U) {
    goto ldv_49634;
  } else {
  }
  ldv_49633: ;
  return;
}
}
static void rtl_set_rx_mode(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  u32 mc_filter[2U] ;
  int rx_mode ;
  u32 tmp___0 ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  int bit_nr ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  struct list_head const *__mptr___0 ;
  unsigned int tmp___3 ;
  u32 data ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = 0U;
  }
  if ((dev->flags & 256U) != 0U) {
    if ((tp->msg_enable & 4U) != 0U) {
      {
      netdev_notice((struct net_device const *)dev, "Promiscuous mode enabled\n");
      }
    } else {
    }
    rx_mode = 15;
    mc_filter[0] = 4294967295U;
    mc_filter[1] = mc_filter[0];
  } else
  if (dev->mc.count > 32 || (dev->flags & 512U) != 0U) {
    rx_mode = 14;
    mc_filter[0] = 4294967295U;
    mc_filter[1] = mc_filter[0];
  } else {
    rx_mode = 10;
    mc_filter[0] = 0U;
    mc_filter[1] = mc_filter[0];
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_49651;
    ldv_49650:
    {
    tmp___1 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___2 = bitrev32(tmp___1);
    bit_nr = (int )(tmp___2 >> 26);
    mc_filter[bit_nr >> 5] = mc_filter[bit_nr >> 5] | (u32 )(1 << (bit_nr & 31));
    rx_mode = rx_mode | 4;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_49651: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_49650;
    } else {
    }
  }
  if ((dev->features & 68719476736ULL) != 0ULL) {
    rx_mode = rx_mode | 48;
  } else {
  }
  {
  tmp___3 = readl((void const volatile *)ioaddr + 68U);
  tmp___0 = (tmp___3 & 4294967232U) | (unsigned int )rx_mode;
  }
  if ((unsigned int )tp->mac_version > 5U) {
    {
    data = mc_filter[0];
    tmp___4 = __fswab32(mc_filter[1]);
    mc_filter[0] = tmp___4;
    tmp___5 = __fswab32(data);
    mc_filter[1] = tmp___5;
    }
  } else {
  }
  if ((unsigned int )tp->mac_version == 34U) {
    mc_filter[0] = 4294967295U;
    mc_filter[1] = mc_filter[0];
  } else {
  }
  {
  writel(mc_filter[1], (void volatile *)ioaddr + 12U);
  writel(mc_filter[0], (void volatile *)ioaddr + 8U);
  writel(tmp___0, (void volatile *)ioaddr + 68U);
  }
  return;
}
}
static void rtl_hw_start_8169(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned short tmp___0 ;
  u16 tmp___1 ;
  unsigned short tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  }
  if ((unsigned int )tp->mac_version == 4U) {
    {
    tmp___0 = readw((void const volatile *)ioaddr + 224U);
    writew((int )((unsigned int )tmp___0 | 8U), (void volatile *)ioaddr + 224U);
    pci_write_config_byte((struct pci_dev const *)pdev, 12, 8);
    }
  } else {
  }
  {
  writeb(192, (void volatile *)ioaddr + 80U);
  }
  if ((unsigned int )tp->mac_version <= 3U) {
    {
    writeb(12, (void volatile *)ioaddr + 55U);
    }
  } else {
  }
  {
  rtl_init_rxcfg(tp);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, (unsigned int )rx_buf_sz);
  }
  if ((unsigned int )tp->mac_version <= 3U) {
    {
    rtl_set_rx_tx_config_registers(tp);
    }
  } else {
  }
  {
  tmp___1 = rtl_rw_cpluscmd(ioaddr);
  tp->cp_cmd = (u16 )((unsigned int )((int )tp->cp_cmd | (int )tmp___1) | 8U);
  }
  if ((unsigned int )tp->mac_version - 1U <= 1U) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 16384U);
  } else {
  }
  {
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  rtl8169_set_magic_reg(ioaddr, (unsigned int )tp->mac_version);
  writew(0, (void volatile *)ioaddr + 226U);
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  }
  if ((unsigned int )tp->mac_version > 3U) {
    {
    writeb(12, (void volatile *)ioaddr + 55U);
    rtl_set_rx_tx_config_registers(tp);
    }
  } else {
  }
  {
  writeb(0, (void volatile *)ioaddr + 80U);
  readb((void const volatile *)ioaddr + 60U);
  writel(0U, (void volatile *)ioaddr + 76U);
  rtl_set_rx_mode(dev);
  tmp___2 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___2 & 61440, (void volatile *)ioaddr + 92U);
  }
  return;
}
}
static void rtl_csi_write(struct rtl8169_private *tp , int addr , int value )
{
  {
  if ((unsigned long )tp->csi_ops.write != (unsigned long )((void (*)(struct rtl8169_private * ,
                                                                      int , int ))0)) {
    {
    (*(tp->csi_ops.write))(tp, addr, value);
    }
  } else {
  }
  return;
}
}
static u32 rtl_csi_read(struct rtl8169_private *tp , int addr )
{
  u32 tmp ;
  u32 tmp___0 ;
  {
  if ((unsigned long )tp->csi_ops.read != (unsigned long )((u32 (*)(struct rtl8169_private * ,
                                                                    int ))0)) {
    {
    tmp = (*(tp->csi_ops.read))(tp, addr);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = 4294967295U;
  }
  return (tmp___0);
}
}
static void rtl_csi_access_enable(struct rtl8169_private *tp , u32 bits )
{
  u32 csi ;
  u32 tmp ;
  {
  {
  tmp = rtl_csi_read(tp, 1804);
  csi = tmp & 16777215U;
  rtl_csi_write(tp, 1804, (int )(csi | bits));
  }
  return;
}
}
static void rtl_csi_access_enable_1(struct rtl8169_private *tp )
{
  {
  {
  rtl_csi_access_enable(tp, 385875968U);
  }
  return;
}
}
static void rtl_csi_access_enable_2(struct rtl8169_private *tp )
{
  {
  {
  rtl_csi_access_enable(tp, 654311424U);
  }
  return;
}
}
static bool rtl_csiar_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_csiar_cond = {& rtl_csiar_cond_check, "rtl_csiar_cond"};
static bool rtl_csiar_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 104U);
  }
  return ((tmp & 2147483648U) != 0U);
}
}
static void r8169_csi_write(struct rtl8169_private *tp , int addr , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )value, (void volatile *)ioaddr + 100U);
  writel(((unsigned int )addr & 65535U) | 2147545088U, (void volatile *)ioaddr + 104U);
  rtl_udelay_loop_wait_low(tp, & rtl_csiar_cond, 10U, 100);
  }
  return;
}
}
static u32 r8169_csi_read(struct rtl8169_private *tp , int addr )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((addr & 65535) | 61440), (void volatile *)ioaddr + 104U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_csiar_cond, 10U, 100);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 100U);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 4294967295U;
  }
  return (tmp___1);
}
}
static void r8402_csi_write(struct rtl8169_private *tp , int addr , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )value, (void volatile *)ioaddr + 100U);
  writel(((unsigned int )addr & 65535U) | 2147676160U, (void volatile *)ioaddr + 104U);
  rtl_udelay_loop_wait_low(tp, & rtl_csiar_cond, 10U, 100);
  }
  return;
}
}
static u32 r8402_csi_read(struct rtl8169_private *tp , int addr )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((addr & 65535) | 192512), (void volatile *)ioaddr + 104U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_csiar_cond, 10U, 100);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 100U);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 4294967295U;
  }
  return (tmp___1);
}
}
static void r8411_csi_write(struct rtl8169_private *tp , int addr , int value )
{
  void *ioaddr ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )value, (void volatile *)ioaddr + 100U);
  writel(((unsigned int )addr & 65535U) | 2147610624U, (void volatile *)ioaddr + 104U);
  rtl_udelay_loop_wait_low(tp, & rtl_csiar_cond, 10U, 100);
  }
  return;
}
}
static u32 r8411_csi_read(struct rtl8169_private *tp , int addr )
{
  void *ioaddr ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  writel((unsigned int )((addr & 65535) | 126976), (void volatile *)ioaddr + 104U);
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_csiar_cond, 10U, 100);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = readl((void const volatile *)ioaddr + 100U);
    tmp___1 = tmp___0;
    }
  } else {
    tmp___1 = 4294967295U;
  }
  return (tmp___1);
}
}
static void rtl_init_csi_ops(struct rtl8169_private *tp )
{
  struct csi_ops *ops ;
  {
  ops = & tp->csi_ops;
  {
  if ((int )tp->mac_version == 0) {
    goto case_0;
  } else {
  }
  if ((int )tp->mac_version == 1) {
    goto case_1;
  } else {
  }
  if ((int )tp->mac_version == 2) {
    goto case_2;
  } else {
  }
  if ((int )tp->mac_version == 3) {
    goto case_3;
  } else {
  }
  if ((int )tp->mac_version == 4) {
    goto case_4;
  } else {
  }
  if ((int )tp->mac_version == 5) {
    goto case_5;
  } else {
  }
  if ((int )tp->mac_version == 9) {
    goto case_9;
  } else {
  }
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 12) {
    goto case_12;
  } else {
  }
  if ((int )tp->mac_version == 13) {
    goto case_13;
  } else {
  }
  if ((int )tp->mac_version == 14) {
    goto case_14;
  } else {
  }
  if ((int )tp->mac_version == 15) {
    goto case_15;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 36) {
    goto case_36;
  } else {
  }
  if ((int )tp->mac_version == 37) {
    goto case_37;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  case_9: ;
  case_10: ;
  case_11: ;
  case_12: ;
  case_13: ;
  case_14: ;
  case_15: ;
  case_16:
  ops->write = (void (*)(struct rtl8169_private * , int , int ))0;
  ops->read = (u32 (*)(struct rtl8169_private * , int ))0;
  goto ldv_49738;
  case_36: ;
  case_37:
  ops->write = & r8402_csi_write;
  ops->read = & r8402_csi_read;
  goto ldv_49738;
  case_43:
  ops->write = & r8411_csi_write;
  ops->read = & r8411_csi_read;
  goto ldv_49738;
  switch_default:
  ops->write = & r8169_csi_write;
  ops->read = & r8169_csi_read;
  goto ldv_49738;
  switch_break: ;
  }
  ldv_49738: ;
  return;
}
}
static void rtl_ephy_init(struct rtl8169_private *tp , struct ephy_info const *e ,
                          int len )
{
  u16 w ;
  u16 tmp ;
  int tmp___0 ;
  {
  goto ldv_49754;
  ldv_49753:
  {
  tmp = rtl_ephy_read(tp, (int )e->offset);
  w = (u16 )(((int )((short )tmp) & ~ ((int )((short )e->mask))) | (int )((short )e->bits));
  rtl_ephy_write(tp, (int )e->offset, (int )w);
  e = e + 1;
  }
  ldv_49754:
  tmp___0 = len;
  len = len - 1;
  if (tmp___0 > 0) {
    goto ldv_49753;
  } else {
  }
  return;
}
}
static void rtl_disable_clock_request(struct pci_dev *pdev )
{
  {
  {
  pcie_capability_clear_word(pdev, 16, 256);
  }
  return;
}
}
static void rtl_enable_clock_request(struct pci_dev *pdev )
{
  {
  {
  pcie_capability_set_word(pdev, 16, 256);
  }
  return;
}
}
static void rtl_hw_start_8168bb(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 22528);
    }
  } else {
  }
  return;
}
}
static void rtl_hw_start_8168bef(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  rtl_hw_start_8168bb(tp);
  writeb(63, (void volatile *)ioaddr + 236U);
  tmp = readb((void const volatile *)ioaddr + 85U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 85U);
  }
  return;
}
}
static void __rtl_hw_start_8168cp(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned short tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  tmp = readb((void const volatile *)ioaddr + 82U);
  writeb((int )((unsigned int )tmp | 16U), (void volatile *)ioaddr + 82U);
  tmp___0 = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp___0 & 254, (void volatile *)ioaddr + 84U);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  rtl_disable_clock_request(pdev);
  tmp___1 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___1 & 8291, (void volatile *)ioaddr + 224U);
  }
  return;
}
}
static void rtl_hw_start_8168cp_1(struct rtl8169_private *tp )
{
  struct ephy_info e_info_8168cp[5U] ;
  {
  {
  e_info_8168cp[0].offset = 1U;
  e_info_8168cp[0].mask = 0U;
  e_info_8168cp[0].bits = 1U;
  e_info_8168cp[1].offset = 2U;
  e_info_8168cp[1].mask = 2048U;
  e_info_8168cp[1].bits = 4096U;
  e_info_8168cp[2].offset = 3U;
  e_info_8168cp[2].mask = 0U;
  e_info_8168cp[2].bits = 66U;
  e_info_8168cp[3].offset = 6U;
  e_info_8168cp[3].mask = 128U;
  e_info_8168cp[3].bits = 0U;
  e_info_8168cp[4].offset = 7U;
  e_info_8168cp[4].mask = 0U;
  e_info_8168cp[4].bits = 8192U;
  rtl_csi_access_enable_2(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168cp), 5);
  __rtl_hw_start_8168cp(tp);
  }
  return;
}
}
static void rtl_hw_start_8168cp_2(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_2(tp);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  }
  return;
}
}
static void rtl_hw_start_8168cp_3(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_2(tp);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  writeb(32, (void volatile *)ioaddr + 209U);
  writeb(63, (void volatile *)ioaddr + 236U);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  }
  return;
}
}
static void rtl_hw_start_8168c_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8168c_1[3U] ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8168c_1[0].offset = 2U;
  e_info_8168c_1[0].mask = 2048U;
  e_info_8168c_1[0].bits = 4096U;
  e_info_8168c_1[1].offset = 3U;
  e_info_8168c_1[1].mask = 0U;
  e_info_8168c_1[1].bits = 2U;
  e_info_8168c_1[2].offset = 6U;
  e_info_8168c_1[2].mask = 128U;
  e_info_8168c_1[2].bits = 0U;
  rtl_csi_access_enable_2(tp);
  writeb(30, (void volatile *)ioaddr + 209U);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168c_1), 3);
  __rtl_hw_start_8168cp(tp);
  }
  return;
}
}
static void rtl_hw_start_8168c_2(struct rtl8169_private *tp )
{
  struct ephy_info e_info_8168c_2[2U] ;
  {
  {
  e_info_8168c_2[0].offset = 1U;
  e_info_8168c_2[0].mask = 0U;
  e_info_8168c_2[0].bits = 1U;
  e_info_8168c_2[1].offset = 3U;
  e_info_8168c_2[1].mask = 1024U;
  e_info_8168c_2[1].bits = 544U;
  rtl_csi_access_enable_2(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168c_2), 2);
  __rtl_hw_start_8168cp(tp);
  }
  return;
}
}
static void rtl_hw_start_8168c_3(struct rtl8169_private *tp )
{
  {
  {
  rtl_hw_start_8168c_2(tp);
  }
  return;
}
}
static void rtl_hw_start_8168c_4(struct rtl8169_private *tp )
{
  {
  {
  rtl_csi_access_enable_2(tp);
  __rtl_hw_start_8168cp(tp);
  }
  return;
}
}
static void rtl_hw_start_8168d(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned short tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_2(tp);
  rtl_disable_clock_request(pdev);
  writeb(63, (void volatile *)ioaddr + 236U);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  tmp = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp & 8291, (void volatile *)ioaddr + 224U);
  }
  return;
}
}
static void rtl_hw_start_8168dp(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_1(tp);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_disable_clock_request(pdev);
  }
  return;
}
}
static void rtl_hw_start_8168d_4(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  struct ephy_info e_info_8168d_4[3U] ;
  int i ;
  struct ephy_info const *e ;
  u16 w ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  e_info_8168d_4[0].offset = 11U;
  e_info_8168d_4[0].mask = 65535U;
  e_info_8168d_4[0].bits = 72U;
  e_info_8168d_4[1].offset = 25U;
  e_info_8168d_4[1].mask = 32U;
  e_info_8168d_4[1].bits = 80U;
  e_info_8168d_4[2].offset = 12U;
  e_info_8168d_4[2].mask = 65535U;
  e_info_8168d_4[2].bits = 32U;
  rtl_csi_access_enable_1(tp);
  rtl_tx_performance_tweak(pdev, 20480);
  writeb(63, (void volatile *)ioaddr + 236U);
  i = 0;
  }
  goto ldv_49833;
  ldv_49832:
  {
  e = (struct ephy_info const *)(& e_info_8168d_4) + (unsigned long )i;
  w = rtl_ephy_read(tp, (int )e->offset);
  rtl_ephy_write(tp, 3, ((int )w & (int )((unsigned short )e->mask)) | (int )((unsigned short )e->bits));
  i = i + 1;
  }
  ldv_49833: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_49832;
  } else {
  }
  {
  rtl_enable_clock_request(pdev);
  }
  return;
}
}
static void rtl_hw_start_8168e_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  struct ephy_info e_info_8168e_1[13U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  e_info_8168e_1[0].offset = 0U;
  e_info_8168e_1[0].mask = 512U;
  e_info_8168e_1[0].bits = 256U;
  e_info_8168e_1[1].offset = 0U;
  e_info_8168e_1[1].mask = 0U;
  e_info_8168e_1[1].bits = 4U;
  e_info_8168e_1[2].offset = 6U;
  e_info_8168e_1[2].mask = 2U;
  e_info_8168e_1[2].bits = 1U;
  e_info_8168e_1[3].offset = 6U;
  e_info_8168e_1[3].mask = 0U;
  e_info_8168e_1[3].bits = 48U;
  e_info_8168e_1[4].offset = 7U;
  e_info_8168e_1[4].mask = 0U;
  e_info_8168e_1[4].bits = 8192U;
  e_info_8168e_1[5].offset = 0U;
  e_info_8168e_1[5].mask = 0U;
  e_info_8168e_1[5].bits = 32U;
  e_info_8168e_1[6].offset = 3U;
  e_info_8168e_1[6].mask = 22528U;
  e_info_8168e_1[6].bits = 8192U;
  e_info_8168e_1[7].offset = 3U;
  e_info_8168e_1[7].mask = 0U;
  e_info_8168e_1[7].bits = 1U;
  e_info_8168e_1[8].offset = 1U;
  e_info_8168e_1[8].mask = 2048U;
  e_info_8168e_1[8].bits = 4096U;
  e_info_8168e_1[9].offset = 7U;
  e_info_8168e_1[9].mask = 0U;
  e_info_8168e_1[9].bits = 16384U;
  e_info_8168e_1[10].offset = 30U;
  e_info_8168e_1[10].mask = 0U;
  e_info_8168e_1[10].bits = 8192U;
  e_info_8168e_1[11].offset = 25U;
  e_info_8168e_1[11].mask = 65535U;
  e_info_8168e_1[11].bits = 65132U;
  e_info_8168e_1[12].offset = 10U;
  e_info_8168e_1[12].mask = 0U;
  e_info_8168e_1[12].bits = 64U;
  rtl_csi_access_enable_2(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168e_1), 13);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_disable_clock_request(pdev);
  tmp = readl((void const volatile *)ioaddr + 240U);
  writel(tmp | 536870912U, (void volatile *)ioaddr + 240U);
  tmp___0 = readl((void const volatile *)ioaddr + 240U);
  writel(tmp___0 & 3758096383U, (void volatile *)ioaddr + 240U);
  tmp___1 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___1 & 247, (void volatile *)ioaddr + 86U);
  }
  return;
}
}
static void rtl_hw_start_8168e_2(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  struct ephy_info e_info_8168e_2[2U] ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned int tmp___3 ;
  unsigned char tmp___4 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  e_info_8168e_2[0].offset = 9U;
  e_info_8168e_2[0].mask = 0U;
  e_info_8168e_2[0].bits = 128U;
  e_info_8168e_2[1].offset = 25U;
  e_info_8168e_2[1].mask = 0U;
  e_info_8168e_2[1].bits = 548U;
  rtl_csi_access_enable_1(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168e_2), 2);
  }
  if ((tp->dev)->mtu <= 1500U) {
    {
    rtl_tx_performance_tweak(pdev, 20480);
    }
  } else {
  }
  {
  rtl_eri_write(tp, 192, 12288U, 0U, 0);
  rtl_eri_write(tp, 184, 12288U, 0U, 0);
  rtl_eri_write(tp, 200, 61440U, 1048578U, 0);
  rtl_eri_write(tp, 232, 61440U, 1048582U, 0);
  rtl_eri_write(tp, 204, 61440U, 80U, 0);
  rtl_eri_write(tp, 208, 61440U, 134152288U, 0);
  rtl_w1w0_eri(tp, 432, 4096U, 16U, 0U, 0);
  rtl_w1w0_eri(tp, 212, 12288U, 3072U, 65280U, 0);
  writeb(39, (void volatile *)ioaddr + 236U);
  rtl_disable_clock_request(pdev);
  tmp = readl((void const volatile *)ioaddr + 64U);
  writel(tmp | 128U, (void volatile *)ioaddr + 64U);
  tmp___0 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )tmp___0 & 127, (void volatile *)ioaddr + 211U);
  tmp___1 = readb((void const volatile *)ioaddr + 27U);
  writeb((int )tmp___1 & 248, (void volatile *)ioaddr + 27U);
  tmp___2 = readb((void const volatile *)ioaddr + 208U);
  writeb((int )((unsigned int )tmp___2 | 64U), (void volatile *)ioaddr + 208U);
  tmp___3 = readl((void const volatile *)ioaddr + 240U);
  writel(tmp___3 | 4194304U, (void volatile *)ioaddr + 240U);
  tmp___4 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___4 & 247, (void volatile *)ioaddr + 86U);
  }
  return;
}
}
static void rtl_hw_start_8168f(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char tmp___3 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_2(tp);
  rtl_tx_performance_tweak(pdev, 20480);
  rtl_eri_write(tp, 192, 12288U, 0U, 0);
  rtl_eri_write(tp, 184, 12288U, 0U, 0);
  rtl_eri_write(tp, 200, 61440U, 1048578U, 0);
  rtl_eri_write(tp, 232, 61440U, 1048582U, 0);
  rtl_w1w0_eri(tp, 220, 4096U, 0U, 1U, 0);
  rtl_w1w0_eri(tp, 220, 4096U, 1U, 0U, 0);
  rtl_w1w0_eri(tp, 432, 4096U, 16U, 0U, 0);
  rtl_w1w0_eri(tp, 464, 4096U, 16U, 0U, 0);
  rtl_eri_write(tp, 204, 61440U, 80U, 0);
  rtl_eri_write(tp, 208, 61440U, 96U, 0);
  writeb(39, (void volatile *)ioaddr + 236U);
  rtl_disable_clock_request(pdev);
  tmp = readl((void const volatile *)ioaddr + 64U);
  writel(tmp | 128U, (void volatile *)ioaddr + 64U);
  tmp___0 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )tmp___0 & 127, (void volatile *)ioaddr + 211U);
  tmp___1 = readb((void const volatile *)ioaddr + 208U);
  writeb((int )((unsigned int )tmp___1 | 64U), (void volatile *)ioaddr + 208U);
  tmp___2 = readl((void const volatile *)ioaddr + 240U);
  writel(tmp___2 | 4194304U, (void volatile *)ioaddr + 240U);
  tmp___3 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___3 & 247, (void volatile *)ioaddr + 86U);
  }
  return;
}
}
static void rtl_hw_start_8168f_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8168f_1[4U] ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8168f_1[0].offset = 6U;
  e_info_8168f_1[0].mask = 192U;
  e_info_8168f_1[0].bits = 32U;
  e_info_8168f_1[1].offset = 8U;
  e_info_8168f_1[1].mask = 1U;
  e_info_8168f_1[1].bits = 2U;
  e_info_8168f_1[2].offset = 9U;
  e_info_8168f_1[2].mask = 0U;
  e_info_8168f_1[2].bits = 128U;
  e_info_8168f_1[3].offset = 25U;
  e_info_8168f_1[3].mask = 0U;
  e_info_8168f_1[3].bits = 548U;
  rtl_hw_start_8168f(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168f_1), 4);
  rtl_w1w0_eri(tp, 212, 12288U, 3072U, 65280U, 0);
  tmp = readb((void const volatile *)ioaddr + 27U);
  writeb((int )tmp & 248, (void volatile *)ioaddr + 27U);
  }
  return;
}
}
static void rtl_hw_start_8411(struct rtl8169_private *tp )
{
  struct ephy_info e_info_8168f_1[4U] ;
  {
  {
  e_info_8168f_1[0].offset = 6U;
  e_info_8168f_1[0].mask = 192U;
  e_info_8168f_1[0].bits = 32U;
  e_info_8168f_1[1].offset = 15U;
  e_info_8168f_1[1].mask = 65535U;
  e_info_8168f_1[1].bits = 20992U;
  e_info_8168f_1[2].offset = 30U;
  e_info_8168f_1[2].mask = 0U;
  e_info_8168f_1[2].bits = 16384U;
  e_info_8168f_1[3].offset = 25U;
  e_info_8168f_1[3].mask = 0U;
  e_info_8168f_1[3].bits = 548U;
  rtl_hw_start_8168f(tp);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168f_1), 4);
  rtl_w1w0_eri(tp, 212, 12288U, 3072U, 0U, 0);
  }
  return;
}
}
static void rtl_hw_start_8168g_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  tmp = readl((void const volatile *)ioaddr + 64U);
  writel(tmp | 128U, (void volatile *)ioaddr + 64U);
  rtl_eri_write(tp, 200, 20480U, 524290U, 0);
  rtl_eri_write(tp, 204, 4096U, 56U, 0);
  rtl_eri_write(tp, 208, 4096U, 72U, 0);
  rtl_eri_write(tp, 232, 61440U, 1048582U, 0);
  rtl_csi_access_enable_1(tp);
  rtl_tx_performance_tweak(pdev, 20480);
  rtl_w1w0_eri(tp, 220, 4096U, 0U, 1U, 0);
  rtl_w1w0_eri(tp, 220, 4096U, 1U, 0U, 0);
  rtl_eri_write(tp, 760, 12288U, 7567U, 0);
  writeb(12, (void volatile *)ioaddr + 55U);
  tmp___0 = readl((void const volatile *)ioaddr + 240U);
  writel(tmp___0 & 4294443007U, (void volatile *)ioaddr + 240U);
  writeb(39, (void volatile *)ioaddr + 236U);
  rtl_eri_write(tp, 192, 12288U, 0U, 0);
  rtl_eri_write(tp, 184, 12288U, 0U, 0);
  tmp___1 = readb((void const volatile *)ioaddr + 27U);
  writeb((int )tmp___1 & 248, (void volatile *)ioaddr + 27U);
  rtl_w1w0_eri(tp, 764, 4096U, 1U, 6U, 0);
  rtl_w1w0_eri(tp, 432, 12288U, 0U, 4096U, 0);
  }
  return;
}
}
static void rtl_hw_start_8168g_2(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8168g_2[4U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8168g_2[0].offset = 0U;
  e_info_8168g_2[0].mask = 0U;
  e_info_8168g_2[0].bits = 8U;
  e_info_8168g_2[1].offset = 12U;
  e_info_8168g_2[1].mask = 15856U;
  e_info_8168g_2[1].bits = 512U;
  e_info_8168g_2[2].offset = 25U;
  e_info_8168g_2[2].mask = 65535U;
  e_info_8168g_2[2].bits = 64512U;
  e_info_8168g_2[3].offset = 30U;
  e_info_8168g_2[3].mask = 65535U;
  e_info_8168g_2[3].bits = 8427U;
  rtl_hw_start_8168g_1(tp);
  tmp = readb((void const volatile *)ioaddr + 83U);
  writeb((int )tmp & 127, (void volatile *)ioaddr + 83U);
  tmp___0 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___0 & 254, (void volatile *)ioaddr + 86U);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8168g_2), 4);
  }
  return;
}
}
static void rtl_hw_start_8411_2(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8411_2[5U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8411_2[0].offset = 0U;
  e_info_8411_2[0].mask = 0U;
  e_info_8411_2[0].bits = 8U;
  e_info_8411_2[1].offset = 12U;
  e_info_8411_2[1].mask = 15856U;
  e_info_8411_2[1].bits = 512U;
  e_info_8411_2[2].offset = 15U;
  e_info_8411_2[2].mask = 65535U;
  e_info_8411_2[2].bits = 20992U;
  e_info_8411_2[3].offset = 25U;
  e_info_8411_2[3].mask = 32U;
  e_info_8411_2[3].bits = 0U;
  e_info_8411_2[4].offset = 30U;
  e_info_8411_2[4].mask = 0U;
  e_info_8411_2[4].bits = 8192U;
  rtl_hw_start_8168g_1(tp);
  tmp = readb((void const volatile *)ioaddr + 83U);
  writeb((int )tmp & 127, (void volatile *)ioaddr + 83U);
  tmp___0 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___0 & 254, (void volatile *)ioaddr + 86U);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8411_2), 5);
  }
  return;
}
}
static void rtl_hw_start_8168(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  writeb(192, (void volatile *)ioaddr + 80U);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, (unsigned int )rx_buf_sz);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  tp->cp_cmd = (u16 )((unsigned int )((int )tp->cp_cmd | (int )tmp___0) | 129U);
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  writew(20817, (void volatile *)ioaddr + 226U);
  }
  if ((unsigned int )tp->mac_version == 10U) {
    tp->event_slow = (u16 )((unsigned int )tp->event_slow | 16448U);
    tp->event_slow = (unsigned int )tp->event_slow & 65519U;
  } else {
  }
  {
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  rtl_set_rx_tx_config_registers(tp);
  readb((void const volatile *)ioaddr + 60U);
  }
  {
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  if ((int )tp->mac_version == 17) {
    goto case_17;
  } else {
  }
  if ((int )tp->mac_version == 18) {
    goto case_18;
  } else {
  }
  if ((int )tp->mac_version == 19) {
    goto case_19;
  } else {
  }
  if ((int )tp->mac_version == 20) {
    goto case_20;
  } else {
  }
  if ((int )tp->mac_version == 21) {
    goto case_21;
  } else {
  }
  if ((int )tp->mac_version == 22) {
    goto case_22;
  } else {
  }
  if ((int )tp->mac_version == 23) {
    goto case_23;
  } else {
  }
  if ((int )tp->mac_version == 24) {
    goto case_24;
  } else {
  }
  if ((int )tp->mac_version == 25) {
    goto case_25;
  } else {
  }
  if ((int )tp->mac_version == 26) {
    goto case_26;
  } else {
  }
  if ((int )tp->mac_version == 27) {
    goto case_27;
  } else {
  }
  if ((int )tp->mac_version == 30) {
    goto case_30;
  } else {
  }
  if ((int )tp->mac_version == 31) {
    goto case_31;
  } else {
  }
  if ((int )tp->mac_version == 32) {
    goto case_32;
  } else {
  }
  if ((int )tp->mac_version == 33) {
    goto case_33;
  } else {
  }
  if ((int )tp->mac_version == 34) {
    goto case_34;
  } else {
  }
  if ((int )tp->mac_version == 35) {
    goto case_35;
  } else {
  }
  if ((int )tp->mac_version == 37) {
    goto case_37;
  } else {
  }
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_10:
  {
  rtl_hw_start_8168bb(tp);
  }
  goto ldv_49894;
  case_11: ;
  case_16:
  {
  rtl_hw_start_8168bef(tp);
  }
  goto ldv_49894;
  case_17:
  {
  rtl_hw_start_8168cp_1(tp);
  }
  goto ldv_49894;
  case_18:
  {
  rtl_hw_start_8168c_1(tp);
  }
  goto ldv_49894;
  case_19:
  {
  rtl_hw_start_8168c_2(tp);
  }
  goto ldv_49894;
  case_20:
  {
  rtl_hw_start_8168c_3(tp);
  }
  goto ldv_49894;
  case_21:
  {
  rtl_hw_start_8168c_4(tp);
  }
  goto ldv_49894;
  case_22:
  {
  rtl_hw_start_8168cp_2(tp);
  }
  goto ldv_49894;
  case_23:
  {
  rtl_hw_start_8168cp_3(tp);
  }
  goto ldv_49894;
  case_24: ;
  case_25: ;
  case_26:
  {
  rtl_hw_start_8168d(tp);
  }
  goto ldv_49894;
  case_27:
  {
  rtl_hw_start_8168d_4(tp);
  }
  goto ldv_49894;
  case_30:
  {
  rtl_hw_start_8168dp(tp);
  }
  goto ldv_49894;
  case_31: ;
  case_32:
  {
  rtl_hw_start_8168e_1(tp);
  }
  goto ldv_49894;
  case_33:
  {
  rtl_hw_start_8168e_2(tp);
  }
  goto ldv_49894;
  case_34: ;
  case_35:
  {
  rtl_hw_start_8168f_1(tp);
  }
  goto ldv_49894;
  case_37:
  {
  rtl_hw_start_8411(tp);
  }
  goto ldv_49894;
  case_39: ;
  case_40:
  {
  rtl_hw_start_8168g_1(tp);
  }
  goto ldv_49894;
  case_41:
  {
  rtl_hw_start_8168g_2(tp);
  }
  goto ldv_49894;
  case_43:
  {
  rtl_hw_start_8411_2(tp);
  }
  goto ldv_49894;
  switch_default:
  {
  printk("\vr8169: %s: unknown chipset (mac_version = %d).\n", (char *)(& dev->name),
         (int )tp->mac_version);
  }
  goto ldv_49894;
  switch_break: ;
  }
  ldv_49894:
  {
  writeb(0, (void volatile *)ioaddr + 80U);
  writeb(12, (void volatile *)ioaddr + 55U);
  rtl_set_rx_mode(dev);
  tmp___1 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___1 & 61440, (void volatile *)ioaddr + 92U);
  }
  return;
}
}
static void rtl_hw_start_8102e_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  struct ephy_info e_info_8102e_1[8U] ;
  u8 cfg1 ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  e_info_8102e_1[0].offset = 1U;
  e_info_8102e_1[0].mask = 0U;
  e_info_8102e_1[0].bits = 28261U;
  e_info_8102e_1[1].offset = 2U;
  e_info_8102e_1[1].mask = 0U;
  e_info_8102e_1[1].bits = 2335U;
  e_info_8102e_1[2].offset = 3U;
  e_info_8102e_1[2].mask = 0U;
  e_info_8102e_1[2].bits = 49913U;
  e_info_8102e_1[3].offset = 6U;
  e_info_8102e_1[3].mask = 0U;
  e_info_8102e_1[3].bits = 44981U;
  e_info_8102e_1[4].offset = 7U;
  e_info_8102e_1[4].mask = 0U;
  e_info_8102e_1[4].bits = 3584U;
  e_info_8102e_1[5].offset = 25U;
  e_info_8102e_1[5].mask = 0U;
  e_info_8102e_1[5].bits = 60544U;
  e_info_8102e_1[6].offset = 1U;
  e_info_8102e_1[6].mask = 0U;
  e_info_8102e_1[6].bits = 11877U;
  e_info_8102e_1[7].offset = 1U;
  e_info_8102e_1[7].mask = 0U;
  e_info_8102e_1[7].bits = 28261U;
  rtl_csi_access_enable_2(tp);
  writeb(16, (void volatile *)ioaddr + 209U);
  rtl_tx_performance_tweak(pdev, 20480);
  writeb(223, (void volatile *)ioaddr + 82U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  cfg1 = readb((void const volatile *)ioaddr + 82U);
  }
  if (((int )cfg1 & 64) != 0 && (int )((signed char )cfg1) < 0) {
    {
    writeb((int )cfg1 & 191, (void volatile *)ioaddr + 82U);
    }
  } else {
  }
  {
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8102e_1), 8);
  }
  return;
}
}
static void rtl_hw_start_8102e_2(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  rtl_csi_access_enable_2(tp);
  rtl_tx_performance_tweak(pdev, 20480);
  writeb(15, (void volatile *)ioaddr + 82U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  }
  return;
}
}
static void rtl_hw_start_8102e_3(struct rtl8169_private *tp )
{
  {
  {
  rtl_hw_start_8102e_2(tp);
  rtl_ephy_write(tp, 3, 49913);
  }
  return;
}
}
static void rtl_hw_start_8105e_1(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8105e_1[8U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8105e_1[0].offset = 7U;
  e_info_8105e_1[0].mask = 0U;
  e_info_8105e_1[0].bits = 16384U;
  e_info_8105e_1[1].offset = 25U;
  e_info_8105e_1[1].mask = 0U;
  e_info_8105e_1[1].bits = 512U;
  e_info_8105e_1[2].offset = 25U;
  e_info_8105e_1[2].mask = 0U;
  e_info_8105e_1[2].bits = 32U;
  e_info_8105e_1[3].offset = 30U;
  e_info_8105e_1[3].mask = 0U;
  e_info_8105e_1[3].bits = 8192U;
  e_info_8105e_1[4].offset = 3U;
  e_info_8105e_1[4].mask = 0U;
  e_info_8105e_1[4].bits = 1U;
  e_info_8105e_1[5].offset = 25U;
  e_info_8105e_1[5].mask = 0U;
  e_info_8105e_1[5].bits = 256U;
  e_info_8105e_1[6].offset = 25U;
  e_info_8105e_1[6].mask = 0U;
  e_info_8105e_1[6].bits = 4U;
  e_info_8105e_1[7].offset = 10U;
  e_info_8105e_1[7].mask = 0U;
  e_info_8105e_1[7].bits = 32U;
  tmp = readl((void const volatile *)ioaddr + 240U);
  writel(tmp | 10240U, (void volatile *)ioaddr + 240U);
  tmp___0 = readl((void const volatile *)ioaddr + 240U);
  writel(tmp___0 & 4294901759U, (void volatile *)ioaddr + 240U);
  tmp___1 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )((unsigned int )tmp___1 | 12U), (void volatile *)ioaddr + 211U);
  tmp___2 = readb((void const volatile *)ioaddr + 208U);
  writeb((int )((unsigned int )tmp___2 | 64U), (void volatile *)ioaddr + 208U);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8105e_1), 8);
  }
  return;
}
}
static void rtl_hw_start_8105e_2(struct rtl8169_private *tp )
{
  u16 tmp ;
  {
  {
  rtl_hw_start_8105e_1(tp);
  tmp = rtl_ephy_read(tp, 30);
  rtl_ephy_write(tp, 30, (int )((unsigned int )tmp | 32768U));
  }
  return;
}
}
static void rtl_hw_start_8402(struct rtl8169_private *tp )
{
  void *ioaddr ;
  struct ephy_info e_info_8402[2U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ioaddr = tp->mmio_addr;
  e_info_8402[0].offset = 25U;
  e_info_8402[0].mask = 65535U;
  e_info_8402[0].bits = 65380U;
  e_info_8402[1].offset = 30U;
  e_info_8402[1].mask = 0U;
  e_info_8402[1].bits = 16384U;
  rtl_csi_access_enable_2(tp);
  tmp = readl((void const volatile *)ioaddr + 240U);
  writel(tmp | 10240U, (void volatile *)ioaddr + 240U);
  tmp___0 = readl((void const volatile *)ioaddr + 64U);
  writel(tmp___0 | 128U, (void volatile *)ioaddr + 64U);
  tmp___1 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )tmp___1 & 127, (void volatile *)ioaddr + 211U);
  rtl_ephy_init(tp, (struct ephy_info const *)(& e_info_8402), 2);
  rtl_tx_performance_tweak(tp->pci_dev, 20480);
  rtl_eri_write(tp, 200, 61440U, 2U, 0);
  rtl_eri_write(tp, 232, 61440U, 6U, 0);
  rtl_w1w0_eri(tp, 220, 4096U, 0U, 1U, 0);
  rtl_w1w0_eri(tp, 220, 4096U, 1U, 0U, 0);
  rtl_eri_write(tp, 192, 12288U, 0U, 0);
  rtl_eri_write(tp, 184, 12288U, 0U, 0);
  rtl_w1w0_eri(tp, 212, 12288U, 3584U, 65280U, 0);
  }
  return;
}
}
static void rtl_hw_start_8106(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readl((void const volatile *)ioaddr + 240U);
  writel(tmp | 10240U, (void volatile *)ioaddr + 240U);
  tmp___0 = readl((void const volatile *)ioaddr + 240U);
  writel((tmp___0 & 4286513151U) | 8388608U, (void volatile *)ioaddr + 240U);
  tmp___1 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )((unsigned int )tmp___1 | 12U), (void volatile *)ioaddr + 211U);
  tmp___2 = readb((void const volatile *)ioaddr + 208U);
  writeb((int )tmp___2 & 191, (void volatile *)ioaddr + 208U);
  }
  return;
}
}
static void rtl_hw_start_8101(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned short tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  }
  if ((unsigned int )tp->mac_version > 28U) {
    tp->event_slow = (unsigned int )tp->event_slow & 65471U;
  } else {
  }
  if ((unsigned int )tp->mac_version == 12U || (unsigned int )tp->mac_version == 15U) {
    {
    pcie_capability_set_word(pdev, 8, 2048);
    }
  } else {
  }
  {
  writeb(192, (void volatile *)ioaddr + 80U);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, (unsigned int )rx_buf_sz);
  tp->cp_cmd = (unsigned int )tp->cp_cmd & 8291U;
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  rtl_set_rx_tx_config_registers(tp);
  }
  {
  if ((int )tp->mac_version == 6) {
    goto case_6;
  } else {
  }
  if ((int )tp->mac_version == 7) {
    goto case_7;
  } else {
  }
  if ((int )tp->mac_version == 8) {
    goto case_8;
  } else {
  }
  if ((int )tp->mac_version == 28) {
    goto case_28;
  } else {
  }
  if ((int )tp->mac_version == 29) {
    goto case_29;
  } else {
  }
  if ((int )tp->mac_version == 36) {
    goto case_36;
  } else {
  }
  if ((int )tp->mac_version == 38) {
    goto case_38;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  goto switch_break;
  case_6:
  {
  rtl_hw_start_8102e_1(tp);
  }
  goto ldv_49965;
  case_7:
  {
  rtl_hw_start_8102e_3(tp);
  }
  goto ldv_49965;
  case_8:
  {
  rtl_hw_start_8102e_2(tp);
  }
  goto ldv_49965;
  case_28:
  {
  rtl_hw_start_8105e_1(tp);
  }
  goto ldv_49965;
  case_29:
  {
  rtl_hw_start_8105e_2(tp);
  }
  goto ldv_49965;
  case_36:
  {
  rtl_hw_start_8402(tp);
  }
  goto ldv_49965;
  case_38:
  {
  rtl_hw_start_8106(tp);
  }
  goto ldv_49965;
  case_42:
  {
  rtl_hw_start_8168g_2(tp);
  }
  goto ldv_49965;
  switch_break: ;
  }
  ldv_49965:
  {
  writeb(0, (void volatile *)ioaddr + 80U);
  writew(0, (void volatile *)ioaddr + 226U);
  writeb(12, (void volatile *)ioaddr + 55U);
  rtl_set_rx_mode(dev);
  readb((void const volatile *)ioaddr + 60U);
  tmp___0 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___0 & 61440, (void volatile *)ioaddr + 92U);
  }
  return;
}
}
static int rtl8169_change_mtu(struct net_device *dev , int new_mtu )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  }
  if (new_mtu <= 59 || new_mtu > (int )rtl_chip_infos[(int )tp->mac_version].jumbo_max) {
    return (-22);
  } else {
  }
  if (new_mtu > 1500) {
    {
    rtl_hw_jumbo_enable(tp);
    }
  } else {
    {
    rtl_hw_jumbo_disable(tp);
    }
  }
  {
  dev->mtu = (unsigned int )new_mtu;
  netdev_update_features(dev);
  }
  return (0);
}
}
__inline static void rtl8169_make_unusable_by_asic(struct RxDesc *desc )
{
  {
  desc->addr = 841534158063459245ULL;
  desc->opts1 = desc->opts1 & 1073758207U;
  return;
}
}
static void rtl8169_free_rx_databuff(struct rtl8169_private *tp , void **data_buff ,
                                     struct RxDesc *desc )
{
  {
  {
  dma_unmap_single_attrs(& (tp->pci_dev)->dev, desc->addr, (size_t )rx_buf_sz, 2,
                         (struct dma_attrs *)0);
  kfree((void const *)*data_buff);
  *data_buff = (void *)0;
  rtl8169_make_unusable_by_asic(desc);
  }
  return;
}
}
__inline static void rtl8169_mark_to_asic(struct RxDesc *desc , u32 rx_buf_sz___0 )
{
  u32 eor ;
  {
  eor = desc->opts1 & 1073741824U;
  desc->opts1 = (eor | rx_buf_sz___0) | 2147483648U;
  return;
}
}
__inline static void rtl8169_map_to_asic(struct RxDesc *desc , dma_addr_t mapping ,
                                         u32 rx_buf_sz___0 )
{
  {
  {
  desc->addr = mapping;
  __asm__ volatile ("sfence": : : "memory");
  rtl8169_mark_to_asic(desc, rx_buf_sz___0);
  }
  return;
}
}
__inline static void *rtl8169_align(void *data )
{
  {
  return ((void *)(((long )data + 15L) & -16L));
}
}
static struct sk_buff *rtl8169_alloc_rx_data(struct rtl8169_private *tp , struct RxDesc *desc )
{
  void *data ;
  dma_addr_t mapping ;
  struct device *d ;
  struct net_device *dev ;
  int node ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  d = & (tp->pci_dev)->dev;
  dev = tp->dev;
  if ((unsigned long )dev->dev.parent != (unsigned long )((struct device *)0)) {
    {
    tmp = dev_to_node(dev->dev.parent);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = -1;
  }
  {
  node = tmp___0;
  data = kmalloc_node((size_t )rx_buf_sz, 208U, node);
  }
  if ((unsigned long )data == (unsigned long )((void *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  {
  tmp___1 = rtl8169_align(data);
  }
  if ((unsigned long )tmp___1 != (unsigned long )data) {
    {
    kfree((void const *)data);
    data = kmalloc_node((size_t )(rx_buf_sz + 15), 208U, node);
    }
    if ((unsigned long )data == (unsigned long )((void *)0)) {
      return ((struct sk_buff *)0);
    } else {
    }
  } else {
  }
  {
  tmp___2 = rtl8169_align(data);
  mapping = dma_map_single_attrs(d, tmp___2, (size_t )rx_buf_sz, 2, (struct dma_attrs *)0);
  tmp___4 = dma_mapping_error(d, mapping);
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___3 = net_ratelimit();
    }
    if (tmp___3 != 0) {
      if ((int )tp->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)tp->dev, "Failed to map RX DMA!\n");
        }
      } else {
      }
    } else {
    }
    goto err_out;
  } else {
  }
  {
  rtl8169_map_to_asic(desc, mapping, (u32 )rx_buf_sz);
  }
  return ((struct sk_buff *)data);
  err_out:
  {
  kfree((void const *)data);
  }
  return ((struct sk_buff *)0);
}
}
static void rtl8169_rx_clear(struct rtl8169_private *tp )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_50014;
  ldv_50013: ;
  if ((unsigned long )tp->Rx_databuff[i] != (unsigned long )((void *)0)) {
    {
    rtl8169_free_rx_databuff(tp, (void **)(& tp->Rx_databuff) + (unsigned long )i,
                             tp->RxDescArray + (unsigned long )i);
    }
  } else {
  }
  i = i + 1U;
  ldv_50014: ;
  if (i <= 255U) {
    goto ldv_50013;
  } else {
  }
  return;
}
}
__inline static void rtl8169_mark_as_last_descriptor(struct RxDesc *desc )
{
  {
  desc->opts1 = desc->opts1 | 1073741824U;
  return;
}
}
static int rtl8169_rx_fill(struct rtl8169_private *tp )
{
  unsigned int i ;
  void *data ;
  struct sk_buff *tmp ;
  {
  i = 0U;
  goto ldv_50027;
  ldv_50026: ;
  if ((unsigned long )tp->Rx_databuff[i] != (unsigned long )((void *)0)) {
    goto ldv_50024;
  } else {
  }
  {
  tmp = rtl8169_alloc_rx_data(tp, tp->RxDescArray + (unsigned long )i);
  data = (void *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((void *)0)) {
    {
    rtl8169_make_unusable_by_asic(tp->RxDescArray + (unsigned long )i);
    }
    goto err_out;
  } else {
  }
  tp->Rx_databuff[i] = data;
  ldv_50024:
  i = i + 1U;
  ldv_50027: ;
  if (i <= 255U) {
    goto ldv_50026;
  } else {
  }
  {
  rtl8169_mark_as_last_descriptor(tp->RxDescArray + 255U);
  }
  return (0);
  err_out:
  {
  rtl8169_rx_clear(tp);
  }
  return (-12);
}
}
static int rtl8169_init_ring(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl8169_init_ring_indexes(tp);
  memset((void *)(& tp->tx_skb), 0, 1024UL);
  memset((void *)(& tp->Rx_databuff), 0, 2048UL);
  tmp___0 = rtl8169_rx_fill(tp);
  }
  return (tmp___0);
}
}
static void rtl8169_unmap_tx_skb(struct device *d , struct ring_info *tx_skb , struct TxDesc *desc )
{
  unsigned int len ;
  {
  {
  len = tx_skb->len;
  dma_unmap_single_attrs(d, desc->addr, (size_t )len, 1, (struct dma_attrs *)0);
  desc->opts1 = 0U;
  desc->opts2 = 0U;
  desc->addr = 0ULL;
  tx_skb->len = 0U;
  }
  return;
}
}
static void rtl8169_tx_clear_range(struct rtl8169_private *tp , u32 start , unsigned int n )
{
  unsigned int i ;
  unsigned int entry ;
  struct ring_info *tx_skb ;
  unsigned int len ;
  struct sk_buff *skb ;
  {
  i = 0U;
  goto ldv_50050;
  ldv_50049:
  entry = (start + i) & 63U;
  tx_skb = (struct ring_info *)(& tp->tx_skb) + (unsigned long )entry;
  len = tx_skb->len;
  if (len != 0U) {
    {
    skb = tx_skb->skb;
    rtl8169_unmap_tx_skb(& (tp->pci_dev)->dev, tx_skb, tp->TxDescArray + (unsigned long )entry);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      {
      (tp->dev)->stats.tx_dropped = (tp->dev)->stats.tx_dropped + 1UL;
      consume_skb(skb);
      tx_skb->skb = (struct sk_buff *)0;
      }
    } else {
    }
  } else {
  }
  i = i + 1U;
  ldv_50050: ;
  if (i < n) {
    goto ldv_50049;
  } else {
  }
  return;
}
}
static void rtl8169_tx_clear(struct rtl8169_private *tp )
{
  u32 tmp ;
  {
  {
  rtl8169_tx_clear_range(tp, tp->dirty_tx, 64U);
  tmp = 0U;
  tp->dirty_tx = tmp;
  tp->cur_tx = tmp;
  }
  return;
}
}
static void rtl_reset_work(struct rtl8169_private *tp )
{
  struct net_device *dev ;
  int i ;
  {
  {
  dev = tp->dev;
  napi_disable(& tp->napi);
  netif_stop_queue(dev);
  synchronize_sched();
  rtl8169_hw_reset(tp);
  i = 0;
  }
  goto ldv_50061;
  ldv_50060:
  {
  rtl8169_mark_to_asic(tp->RxDescArray + (unsigned long )i, (u32 )rx_buf_sz);
  i = i + 1;
  }
  ldv_50061: ;
  if ((unsigned int )i <= 255U) {
    goto ldv_50060;
  } else {
  }
  {
  rtl8169_tx_clear(tp);
  rtl8169_init_ring_indexes(tp);
  napi_enable(& tp->napi);
  rtl_hw_start(dev);
  netif_wake_queue(dev);
  rtl8169_check_link_status(dev, tp, tp->mmio_addr);
  }
  return;
}
}
static void rtl8169_tx_timeout(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl_schedule_task(tp, 2);
  }
  return;
}
}
static int rtl8169_xmit_frags(struct rtl8169_private *tp , struct sk_buff *skb , u32 *opts )
{
  struct skb_shared_info *info ;
  unsigned char *tmp ;
  unsigned int cur_frag ;
  unsigned int entry ;
  struct TxDesc *txd ;
  struct device *d ;
  skb_frag_t const *frag ;
  dma_addr_t mapping ;
  u32 status ;
  u32 len ;
  void *addr ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  info = (struct skb_shared_info *)tmp;
  txd = txd;
  d = & (tp->pci_dev)->dev;
  entry = tp->cur_tx;
  cur_frag = 0U;
  }
  goto ldv_50084;
  ldv_50083:
  {
  frag = (skb_frag_t const *)(& info->frags) + (unsigned long )cur_frag;
  entry = (entry + 1U) & 63U;
  txd = tp->TxDescArray + (unsigned long )entry;
  len = skb_frag_size(frag);
  addr = skb_frag_address(frag);
  mapping = dma_map_single_attrs(d, addr, (size_t )len, 1, (struct dma_attrs *)0);
  tmp___1 = dma_mapping_error(d, mapping);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___0 = net_ratelimit();
    }
    if (tmp___0 != 0) {
      if ((int )tp->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)tp->dev, "Failed to map TX fragments DMA!\n");
        }
      } else {
      }
    } else {
    }
    goto err_out;
  } else {
  }
  status = (*opts | len) | (((entry + 1U) & 63U) == 0U ? 1073741824U : 0U);
  txd->opts1 = status;
  txd->opts2 = *(opts + 1UL);
  txd->addr = mapping;
  tp->tx_skb[entry].len = len;
  cur_frag = cur_frag + 1U;
  ldv_50084: ;
  if (cur_frag < (unsigned int )info->nr_frags) {
    goto ldv_50083;
  } else {
  }
  if (cur_frag != 0U) {
    tp->tx_skb[entry].skb = skb;
    txd->opts1 = txd->opts1 | 268435456U;
  } else {
  }
  return ((int )cur_frag);
  err_out:
  {
  rtl8169_tx_clear_range(tp, tp->cur_tx + 1U, cur_frag);
  }
  return (-5);
}
}
static bool rtl_skb_pad(struct sk_buff *skb )
{
  int tmp ;
  {
  {
  tmp = skb_padto(skb, 60U);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  skb_put(skb, 60U - skb->len);
  }
  return (1);
}
}
static bool rtl_test_hw_pad_bug(struct rtl8169_private *tp , struct sk_buff *skb )
{
  {
  return ((bool )(skb->len <= 59U && (unsigned int )tp->mac_version == 33U));
}
}
__inline static bool rtl8169_tso_csum(struct rtl8169_private *tp , struct sk_buff *skb ,
                                      u32 *opts )
{
  struct rtl_tx_desc_info const *info ;
  u32 mss ;
  unsigned char *tmp ;
  int offset ;
  u32 _min1 ;
  unsigned int _min2 ;
  struct iphdr const *ip ;
  struct iphdr *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  bool tmp___9 ;
  bool tmp___10 ;
  long tmp___11 ;
  {
  {
  info = (struct rtl_tx_desc_info const *)(& tx_desc_info) + (unsigned long )tp->txd_version;
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  mss = (u32 )((struct skb_shared_info *)tmp)->gso_size;
  offset = (int )info->opts_offset;
  }
  if (mss != 0U) {
    *opts = *opts | 134217728U;
    _min1 = mss;
    _min2 = 2047U;
    *(opts + (unsigned long )offset) = *(opts + (unsigned long )offset) | ((_min1 < _min2 ? _min1 : _min2) << (int )info->mss_shift);
  } else
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    {
    tmp___0 = ip_hdr((struct sk_buff const *)skb);
    ip = (struct iphdr const *)tmp___0;
    tmp___4 = rtl_test_hw_pad_bug(tp, skb);
    tmp___5 = ldv__builtin_expect((long )tmp___4, 0L);
    }
    if (tmp___5 != 0L) {
      {
      tmp___1 = skb_checksum_help(skb);
      }
      if (tmp___1 == 0) {
        {
        tmp___2 = rtl_skb_pad(skb);
        }
        if ((int )tmp___2) {
          tmp___3 = 1;
        } else {
          tmp___3 = 0;
        }
      } else {
        tmp___3 = 0;
      }
      return ((bool )tmp___3);
    } else {
    }
    if ((unsigned int )((unsigned char )ip->protocol) == 6U) {
      *(opts + (unsigned long )offset) = *(opts + (unsigned long )offset) | (u32 )info->checksum.tcp;
    } else
    if ((unsigned int )((unsigned char )ip->protocol) == 17U) {
      *(opts + (unsigned long )offset) = *(opts + (unsigned long )offset) | (u32 )info->checksum.udp;
    } else {
      {
      __ret_warn_once = 1;
      tmp___8 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
      }
      if (tmp___8 != 0L) {
        {
        __ret_warn_on = ! __warned;
        tmp___6 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        }
        if (tmp___6 != 0L) {
          {
          warn_slowpath_null("drivers/net/ethernet/realtek/r8169.c", 5965);
          }
        } else {
        }
        {
        tmp___7 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        }
        if (tmp___7 != 0L) {
          __warned = 1;
        } else {
        }
      } else {
      }
      {
      ldv__builtin_expect(__ret_warn_once != 0, 0L);
      }
    }
  } else {
    {
    tmp___10 = rtl_test_hw_pad_bug(tp, skb);
    tmp___11 = ldv__builtin_expect((long )tmp___10, 0L);
    }
    if (tmp___11 != 0L) {
      {
      tmp___9 = rtl_skb_pad(skb);
      }
      return (tmp___9);
    } else {
    }
  }
  return (1);
}
}
static netdev_tx_t rtl8169_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned int entry ;
  struct TxDesc *txd ;
  void *ioaddr ;
  struct device *d ;
  dma_addr_t mapping ;
  u32 status ;
  u32 len ;
  u32 opts[2U] ;
  int frags ;
  unsigned char *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  entry = tp->cur_tx & 63U;
  txd = tp->TxDescArray + (unsigned long )entry;
  ioaddr = tp->mmio_addr;
  d = & (tp->pci_dev)->dev;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((tp->dirty_tx - tp->cur_tx) + 64U < (u32 )((int )((struct skb_shared_info *)tmp___0)->nr_frags + 1),
                             0L);
  }
  if (tmp___1 != 0L) {
    if ((int )tp->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)dev, "BUG! Tx Ring full when queue awake!\n");
      }
    } else {
    }
    goto err_stop_0;
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((int )txd->opts1 < 0, 0L);
  }
  if (tmp___2 != 0L) {
    goto err_stop_0;
  } else {
  }
  {
  opts[1] = rtl8169_tx_vlan_tag(skb);
  opts[0] = 2147483648U;
  tmp___3 = rtl8169_tso_csum(tp, skb, (u32 *)(& opts));
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    goto err_update_stats;
  } else {
  }
  {
  len = skb_headlen((struct sk_buff const *)skb);
  mapping = dma_map_single_attrs(d, (void *)skb->data, (size_t )len, 1, (struct dma_attrs *)0);
  tmp___6 = dma_mapping_error(d, mapping);
  tmp___7 = ldv__builtin_expect(tmp___6 != 0, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___5 = net_ratelimit();
    }
    if (tmp___5 != 0) {
      if ((int )tp->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)dev, "Failed to map TX DMA!\n");
        }
      } else {
      }
    } else {
    }
    goto err_dma_0;
  } else {
  }
  {
  tp->tx_skb[entry].len = len;
  txd->addr = mapping;
  frags = rtl8169_xmit_frags(tp, skb, (u32 *)(& opts));
  }
  if (frags < 0) {
    goto err_dma_1;
  } else
  if (frags != 0) {
    opts[0] = opts[0] | 536870912U;
  } else {
    opts[0] = opts[0] | 805306368U;
    tp->tx_skb[entry].skb = skb;
  }
  {
  txd->opts2 = opts[1];
  skb_tx_timestamp(skb);
  __asm__ volatile ("sfence": : : "memory");
  status = (opts[0] | len) | (((entry + 1U) & 63U) == 0U ? 1073741824U : 0U);
  txd->opts1 = status;
  tp->cur_tx = (tp->cur_tx + (u32 )frags) + 1U;
  __asm__ volatile ("sfence": : : "memory");
  writeb(64, (void volatile *)ioaddr + 56U);
  __asm__ volatile ("": : : "memory");
  }
  if ((tp->dirty_tx - tp->cur_tx) + 64U <= 17U) {
    {
    __asm__ volatile ("": : : "memory");
    netif_stop_queue(dev);
    __asm__ volatile ("mfence": : : "memory");
    }
    if ((tp->dirty_tx - tp->cur_tx) + 64U > 17U) {
      {
      netif_wake_queue(dev);
      }
    } else {
    }
  } else {
  }
  return (0);
  err_dma_1:
  {
  rtl8169_unmap_tx_skb(d, (struct ring_info *)(& tp->tx_skb) + (unsigned long )entry,
                       txd);
  }
  err_dma_0:
  {
  consume_skb(skb);
  }
  err_update_stats:
  dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
  return (0);
  err_stop_0:
  {
  netif_stop_queue(dev);
  dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
  }
  return (16);
}
}
static void rtl8169_pcierr_interrupt(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  u16 pci_status ;
  u16 pci_cmd ;
  void *ioaddr ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_cmd);
  pci_read_config_word((struct pci_dev const *)pdev, 6, & pci_status);
  }
  if ((tp->msg_enable & 512U) != 0U) {
    {
    netdev_err((struct net_device const *)dev, "PCI error (cmd = 0x%04x, status = 0x%04x)\n",
               (int )pci_cmd, (int )pci_status);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)pdev + 2497UL) != 0U) {
    pci_cmd = (unsigned int )pci_cmd & 65471U;
  } else {
    pci_cmd = (u16 )((unsigned int )pci_cmd | 320U);
  }
  {
  pci_write_config_word((struct pci_dev const *)pdev, 4, (int )pci_cmd);
  pci_write_config_word((struct pci_dev const *)pdev, 6, (int )pci_status & 63488);
  }
  if (((int )tp->cp_cmd & 16) != 0 && tp->cur_rx == 0U) {
    ioaddr = tp->mmio_addr;
    if ((tp->msg_enable & 512U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "disabling PCI DAC\n");
      }
    } else {
    }
    {
    tp->cp_cmd = (unsigned int )tp->cp_cmd & 65519U;
    writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
    dev->features = dev->features & 0xffffffffffffffdfULL;
    }
  } else {
  }
  {
  rtl8169_hw_reset(tp);
  rtl_schedule_task(tp, 2);
  }
  return;
}
}
static void rtl_tx(struct net_device *dev , struct rtl8169_private *tp )
{
  unsigned int dirty_tx ;
  unsigned int tx_left ;
  unsigned int entry ;
  struct ring_info *tx_skb ;
  u32 status ;
  bool tmp ;
  void *ioaddr ;
  {
  dirty_tx = tp->dirty_tx;
  __asm__ volatile ("": : : "memory");
  tx_left = tp->cur_tx - dirty_tx;
  goto ldv_50147;
  ldv_50146:
  entry = dirty_tx & 63U;
  tx_skb = (struct ring_info *)(& tp->tx_skb) + (unsigned long )entry;
  __asm__ volatile ("lfence": : : "memory");
  status = (tp->TxDescArray + (unsigned long )entry)->opts1;
  if ((int )status < 0) {
    goto ldv_50145;
  } else {
  }
  {
  rtl8169_unmap_tx_skb(& (tp->pci_dev)->dev, tx_skb, tp->TxDescArray + (unsigned long )entry);
  }
  if ((status & 268435456U) != 0U) {
    {
    u64_stats_update_begin(& tp->tx_stats.syncp);
    tp->tx_stats.packets = tp->tx_stats.packets + 1ULL;
    tp->tx_stats.bytes = tp->tx_stats.bytes + (u64 )(tx_skb->skb)->len;
    u64_stats_update_begin(& tp->tx_stats.syncp);
    consume_skb(tx_skb->skb);
    tx_skb->skb = (struct sk_buff *)0;
    }
  } else {
  }
  dirty_tx = dirty_tx + 1U;
  tx_left = tx_left - 1U;
  ldv_50147: ;
  if (tx_left != 0U) {
    goto ldv_50146;
  } else {
  }
  ldv_50145: ;
  if (tp->dirty_tx != dirty_tx) {
    {
    tp->dirty_tx = dirty_tx;
    __asm__ volatile ("mfence": : : "memory");
    tmp = netif_queue_stopped((struct net_device const *)dev);
    }
    if ((int )tmp && (tp->dirty_tx - tp->cur_tx) + 64U > 17U) {
      {
      netif_wake_queue(dev);
      }
    } else {
    }
    if (tp->cur_tx != dirty_tx) {
      {
      ioaddr = tp->mmio_addr;
      writeb(64, (void volatile *)ioaddr + 56U);
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static int rtl8169_fragmented_frame(u32 status )
{
  {
  return ((status & 805306368U) != 805306368U);
}
}
__inline static void rtl8169_rx_csum(struct sk_buff *skb , u32 opts1 )
{
  u32 status ;
  {
  status = opts1 & 393216U;
  if ((status == 131072U && (opts1 & 16384U) == 0U) || (status == 262144U && (opts1 & 32768U) == 0U)) {
    skb->ip_summed = 1U;
  } else {
    {
    skb_checksum_none_assert((struct sk_buff const *)skb);
    }
  }
  return;
}
}
static struct sk_buff *rtl8169_try_rx_copy(void *data , struct rtl8169_private *tp ,
                                           int pkt_size , dma_addr_t addr )
{
  struct sk_buff *skb ;
  struct device *d ;
  {
  {
  d = & (tp->pci_dev)->dev;
  data = rtl8169_align(data);
  dma_sync_single_for_cpu(d, addr, (size_t )pkt_size, 2);
  __builtin_prefetch((void const *)data);
  skb = netdev_alloc_skb_ip_align(tp->dev, (unsigned int )pkt_size);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    memcpy((void *)skb->data, (void const *)data, (size_t )pkt_size);
    }
  } else {
  }
  {
  dma_sync_single_for_device(d, addr, (size_t )pkt_size, 2);
  }
  return (skb);
}
}
static int rtl_rx(struct net_device *dev , struct rtl8169_private *tp , u32 budget )
{
  unsigned int cur_rx ;
  unsigned int rx_left ;
  unsigned int count ;
  u32 _min1 ;
  unsigned int _min2 ;
  unsigned int entry ;
  struct RxDesc *desc ;
  u32 status ;
  struct sk_buff *skb ;
  dma_addr_t addr ;
  int pkt_size ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  cur_rx = tp->cur_rx;
  _min1 = budget;
  _min2 = 256U;
  rx_left = _min1 < _min2 ? _min1 : _min2;
  goto ldv_50186;
  ldv_50185:
  entry = cur_rx & 255U;
  desc = tp->RxDescArray + (unsigned long )entry;
  __asm__ volatile ("lfence": : : "memory");
  status = desc->opts1 & tp->opts1_mask;
  if ((int )status < 0) {
    goto ldv_50179;
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((status & 2097152U) != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    if ((tp->msg_enable & 64U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "Rx ERROR. status = %08x\n", status);
      }
    } else {
    }
    dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
    if ((status & 5242880U) != 0U) {
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    } else {
    }
    if ((status & 524288U) != 0U) {
      dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
    } else {
    }
    if ((status & 8388608U) != 0U) {
      {
      rtl_schedule_task(tp, 2);
      dev->stats.rx_fifo_errors = dev->stats.rx_fifo_errors + 1UL;
      }
    } else {
    }
    if (((status & 1572864U) != 0U && (status & 12582912U) == 0U) && (dev->features & 68719476736ULL) != 0ULL) {
      goto process_pkt;
    } else {
    }
  } else {
    process_pkt:
    {
    addr = desc->addr;
    tmp = ldv__builtin_expect((dev->features & 34359738368ULL) == 0ULL, 1L);
    }
    if (tmp != 0L) {
      pkt_size = (int )((status & 16383U) - 4U);
    } else {
      pkt_size = (int )status & 16383;
    }
    {
    tmp___0 = rtl8169_fragmented_frame(status);
    tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
    }
    if (tmp___1 != 0L) {
      dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
      goto release_descriptor;
    } else {
    }
    {
    skb = rtl8169_try_rx_copy(tp->Rx_databuff[entry], tp, pkt_size, addr);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
      goto release_descriptor;
    } else {
    }
    {
    rtl8169_rx_csum(skb, status);
    skb_put(skb, (unsigned int )pkt_size);
    skb->protocol = eth_type_trans(skb, dev);
    rtl8169_rx_vlan_tag(desc, skb);
    napi_gro_receive(& tp->napi, skb);
    u64_stats_update_begin(& tp->rx_stats.syncp);
    tp->rx_stats.packets = tp->rx_stats.packets + 1ULL;
    tp->rx_stats.bytes = tp->rx_stats.bytes + (u64 )pkt_size;
    u64_stats_update_begin(& tp->rx_stats.syncp);
    }
  }
  release_descriptor:
  {
  desc->opts2 = 0U;
  __asm__ volatile ("sfence": : : "memory");
  rtl8169_mark_to_asic(desc, (u32 )rx_buf_sz);
  rx_left = rx_left - 1U;
  cur_rx = cur_rx + 1U;
  }
  ldv_50186: ;
  if (rx_left != 0U) {
    goto ldv_50185;
  } else {
  }
  ldv_50179:
  count = cur_rx - tp->cur_rx;
  tp->cur_rx = cur_rx;
  return ((int )count);
}
}
static irqreturn_t rtl8169_interrupt(int irq , void *dev_instance )
{
  struct net_device *dev ;
  struct rtl8169_private *tp ;
  void *tmp ;
  int handled ;
  u16 status ;
  {
  {
  dev = (struct net_device *)dev_instance;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  handled = 0;
  status = rtl_get_events(tp);
  }
  if ((unsigned int )status - 1U <= 65533U) {
    status = (u16 )((unsigned int )status & ((unsigned int )tp->event_slow | 15U));
    if ((unsigned int )status != 0U) {
      {
      handled = 1;
      rtl_irq_disable(tp);
      napi_schedule(& tp->napi);
      }
    } else {
    }
  } else {
  }
  return (handled != 0);
}
}
static void rtl_slow_event_work(struct rtl8169_private *tp )
{
  struct net_device *dev ;
  u16 status ;
  u16 tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  dev = tp->dev;
  tmp = rtl_get_events(tp);
  status = (u16 )((int )tmp & (int )tp->event_slow);
  rtl_ack_events(tp, (int )status);
  tmp___0 = ldv__builtin_expect(((int )status & 64) != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    if ((int )tp->mac_version == 10) {
      goto case_10;
    } else {
    }
    goto switch_default;
    case_10:
    {
    netif_stop_queue(dev);
    set_bit(2L, (unsigned long volatile *)(& tp->wk.flags));
    }
    switch_default: ;
    goto ldv_50202;
    switch_break: ;
    }
    ldv_50202: ;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((int )((short )status) < 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    rtl8169_pcierr_interrupt(dev);
    }
  } else {
  }
  if (((int )status & 32) != 0) {
    {
    __rtl8169_check_link_status(dev, tp, tp->mmio_addr, 1);
    }
  } else {
  }
  {
  rtl_irq_enable_all(tp);
  }
  return;
}
}
static void rtl_task(struct work_struct *work )
{
  struct __anonstruct_rtl_work_323 rtl_work[3U] ;
  struct rtl8169_private *tp ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool pending ;
  int tmp___2 ;
  {
  {
  rtl_work[0].bitnr = 1;
  rtl_work[0].action = & rtl_slow_event_work;
  rtl_work[1].bitnr = 2;
  rtl_work[1].action = & rtl_reset_work;
  rtl_work[2].bitnr = 3;
  rtl_work[2].action = & rtl_phy_work;
  __mptr = (struct work_struct const *)work;
  tp = (struct rtl8169_private *)__mptr + 0xfffffffffffff128UL;
  dev = tp->dev;
  rtl_lock_work(tp);
  tmp = netif_running((struct net_device const *)dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto out_unlock;
  } else {
    {
    tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& tp->wk.flags));
    }
    if (tmp___1 == 0) {
      goto out_unlock;
    } else {
    }
  }
  i = 0;
  goto ldv_50221;
  ldv_50220:
  {
  tmp___2 = test_and_set_bit((long )rtl_work[i].bitnr, (unsigned long volatile *)(& tp->wk.flags));
  pending = tmp___2 != 0;
  }
  if ((int )pending) {
    {
    (*(rtl_work[i].action))(tp);
    }
  } else {
  }
  i = i + 1;
  ldv_50221: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_50220;
  } else {
  }
  out_unlock:
  {
  rtl_unlock_work(tp);
  }
  return;
}
}
static int rtl8169_poll(struct napi_struct *napi , int budget )
{
  struct rtl8169_private *tp ;
  struct napi_struct const *__mptr ;
  struct net_device *dev ;
  u16 enable_mask ;
  int work_done ;
  u16 status ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  tp = (struct rtl8169_private *)__mptr + 0xffffffffffffffe8UL;
  dev = tp->dev;
  enable_mask = (u16 )((unsigned int )tp->event_slow | 15U);
  work_done = 0;
  status = rtl_get_events(tp);
  rtl_ack_events(tp, (int )((u16 )((int )((short )status) & ~ ((int )((short )tp->event_slow)))));
  }
  if (((int )status & 3) != 0) {
    {
    work_done = rtl_rx(dev, tp, (unsigned int )budget);
    }
  } else {
  }
  if (((int )status & 12) != 0) {
    {
    rtl_tx(dev, tp);
    }
  } else {
  }
  if ((unsigned int )((int )status & (int )tp->event_slow) != 0U) {
    {
    enable_mask = (u16 )((int )((short )enable_mask) & ~ ((int )((short )tp->event_slow)));
    rtl_schedule_task(tp, 1);
    }
  } else {
  }
  if (work_done < budget) {
    {
    napi_complete(napi);
    rtl_irq_enable(tp, (int )enable_mask);
    __asm__ volatile ("": : : "memory");
    }
  } else {
  }
  return (work_done);
}
}
static void rtl8169_rx_missed(struct net_device *dev , void *ioaddr )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  }
  if ((unsigned int )tp->mac_version > 5U) {
    return;
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)ioaddr + 76U);
  dev->stats.rx_missed_errors = dev->stats.rx_missed_errors + ((unsigned long )tmp___0 & 16777215UL);
  writel(0U, (void volatile *)ioaddr + 76U);
  }
  return;
}
}
static void rtl8169_down(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  ldv_del_timer_sync_24(& tp->timer);
  napi_disable(& tp->napi);
  netif_stop_queue(dev);
  rtl8169_hw_reset(tp);
  rtl8169_rx_missed(dev, ioaddr);
  synchronize_sched();
  rtl8169_tx_clear(tp);
  rtl8169_rx_clear(tp);
  rtl_pll_power_down(tp);
  }
  return;
}
}
static int rtl8169_close(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  pm_runtime_get_sync(& pdev->dev);
  rtl8169_update_counters(dev);
  rtl_lock_work(tp);
  clear_bit(0L, (unsigned long volatile *)(& tp->wk.flags));
  rtl8169_down(dev);
  rtl_unlock_work(tp);
  cancel_work_sync(& tp->wk.work);
  ldv_free_irq_25(pdev->irq, (void *)dev);
  dma_free_attrs(& pdev->dev, 4096UL, (void *)tp->RxDescArray, tp->RxPhyAddr, (struct dma_attrs *)0);
  dma_free_attrs(& pdev->dev, 1024UL, (void *)tp->TxDescArray, tp->TxPhyAddr, (struct dma_attrs *)0);
  tp->TxDescArray = (struct TxDesc *)0;
  tp->RxDescArray = (struct RxDesc *)0;
  pm_runtime_put_sync(& pdev->dev);
  }
  return (0);
}
}
static void rtl8169_netpoll(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl8169_interrupt((int )(tp->pci_dev)->irq, (void *)dev);
  }
  return;
}
}
static int rtl_open(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  int retval ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  retval = -12;
  pm_runtime_get_sync(& pdev->dev);
  tmp___0 = dma_alloc_attrs(& pdev->dev, 1024UL, & tp->TxPhyAddr, 208U, (struct dma_attrs *)0);
  tp->TxDescArray = (struct TxDesc *)tmp___0;
  }
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    goto err_pm_runtime_put;
  } else {
  }
  {
  tmp___1 = dma_alloc_attrs(& pdev->dev, 4096UL, & tp->RxPhyAddr, 208U, (struct dma_attrs *)0);
  tp->RxDescArray = (struct RxDesc *)tmp___1;
  }
  if ((unsigned long )tp->RxDescArray == (unsigned long )((struct RxDesc *)0)) {
    goto err_free_tx_0;
  } else {
  }
  {
  retval = rtl8169_init_ring(dev);
  }
  if (retval < 0) {
    goto err_free_rx_1;
  } else {
  }
  {
  __init_work(& tp->wk.work, 0);
  __constr_expr_0.counter = 137438953408L;
  tp->wk.work.data = __constr_expr_0;
  lockdep_init_map(& tp->wk.work.lockdep_map, "(&tp->wk.work)", & __key, 0);
  INIT_LIST_HEAD(& tp->wk.work.entry);
  tp->wk.work.func = & rtl_task;
  __asm__ volatile ("mfence": : : "memory");
  rtl_request_firmware(tp);
  retval = ldv_request_irq_26(pdev->irq, & rtl8169_interrupt, (tp->features & 2U) != 0U ? 0UL : 128UL,
                              (char const *)(& dev->name), (void *)dev);
  }
  if (retval < 0) {
    goto err_release_fw_2;
  } else {
  }
  {
  rtl_lock_work(tp);
  set_bit(0L, (unsigned long volatile *)(& tp->wk.flags));
  napi_enable(& tp->napi);
  rtl8169_init_phy(dev, tp);
  __rtl8169_set_features(dev, dev->features);
  rtl_pll_power_up(tp);
  rtl_hw_start(dev);
  netif_start_queue(dev);
  rtl_unlock_work(tp);
  tp->saved_wolopts = 0U;
  pm_runtime_put_noidle(& pdev->dev);
  rtl8169_check_link_status(dev, tp, ioaddr);
  }
  out: ;
  return (retval);
  err_release_fw_2:
  {
  rtl_release_firmware(tp);
  rtl8169_rx_clear(tp);
  }
  err_free_rx_1:
  {
  dma_free_attrs(& pdev->dev, 4096UL, (void *)tp->RxDescArray, tp->RxPhyAddr, (struct dma_attrs *)0);
  tp->RxDescArray = (struct RxDesc *)0;
  }
  err_free_tx_0:
  {
  dma_free_attrs(& pdev->dev, 1024UL, (void *)tp->TxDescArray, tp->TxPhyAddr, (struct dma_attrs *)0);
  tp->TxDescArray = (struct TxDesc *)0;
  }
  err_pm_runtime_put:
  {
  pm_runtime_put_noidle(& pdev->dev);
  }
  goto out;
}
}
static struct rtnl_link_stats64 *rtl8169_get_stats64(struct net_device *dev , struct rtnl_link_stats64 *stats )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned int start ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___0) {
    {
    rtl8169_rx_missed(dev, ioaddr);
    }
  } else {
  }
  ldv_50274:
  {
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& tp->rx_stats.syncp));
  stats->rx_packets = tp->rx_stats.packets;
  stats->rx_bytes = tp->rx_stats.bytes;
  tmp___1 = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& tp->rx_stats.syncp),
                                     start);
  }
  if ((int )tmp___1) {
    goto ldv_50274;
  } else {
  }
  ldv_50276:
  {
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& tp->tx_stats.syncp));
  stats->tx_packets = tp->tx_stats.packets;
  stats->tx_bytes = tp->tx_stats.bytes;
  tmp___2 = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& tp->tx_stats.syncp),
                                     start);
  }
  if ((int )tmp___2) {
    goto ldv_50276;
  } else {
  }
  stats->rx_dropped = (__u64 )dev->stats.rx_dropped;
  stats->tx_dropped = (__u64 )dev->stats.tx_dropped;
  stats->rx_length_errors = (__u64 )dev->stats.rx_length_errors;
  stats->rx_errors = (__u64 )dev->stats.rx_errors;
  stats->rx_crc_errors = (__u64 )dev->stats.rx_crc_errors;
  stats->rx_fifo_errors = (__u64 )dev->stats.rx_fifo_errors;
  stats->rx_missed_errors = (__u64 )dev->stats.rx_missed_errors;
  return (stats);
}
}
static void rtl8169_net_suspend(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  {
  netif_device_detach(dev);
  netif_stop_queue(dev);
  rtl_lock_work(tp);
  napi_disable(& tp->napi);
  clear_bit(0L, (unsigned long volatile *)(& tp->wk.flags));
  rtl_unlock_work(tp);
  rtl_pll_power_down(tp);
  }
  return;
}
}
static int rtl8169_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  rtl8169_net_suspend(dev);
  }
  return (0);
}
}
static void __rtl8169_resume(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  netif_device_attach(dev);
  rtl_pll_power_up(tp);
  rtl_lock_work(tp);
  napi_enable(& tp->napi);
  set_bit(0L, (unsigned long volatile *)(& tp->wk.flags));
  rtl_unlock_work(tp);
  rtl_schedule_task(tp, 2);
  }
  return;
}
}
static int rtl8169_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  rtl8169_init_phy(dev, tp);
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    __rtl8169_resume(dev);
    }
  } else {
  }
  return (0);
}
}
static int rtl8169_runtime_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  }
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    return (0);
  } else {
  }
  {
  rtl_lock_work(tp);
  tp->saved_wolopts = __rtl8169_get_wol(tp);
  __rtl8169_set_wol(tp, 47U);
  rtl_unlock_work(tp);
  rtl8169_net_suspend(dev);
  }
  return (0);
}
}
static int rtl8169_runtime_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  }
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    return (0);
  } else {
  }
  {
  rtl_lock_work(tp);
  __rtl8169_set_wol(tp, tp->saved_wolopts);
  tp->saved_wolopts = 0U;
  rtl_unlock_work(tp);
  rtl8169_init_phy(dev, tp);
  __rtl8169_resume(dev);
  }
  return (0);
}
}
static int rtl8169_runtime_idle(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  }
  return ((unsigned long )tp->TxDescArray != (unsigned long )((struct TxDesc *)0) ? -16 : 0);
}
}
static struct dev_pm_ops const rtl8169_pm_ops =
     {0, 0, & rtl8169_suspend, & rtl8169_resume, & rtl8169_suspend, & rtl8169_resume,
    & rtl8169_suspend, & rtl8169_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rtl8169_runtime_suspend,
    & rtl8169_runtime_resume, & rtl8169_runtime_idle};
static void rtl_wol_shutdown_quirk(struct rtl8169_private *tp )
{
  void *ioaddr ;
  {
  ioaddr = tp->mmio_addr;
  {
  if ((int )tp->mac_version == 10) {
    goto case_10;
  } else {
  }
  if ((int )tp->mac_version == 11) {
    goto case_11;
  } else {
  }
  if ((int )tp->mac_version == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_10: ;
  case_11: ;
  case_16:
  {
  pci_clear_master(tp->pci_dev);
  writeb(8, (void volatile *)ioaddr + 55U);
  readb((void const volatile *)ioaddr + 55U);
  }
  goto ldv_50333;
  switch_default: ;
  goto ldv_50333;
  switch_break: ;
  }
  ldv_50333: ;
  return;
}
}
static void rtl_shutdown(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  struct device *d ;
  u32 tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  d = & pdev->dev;
  pm_runtime_get_sync(d);
  rtl8169_net_suspend(dev);
  rtl_rar_set(tp, (u8 *)(& dev->perm_addr));
  rtl8169_hw_reset(tp);
  }
  if ((unsigned int )system_state == 3U) {
    {
    tmp___1 = __rtl8169_get_wol(tp);
    }
    if ((tmp___1 & 47U) != 0U) {
      {
      rtl_wol_suspend_quirk(tp);
      rtl_wol_shutdown_quirk(tp);
      }
    } else {
    }
    {
    pci_wake_from_d3(pdev, 1);
    pci_set_power_state(pdev, 3);
    }
  } else {
  }
  {
  pm_runtime_put_noidle(d);
  }
  return;
}
}
static void rtl_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  }
  if ((unsigned int )tp->mac_version - 26U <= 1U || (unsigned int )tp->mac_version == 30U) {
    {
    rtl8168_driver_stop(tp);
    }
  } else {
  }
  {
  netif_napi_del(& tp->napi);
  ldv_unregister_netdev_27(dev);
  rtl_release_firmware(tp);
  tmp___1 = pci_dev_run_wake(pdev);
  }
  if ((int )tmp___1) {
    {
    pm_runtime_get_noresume(& pdev->dev);
    }
  } else {
  }
  {
  rtl_rar_set(tp, (u8 *)(& dev->perm_addr));
  rtl_disable_msi(pdev, tp);
  rtl8169_release_board(pdev, dev, tp->mmio_addr);
  }
  return;
}
}
static struct net_device_ops const rtl_netdev_ops =
     {0, 0, & rtl_open, & rtl8169_close, & rtl8169_start_xmit, 0, 0, & rtl_set_rx_mode,
    & rtl_set_mac_address, & eth_validate_addr, & rtl8169_ioctl, 0, & rtl8169_change_mtu,
    0, & rtl8169_tx_timeout, & rtl8169_get_stats64, 0, 0, 0, & rtl8169_netpoll, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rtl8169_fix_features,
    & rtl8169_set_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct rtl_cfg_info const rtl_cfg_infos[3U] = { {& rtl_hw_start_8169, 1U, 0U, 32880U, 4U, 0U},
        {& rtl_hw_start_8168, 2U, 8U, 32816U, 6U, 10U},
        {& rtl_hw_start_8101, 2U, 8U, 49264U, 2U, 12U}};
static unsigned int rtl_try_msi(struct rtl8169_private *tp , struct rtl_cfg_info const *cfg )
{
  void *ioaddr ;
  unsigned int msi ;
  u8 cfg2 ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  {
  ioaddr = tp->mmio_addr;
  msi = 0U;
  tmp = readb((void const volatile *)ioaddr + 83U);
  cfg2 = (unsigned int )tmp & 223U;
  }
  if (((unsigned int )cfg->features & 2U) != 0U) {
    {
    tmp___0 = pci_enable_msi_block(tp->pci_dev, 1);
    }
    if (tmp___0 != 0) {
      if ((tp->msg_enable & 8192U) != 0U) {
        {
        netdev_info((struct net_device const *)tp->dev, "no MSI. Back to INTx.\n");
        }
      } else {
      }
    } else {
      cfg2 = (u8 )((unsigned int )cfg2 | 32U);
      msi = 2U;
    }
  } else {
  }
  if ((unsigned int )tp->mac_version <= 5U) {
    {
    writeb((int )cfg2, (void volatile *)ioaddr + 83U);
    }
  } else {
  }
  return (msi);
}
}
static bool rtl_link_list_ready_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_link_list_ready_cond = {& rtl_link_list_ready_cond_check, "rtl_link_list_ready_cond"};
static bool rtl_link_list_ready_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 211U);
  }
  return (((int )tmp & 2) != 0);
}
}
static bool rtl_rxtx_empty_cond_check(struct rtl8169_private *tp ) ;
static struct rtl_cond const rtl_rxtx_empty_cond = {& rtl_rxtx_empty_cond_check, "rtl_rxtx_empty_cond"};
static bool rtl_rxtx_empty_cond_check(struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned char tmp ;
  {
  {
  ioaddr = tp->mmio_addr;
  tmp = readb((void const volatile *)ioaddr + 211U);
  }
  return (((int )tmp & 48) == 48);
}
}
static void rtl_hw_init_8168g(struct rtl8169_private *tp )
{
  void *ioaddr ;
  u32 data ;
  unsigned int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  u16 tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  u16 tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  {
  ioaddr = tp->mmio_addr;
  tp->ocp_base = 41984U;
  tmp = readl((void const volatile *)ioaddr + 240U);
  writel(tmp | 524288U, (void volatile *)ioaddr + 240U);
  tmp___0 = rtl_udelay_loop_wait_high(tp, & rtl_txcfg_empty_cond, 100U, 42);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  {
  tmp___2 = rtl_udelay_loop_wait_high(tp, & rtl_rxtx_empty_cond, 100U, 42);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return;
  } else {
  }
  {
  tmp___4 = readb((void const volatile *)ioaddr + 55U);
  writeb((int )tmp___4 & 243, (void volatile *)ioaddr + 55U);
  msleep(1U);
  tmp___5 = readb((void const volatile *)ioaddr + 211U);
  writeb((int )tmp___5 & 127, (void volatile *)ioaddr + 211U);
  tmp___6 = r8168_mac_ocp_read(tp, 59614U);
  data = (u32 )tmp___6;
  data = data & 4294950911U;
  r8168_mac_ocp_write(tp, 59614U, data);
  tmp___7 = rtl_udelay_loop_wait_high(tp, & rtl_link_list_ready_cond, 100U, 42);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    return;
  } else {
  }
  {
  tmp___9 = r8168_mac_ocp_read(tp, 59614U);
  data = (u32 )tmp___9;
  data = data | 32768U;
  r8168_mac_ocp_write(tp, 59614U, data);
  tmp___10 = rtl_udelay_loop_wait_high(tp, & rtl_link_list_ready_cond, 100U, 42);
  }
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    return;
  } else {
  }
  return;
}
}
static void rtl_hw_initialize(struct rtl8169_private *tp )
{
  {
  {
  if ((int )tp->mac_version == 39) {
    goto case_39;
  } else {
  }
  if ((int )tp->mac_version == 40) {
    goto case_40;
  } else {
  }
  if ((int )tp->mac_version == 41) {
    goto case_41;
  } else {
  }
  if ((int )tp->mac_version == 42) {
    goto case_42;
  } else {
  }
  if ((int )tp->mac_version == 43) {
    goto case_43;
  } else {
  }
  goto switch_default;
  case_39: ;
  case_40: ;
  case_41: ;
  case_42: ;
  case_43:
  {
  rtl_hw_init_8168g(tp);
  }
  goto ldv_50390;
  switch_default: ;
  goto ldv_50390;
  switch_break: ;
  }
  ldv_50390: ;
  return;
}
}
static int rtl_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct rtl_cfg_info const *cfg ;
  unsigned int region ;
  struct rtl8169_private *tp ;
  struct mii_if_info *mii ;
  struct net_device *dev ;
  void *ioaddr ;
  int chipset ;
  int i ;
  int rc ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned int tmp___8 ;
  bool tmp___9 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___10 ;
  unsigned int tmp___11 ;
  bool tmp___12 ;
  {
  cfg = (struct rtl_cfg_info const *)(& rtl_cfg_infos) + ent->driver_data;
  region = cfg->region;
  if ((int )debug.msg_enable & 1) {
    {
    printk("\016%s Gigabit Ethernet driver %s loaded\n", (char *)"r8169", (char *)"2.3LK-NAPI");
    }
  } else {
  }
  {
  dev = ldv_alloc_etherdev_mqs_28(4024, 1U, 1U);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  {
  dev->dev.parent = & pdev->dev;
  dev->netdev_ops = & rtl_netdev_ops;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tp->dev = dev;
  tp->pci_dev = pdev;
  tp->msg_enable = netif_msg_init((int )debug.msg_enable, 51);
  mii = & tp->mii;
  mii->dev = dev;
  mii->mdio_read = & rtl_mdio_read;
  mii->mdio_write = & rtl_mdio_write;
  mii->phy_id_mask = 31;
  mii->reg_num_mask = 31;
  mii->supports_gmii = ((unsigned int )cfg->features & 4U) != 0U;
  pci_disable_link_state(pdev, 7);
  rc = pci_enable_device(pdev);
  }
  if (rc < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "enable failure\n");
      }
    } else {
    }
    goto err_out_free_dev_1;
  } else {
  }
  {
  tmp___0 = pci_set_mwi(pdev);
  }
  if (tmp___0 < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "Mem-Wr-Inval unavailable\n");
      }
    } else {
    }
  } else {
  }
  if ((pdev->resource[region].flags & 512UL) == 0UL) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "region #%d not an MMIO resource, aborting\n",
                 region);
      }
    } else {
    }
    rc = -19;
    goto err_out_mwi_2;
  } else {
  }
  if ((pdev->resource[region].start == 0ULL && pdev->resource[region].end == pdev->resource[region].start) || (pdev->resource[region].end - pdev->resource[region].start) + 1ULL <= 255ULL) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "Invalid PCI region size(s), aborting\n");
      }
    } else {
    }
    rc = -19;
    goto err_out_mwi_2;
  } else {
  }
  {
  rc = pci_request_regions(pdev, "r8169");
  }
  if (rc < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "could not request regions\n");
      }
    } else {
    }
    goto err_out_mwi_2;
  } else {
  }
  {
  tp->cp_cmd = 32U;
  tmp___1 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp___1 == 0 && use_dac != 0) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 16U);
    dev->features = dev->features | 32ULL;
  } else {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (rc < 0) {
      if ((tp->msg_enable & 2U) != 0U) {
        {
        netdev_err((struct net_device const *)dev, "DMA configuration failed\n");
        }
      } else {
      }
      goto err_out_free_res_3;
    } else {
    }
  }
  {
  ioaddr = ioremap(pdev->resource[region].start, 256UL);
  }
  if ((unsigned long )ioaddr == (unsigned long )((void *)0)) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_err((struct net_device const *)dev, "cannot remap MMIO, aborting\n");
      }
    } else {
    }
    rc = -5;
    goto err_out_free_res_3;
  } else {
  }
  {
  tp->mmio_addr = ioaddr;
  tmp___2 = pci_is_pcie(pdev);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "not PCI Express\n");
      }
    } else {
    }
  } else {
  }
  {
  rtl8169_get_mac_version(tp, dev, (int )cfg->default_ver);
  rtl_init_rxcfg(tp);
  rtl_irq_disable(tp);
  rtl_hw_initialize(tp);
  rtl_hw_reset(tp);
  rtl_ack_events(tp, 65535);
  pci_set_master(pdev);
  }
  if ((unsigned int )tp->mac_version == 4U) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 64U);
  } else {
  }
  {
  rtl_init_mdio_ops(tp);
  rtl_init_pll_power_ops(tp);
  rtl_init_jumbo_ops(tp);
  rtl_init_csi_ops(tp);
  rtl8169_print_mac_version(tp);
  chipset = (int )tp->mac_version;
  tp->txd_version = (u16 )rtl_chip_infos[chipset].txd_version;
  writeb(192, (void volatile *)ioaddr + 80U);
  tmp___4 = readb((void const volatile *)ioaddr + 82U);
  writeb((int )((unsigned int )tmp___4 | 1U), (void volatile *)ioaddr + 82U);
  tmp___5 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___5 & 115, (void volatile *)ioaddr + 86U);
  tmp___6 = readb((void const volatile *)ioaddr + 84U);
  }
  if (((int )tmp___6 & 48) != 0) {
    tp->features = tp->features | 1U;
  } else {
  }
  {
  tmp___7 = readb((void const volatile *)ioaddr + 86U);
  }
  if (((int )tmp___7 & 112) != 0) {
    tp->features = tp->features | 1U;
  } else {
  }
  {
  tmp___8 = rtl_try_msi(tp, cfg);
  tp->features = tp->features | tmp___8;
  writeb(0, (void volatile *)ioaddr + 80U);
  tmp___9 = rtl_tbi_enabled(tp);
  }
  if ((int )tmp___9) {
    tp->set_speed = & rtl8169_set_speed_tbi;
    tp->get_settings = & rtl8169_gset_tbi;
    tp->phy_reset_enable = & rtl8169_tbi_reset_enable;
    tp->phy_reset_pending = & rtl8169_tbi_reset_pending;
    tp->link_ok = & rtl8169_tbi_link_ok;
    tp->do_ioctl = & rtl_tbi_ioctl;
  } else {
    tp->set_speed = & rtl8169_set_speed_xmii;
    tp->get_settings = & rtl8169_gset_xmii;
    tp->phy_reset_enable = & rtl8169_xmii_reset_enable;
    tp->phy_reset_pending = & rtl8169_xmii_reset_pending;
    tp->link_ok = & rtl8169_xmii_link_ok;
    tp->do_ioctl = & rtl_xmii_ioctl;
  }
  {
  __mutex_init(& tp->wk.mutex, "&tp->wk.mutex", & __key);
  i = 0;
  }
  goto ldv_50411;
  ldv_50410:
  {
  *(dev->dev_addr + (unsigned long )i) = readb((void const volatile *)ioaddr + (unsigned long )i);
  i = i + 1;
  }
  ldv_50411: ;
  if (i <= 5) {
    goto ldv_50410;
  } else {
  }
  {
  dev->ethtool_ops = & rtl8169_ethtool_ops;
  dev->watchdog_timeo = 1500;
  netif_napi_add(dev, & tp->napi, & rtl8169_poll, 64);
  dev->features = dev->features | 4294967680ULL;
  dev->hw_features = 4295033219ULL;
  dev->vlan_features = 65571ULL;
  }
  if ((unsigned int )tp->mac_version == 4U) {
    dev->hw_features = dev->hw_features & 0xfffffffffffffeffULL;
  } else {
  }
  {
  dev->hw_features = dev->hw_features | 68719476736ULL;
  dev->hw_features = dev->hw_features | 34359738368ULL;
  tp->hw_start = cfg->hw_start;
  tp->event_slow = cfg->event_slow;
  tp->opts1_mask = (unsigned int )tp->mac_version != 0U ? 4269801471U : 4294967295U;
  init_timer_key(& tp->timer, 0U, "(&tp->timer)", & __key___0);
  tp->timer.data = (unsigned long )dev;
  tp->timer.function = & rtl8169_phy_timer;
  tmp___10 = ERR_PTR(-11L);
  tp->rtl_fw = (struct rtl_fw *)tmp___10;
  rc = ldv_register_netdev_29(dev);
  }
  if (rc < 0) {
    goto err_out_msi_4;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)dev);
  }
  if ((tp->msg_enable & 2U) != 0U) {
    {
    tmp___11 = readl((void const volatile *)ioaddr + 64U);
    netdev_info((struct net_device const *)dev, "%s at 0x%p, %pM, XID %08x IRQ %d\n",
                rtl_chip_infos[chipset].name, ioaddr, dev->dev_addr, tmp___11 & 2633038079U,
                pdev->irq);
    }
  } else {
  }
  if ((unsigned int )((unsigned short )rtl_chip_infos[chipset].jumbo_max) != 1500U) {
    if ((tp->msg_enable & 2U) != 0U) {
      {
      netdev_info((struct net_device const *)dev, "jumbo features [frames: %d bytes, tx checksumming: %s]\n",
                  (int )rtl_chip_infos[chipset].jumbo_max, (int )rtl_chip_infos[chipset].jumbo_tx_csum ? (char *)"ok" : (char *)"ko");
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )tp->mac_version - 26U <= 1U || (unsigned int )tp->mac_version == 30U) {
    {
    rtl8168_driver_start(tp);
    }
  } else {
  }
  {
  device_set_wakeup_enable(& pdev->dev, (int )tp->features & 1);
  tmp___12 = pci_dev_run_wake(pdev);
  }
  if ((int )tmp___12) {
    {
    pm_runtime_put_noidle(& pdev->dev);
    }
  } else {
  }
  {
  netif_carrier_off(dev);
  }
  out: ;
  return (rc);
  err_out_msi_4:
  {
  netif_napi_del(& tp->napi);
  rtl_disable_msi(pdev, tp);
  iounmap((void volatile *)ioaddr);
  }
  err_out_free_res_3:
  {
  pci_release_regions(pdev);
  }
  err_out_mwi_2:
  {
  pci_clear_mwi(pdev);
  pci_disable_device(pdev);
  }
  err_out_free_dev_1:
  {
  ldv_free_netdev_30(dev);
  }
  goto out;
}
}
static struct pci_driver rtl8169_pci_driver =
     {{0, 0}, "r8169", (struct pci_device_id const *)(& rtl8169_pci_tbl), & rtl_init_one,
    & rtl_remove_one, 0, 0, 0, 0, & rtl_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0,
                                                         0, 0, 0, 0, 0, 0, 0, & rtl8169_pm_ops,
                                                         0}, {{{{{{0U}}, 0U, 0U, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}}}, {0, 0}}};
static int rtl8169_pci_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_31(& rtl8169_pci_driver, & __this_module, "r8169");
  }
  return (tmp);
}
}
static void rtl8169_pci_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_32(& rtl8169_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_rtl8169_pci_driver_exit_33_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_rtl8169_pci_driver_init_33_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_allocate_external_0(void) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_30_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_31_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_16_33_4(void) ;
void ldv_dispatch_deregister_platform_instance_15_33_5(void) ;
void ldv_dispatch_instance_deregister_24_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_27_2(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_25_1(int arg0 ) ;
void ldv_dispatch_irq_register_29_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_6_5(void) ;
void ldv_dispatch_pm_register_6_6(void) ;
void ldv_dispatch_register_28_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_32_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_16_33_6(void) ;
void ldv_dispatch_register_platform_instance_15_33_7(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 ) ;
void ldv_entry_EMGentry_33(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_3(void *arg0 ) ;
int ldv_pci_instance_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_4_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_4_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_4_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_4_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_4_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_4(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_platform_instance_probe_6_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_6_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_pm_ops_instance_complete_5_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_5_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_5_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_5_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_5_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_5_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_5_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_5_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_5_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_5_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_5_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_5_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_5_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_5_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_5_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_5_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_5_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_5_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_5_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_5_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_5_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_5_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_5_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_platform_instance_6(void *arg0 ) ;
void ldv_pm_pm_ops_instance_5(void *arg0 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_28_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_21(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_rtl_cond_dummy_resourceless_instance_9(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_10_1(void) ;
void ldv_switch_automaton_state_10_5(void) ;
void ldv_switch_automaton_state_11_1(void) ;
void ldv_switch_automaton_state_11_5(void) ;
void ldv_switch_automaton_state_12_1(void) ;
void ldv_switch_automaton_state_12_5(void) ;
void ldv_switch_automaton_state_13_1(void) ;
void ldv_switch_automaton_state_13_5(void) ;
void ldv_switch_automaton_state_14_1(void) ;
void ldv_switch_automaton_state_14_5(void) ;
void ldv_switch_automaton_state_15_1(void) ;
void ldv_switch_automaton_state_15_5(void) ;
void ldv_switch_automaton_state_16_1(void) ;
void ldv_switch_automaton_state_16_5(void) ;
void ldv_switch_automaton_state_17_1(void) ;
void ldv_switch_automaton_state_17_5(void) ;
void ldv_switch_automaton_state_18_1(void) ;
void ldv_switch_automaton_state_18_5(void) ;
void ldv_switch_automaton_state_19_1(void) ;
void ldv_switch_automaton_state_19_5(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_20_1(void) ;
void ldv_switch_automaton_state_20_5(void) ;
void ldv_switch_automaton_state_21_1(void) ;
void ldv_switch_automaton_state_21_5(void) ;
void ldv_switch_automaton_state_22_1(void) ;
void ldv_switch_automaton_state_22_3(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_11(void) ;
void ldv_switch_automaton_state_4_20(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_29(void) ;
void ldv_switch_automaton_state_6_17(void) ;
void ldv_switch_automaton_state_6_8(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_5(void) ;
void ldv_switch_automaton_state_8_1(void) ;
void ldv_switch_automaton_state_8_5(void) ;
void ldv_switch_automaton_state_9_1(void) ;
void ldv_switch_automaton_state_9_5(void) ;
void ldv_timer_instance_callback_22_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_22(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_30_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
_Bool (*ldv_10_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_10_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_11_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_11_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_12_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_12_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_13_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_13_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_14_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_14_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_15_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_15_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_16_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_16_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_17_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_17_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_18_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_18_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_19_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_19_container_struct_rtl8169_private_ptr ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
int (*ldv_1_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
void (*ldv_1_callback_hw_start)(struct net_device * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
struct rtnl_link_stats64 *(*ldv_1_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) ;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
struct ethtool_ts_info *ldv_1_container_struct_ethtool_ts_info_ptr ;
struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_1_container_struct_ifreq_ptr ;
struct rtnl_link_stats64 *ldv_1_container_struct_rtnl_link_stats64_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
int ldv_1_ldv_param_15_1_default ;
unsigned int ldv_1_ldv_param_18_1_default ;
unsigned char *ldv_1_ldv_param_18_2_default ;
int ldv_1_ldv_param_24_1_default ;
int ldv_1_ldv_param_27_2_default ;
unsigned long long ldv_1_ldv_param_30_1_default ;
unsigned long long ldv_1_ldv_param_35_1_default ;
unsigned int ldv_1_ldv_param_43_1_default ;
unsigned long long *ldv_1_ldv_param_7_2_default ;
_Bool (*ldv_20_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_20_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_21_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_21_container_struct_rtl8169_private_ptr ;
struct timer_list *ldv_22_container_timer_list ;
void (*ldv_2_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
void (*ldv_2_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_2_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_2_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_2_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_2_callback_get_regs_len)(struct net_device * ) ;
int (*ldv_2_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_2_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_2_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
int (*ldv_2_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
void (*ldv_2_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
void (*ldv_2_callback_hw_start)(struct net_device * ) ;
int (*ldv_2_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_2_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
unsigned long long (*ldv_2_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
struct rtnl_link_stats64 *(*ldv_2_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) ;
void (*ldv_2_callback_ndo_poll_controller)(struct net_device * ) ;
int (*ldv_2_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
int (*ldv_2_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_2_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_2_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_2_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_2_callback_ndo_validate_addr)(struct net_device * ) ;
void (*ldv_2_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_2_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_2_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
struct net_device *ldv_2_container_net_device ;
struct ethtool_cmd *ldv_2_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_2_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_regs *ldv_2_container_struct_ethtool_regs_ptr ;
struct ethtool_stats *ldv_2_container_struct_ethtool_stats_ptr ;
struct ethtool_ts_info *ldv_2_container_struct_ethtool_ts_info_ptr ;
struct ethtool_wolinfo *ldv_2_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_2_container_struct_ifreq_ptr ;
struct rtnl_link_stats64 *ldv_2_container_struct_rtnl_link_stats64_ptr ;
struct sk_buff *ldv_2_container_struct_sk_buff_ptr ;
int ldv_2_ldv_param_15_1_default ;
unsigned int ldv_2_ldv_param_18_1_default ;
unsigned char *ldv_2_ldv_param_18_2_default ;
int ldv_2_ldv_param_24_1_default ;
int ldv_2_ldv_param_27_2_default ;
unsigned long long ldv_2_ldv_param_30_1_default ;
unsigned long long ldv_2_ldv_param_35_1_default ;
unsigned int ldv_2_ldv_param_43_1_default ;
unsigned long long *ldv_2_ldv_param_7_2_default ;
void (*ldv_33_exit_rtl8169_pci_driver_exit_default)(void) ;
int (*ldv_33_init_rtl8169_pci_driver_init_default)(void) ;
int ldv_33_ret_default ;
void (*ldv_3_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
void (*ldv_3_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_3_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_3_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_3_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_3_callback_get_regs_len)(struct net_device * ) ;
int (*ldv_3_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_3_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_3_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
int (*ldv_3_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
void (*ldv_3_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
void (*ldv_3_callback_hw_start)(struct net_device * ) ;
int (*ldv_3_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_3_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
unsigned long long (*ldv_3_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
struct rtnl_link_stats64 *(*ldv_3_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) ;
void (*ldv_3_callback_ndo_poll_controller)(struct net_device * ) ;
int (*ldv_3_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
int (*ldv_3_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_3_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_3_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
void (*ldv_3_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_3_callback_ndo_validate_addr)(struct net_device * ) ;
void (*ldv_3_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_3_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_3_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
struct net_device *ldv_3_container_net_device ;
struct ethtool_cmd *ldv_3_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_3_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_regs *ldv_3_container_struct_ethtool_regs_ptr ;
struct ethtool_stats *ldv_3_container_struct_ethtool_stats_ptr ;
struct ethtool_ts_info *ldv_3_container_struct_ethtool_ts_info_ptr ;
struct ethtool_wolinfo *ldv_3_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_3_container_struct_ifreq_ptr ;
struct rtnl_link_stats64 *ldv_3_container_struct_rtnl_link_stats64_ptr ;
struct sk_buff *ldv_3_container_struct_sk_buff_ptr ;
int ldv_3_ldv_param_15_1_default ;
unsigned int ldv_3_ldv_param_18_1_default ;
unsigned char *ldv_3_ldv_param_18_2_default ;
int ldv_3_ldv_param_24_1_default ;
int ldv_3_ldv_param_27_2_default ;
unsigned long long ldv_3_ldv_param_30_1_default ;
unsigned long long ldv_3_ldv_param_35_1_default ;
unsigned int ldv_3_ldv_param_43_1_default ;
unsigned long long *ldv_3_ldv_param_7_2_default ;
struct pci_driver *ldv_4_container_pci_driver ;
struct pci_dev *ldv_4_resource_dev ;
struct pm_message ldv_4_resource_pm_message ;
struct pci_device_id *ldv_4_resource_struct_pci_device_id_ptr ;
int ldv_4_ret_default ;
struct device *ldv_5_device_device ;
struct dev_pm_ops *ldv_5_pm_ops_dev_pm_ops ;
struct platform_driver *ldv_6_container_platform_driver ;
struct platform_device *ldv_6_ldv_param_14_0_default ;
struct platform_device *ldv_6_ldv_param_3_0_default ;
int ldv_6_probed_default ;
_Bool (*ldv_7_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_7_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_8_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_8_container_struct_rtl8169_private_ptr ;
_Bool (*ldv_9_callback_check)(struct rtl8169_private * ) ;
struct rtl8169_private *ldv_9_container_struct_rtl8169_private_ptr ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_10 ;
int ldv_statevar_11 ;
int ldv_statevar_12 ;
int ldv_statevar_13 ;
int ldv_statevar_14 ;
int ldv_statevar_15 ;
int ldv_statevar_16 ;
int ldv_statevar_17 ;
int ldv_statevar_18 ;
int ldv_statevar_19 ;
int ldv_statevar_2 ;
int ldv_statevar_20 ;
int ldv_statevar_21 ;
int ldv_statevar_22 ;
int ldv_statevar_3 ;
int ldv_statevar_33 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
int ldv_statevar_9 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & rtl8169_interrupt;
_Bool (*ldv_10_callback_check)(struct rtl8169_private * ) = & rtl_efusear_cond_check;
_Bool (*ldv_11_callback_check)(struct rtl8169_private * ) = & rtl_ephyar_cond_check;
_Bool (*ldv_12_callback_check)(struct rtl8169_private * ) = & rtl_eriar_cond_check;
_Bool (*ldv_13_callback_check)(struct rtl8169_private * ) = & rtl_link_list_ready_cond_check;
_Bool (*ldv_14_callback_check)(struct rtl8169_private * ) = & rtl_npq_cond_check;
_Bool (*ldv_15_callback_check)(struct rtl8169_private * ) = & rtl_ocp_gphy_cond_check;
_Bool (*ldv_16_callback_check)(struct rtl8169_private * ) = & rtl_ocp_read_cond_check;
_Bool (*ldv_17_callback_check)(struct rtl8169_private * ) = & rtl_ocpar_cond_check;
_Bool (*ldv_18_callback_check)(struct rtl8169_private * ) = & rtl_phy_reset_cond_check;
_Bool (*ldv_19_callback_check)(struct rtl8169_private * ) = & rtl_phyar_cond_check;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & rtl8169_get_drvinfo;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & rtl8169_get_ethtool_stats;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) = & rtl8169_get_msglevel;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & rtl8169_get_regs;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) = & rtl8169_get_regs_len;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_get_settings;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) = & rtl8169_get_sset_count;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & rtl8169_get_strings;
int (*ldv_1_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) = & ethtool_op_get_ts_info;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_get_wol;
void (*ldv_1_callback_hw_start)(struct net_device * ) = & rtl_hw_start_8101;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & rtl8169_change_mtu;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & rtl8169_ioctl;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & rtl8169_fix_features;
struct rtnl_link_stats64 *(*ldv_1_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) = & rtl8169_get_stats64;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) = & rtl8169_netpoll;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & rtl8169_set_features;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & rtl_set_mac_address;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & rtl_set_rx_mode;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & rtl8169_start_xmit;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & rtl8169_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) = & rtl8169_set_msglevel;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_set_settings;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_set_wol;
_Bool (*ldv_20_callback_check)(struct rtl8169_private * ) = & rtl_rxtx_empty_cond_check;
_Bool (*ldv_21_callback_check)(struct rtl8169_private * ) = & rtl_txcfg_empty_cond_check;
void (*ldv_2_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & rtl8169_get_drvinfo;
void (*ldv_2_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & rtl8169_get_ethtool_stats;
unsigned int (*ldv_2_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
unsigned int (*ldv_2_callback_get_msglevel)(struct net_device * ) = & rtl8169_get_msglevel;
void (*ldv_2_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & rtl8169_get_regs;
int (*ldv_2_callback_get_regs_len)(struct net_device * ) = & rtl8169_get_regs_len;
int (*ldv_2_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_get_settings;
int (*ldv_2_callback_get_sset_count)(struct net_device * , int ) = & rtl8169_get_sset_count;
void (*ldv_2_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & rtl8169_get_strings;
int (*ldv_2_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) = & ethtool_op_get_ts_info;
void (*ldv_2_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_get_wol;
void (*ldv_2_callback_hw_start)(struct net_device * ) = & rtl_hw_start_8168;
int (*ldv_2_callback_ndo_change_mtu)(struct net_device * , int ) = & rtl8169_change_mtu;
int (*ldv_2_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & rtl8169_ioctl;
unsigned long long (*ldv_2_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & rtl8169_fix_features;
struct rtnl_link_stats64 *(*ldv_2_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) = & rtl8169_get_stats64;
void (*ldv_2_callback_ndo_poll_controller)(struct net_device * ) = & rtl8169_netpoll;
int (*ldv_2_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & rtl8169_set_features;
int (*ldv_2_callback_ndo_set_mac_address)(struct net_device * , void * ) = & rtl_set_mac_address;
void (*ldv_2_callback_ndo_set_rx_mode)(struct net_device * ) = & rtl_set_rx_mode;
enum netdev_tx (*ldv_2_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & rtl8169_start_xmit;
void (*ldv_2_callback_ndo_tx_timeout)(struct net_device * ) = & rtl8169_tx_timeout;
int (*ldv_2_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
void (*ldv_2_callback_set_msglevel)(struct net_device * , unsigned int ) = & rtl8169_set_msglevel;
int (*ldv_2_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_set_settings;
int (*ldv_2_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_set_wol;
void (*ldv_33_exit_rtl8169_pci_driver_exit_default)(void) = & rtl8169_pci_driver_exit;
int (*ldv_33_init_rtl8169_pci_driver_init_default)(void) = & rtl8169_pci_driver_init;
void (*ldv_3_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & rtl8169_get_drvinfo;
void (*ldv_3_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & rtl8169_get_ethtool_stats;
unsigned int (*ldv_3_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
unsigned int (*ldv_3_callback_get_msglevel)(struct net_device * ) = & rtl8169_get_msglevel;
void (*ldv_3_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & rtl8169_get_regs;
int (*ldv_3_callback_get_regs_len)(struct net_device * ) = & rtl8169_get_regs_len;
int (*ldv_3_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_get_settings;
int (*ldv_3_callback_get_sset_count)(struct net_device * , int ) = & rtl8169_get_sset_count;
void (*ldv_3_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & rtl8169_get_strings;
int (*ldv_3_callback_get_ts_info)(struct net_device * , struct ethtool_ts_info * ) = & ethtool_op_get_ts_info;
void (*ldv_3_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_get_wol;
void (*ldv_3_callback_hw_start)(struct net_device * ) = & rtl_hw_start_8169;
int (*ldv_3_callback_ndo_change_mtu)(struct net_device * , int ) = & rtl8169_change_mtu;
int (*ldv_3_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & rtl8169_ioctl;
unsigned long long (*ldv_3_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & rtl8169_fix_features;
struct rtnl_link_stats64 *(*ldv_3_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) = & rtl8169_get_stats64;
void (*ldv_3_callback_ndo_poll_controller)(struct net_device * ) = & rtl8169_netpoll;
int (*ldv_3_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & rtl8169_set_features;
int (*ldv_3_callback_ndo_set_mac_address)(struct net_device * , void * ) = & rtl_set_mac_address;
void (*ldv_3_callback_ndo_set_rx_mode)(struct net_device * ) = & rtl_set_rx_mode;
enum netdev_tx (*ldv_3_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & rtl8169_start_xmit;
void (*ldv_3_callback_ndo_tx_timeout)(struct net_device * ) = & rtl8169_tx_timeout;
int (*ldv_3_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
void (*ldv_3_callback_set_msglevel)(struct net_device * , unsigned int ) = & rtl8169_set_msglevel;
int (*ldv_3_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & rtl8169_set_settings;
int (*ldv_3_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & rtl8169_set_wol;
_Bool (*ldv_7_callback_check)(struct rtl8169_private * ) = & rtl_chipcmd_cond_check;
_Bool (*ldv_8_callback_check)(struct rtl8169_private * ) = & rtl_counters_cond_check;
_Bool (*ldv_9_callback_check)(struct rtl8169_private * ) = & rtl_csiar_cond_check;
void ldv_EMGentry_exit_rtl8169_pci_driver_exit_33_2(void (*arg0)(void) )
{
  {
  {
  rtl8169_pci_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_rtl8169_pci_driver_init_33_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = rtl8169_pci_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_32_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_32_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_4 == 20);
    ldv_dispatch_register_32_2(ldv_32_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_23_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_23_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_23_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_allocate_external_0(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  void *tmp___25 ;
  void *tmp___26 ;
  void *tmp___27 ;
  void *tmp___28 ;
  void *tmp___29 ;
  void *tmp___30 ;
  void *tmp___31 ;
  void *tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  void *tmp___36 ;
  void *tmp___37 ;
  void *tmp___38 ;
  void *tmp___39 ;
  void *tmp___40 ;
  void *tmp___41 ;
  void *tmp___42 ;
  void *tmp___43 ;
  void *tmp___44 ;
  void *tmp___45 ;
  void *tmp___46 ;
  void *tmp___47 ;
  void *tmp___48 ;
  void *tmp___49 ;
  void *tmp___50 ;
  void *tmp___51 ;
  void *tmp___52 ;
  void *tmp___53 ;
  void *tmp___54 ;
  void *tmp___55 ;
  void *tmp___56 ;
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_container_struct_ethtool_stats_ptr = (struct ethtool_stats *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_1_container_struct_ethtool_ts_info_ptr = (struct ethtool_ts_info *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_1_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_1_container_struct_ifreq_ptr = (struct ifreq *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_container_struct_rtnl_link_stats64_ptr = (struct rtnl_link_stats64 *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_1_ldv_param_18_2_default = (unsigned char *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_1_ldv_param_7_2_default = (unsigned long long *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_2_container_net_device = (struct net_device *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_2_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_2_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_2_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_2_container_struct_ethtool_stats_ptr = (struct ethtool_stats *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_2_container_struct_ethtool_ts_info_ptr = (struct ethtool_ts_info *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_2_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_2_container_struct_ifreq_ptr = (struct ifreq *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_2_container_struct_rtnl_link_stats64_ptr = (struct rtnl_link_stats64 *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_2_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_2_ldv_param_18_2_default = (unsigned char *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_2_ldv_param_7_2_default = (unsigned long long *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_3_container_net_device = (struct net_device *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_3_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_3_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_3_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___27;
  tmp___28 = external_allocated_data();
  ldv_3_container_struct_ethtool_stats_ptr = (struct ethtool_stats *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_3_container_struct_ethtool_ts_info_ptr = (struct ethtool_ts_info *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_3_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_3_container_struct_ifreq_ptr = (struct ifreq *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_3_container_struct_rtnl_link_stats64_ptr = (struct rtnl_link_stats64 *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_3_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_3_ldv_param_18_2_default = (unsigned char *)tmp___34;
  tmp___35 = external_allocated_data();
  ldv_3_ldv_param_7_2_default = (unsigned long long *)tmp___35;
  tmp___36 = external_allocated_data();
  ldv_4_resource_dev = (struct pci_dev *)tmp___36;
  tmp___37 = external_allocated_data();
  ldv_5_device_device = (struct device *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_6_container_platform_driver = (struct platform_driver *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_6_ldv_param_14_0_default = (struct platform_device *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_6_ldv_param_3_0_default = (struct platform_device *)tmp___40;
  tmp___41 = external_allocated_data();
  ldv_7_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___41;
  tmp___42 = external_allocated_data();
  ldv_8_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___42;
  tmp___43 = external_allocated_data();
  ldv_9_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___43;
  tmp___44 = external_allocated_data();
  ldv_10_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___44;
  tmp___45 = external_allocated_data();
  ldv_11_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___45;
  tmp___46 = external_allocated_data();
  ldv_12_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___46;
  tmp___47 = external_allocated_data();
  ldv_13_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___47;
  tmp___48 = external_allocated_data();
  ldv_14_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___48;
  tmp___49 = external_allocated_data();
  ldv_15_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___49;
  tmp___50 = external_allocated_data();
  ldv_16_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___50;
  tmp___51 = external_allocated_data();
  ldv_17_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___51;
  tmp___52 = external_allocated_data();
  ldv_18_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___52;
  tmp___53 = external_allocated_data();
  ldv_19_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___53;
  tmp___54 = external_allocated_data();
  ldv_20_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___54;
  tmp___55 = external_allocated_data();
  ldv_21_container_struct_rtl8169_private_ptr = (struct rtl8169_private *)tmp___55;
  tmp___56 = external_allocated_data();
  ldv_22_container_timer_list = (struct timer_list *)tmp___56;
  }
  return;
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_24_timer_list_timer_list ;
  {
  {
  ldv_24_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_22 == 2);
  ldv_dispatch_instance_deregister_24_1(ldv_24_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_30_1(struct net_device *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  goto ldv_52000;
  case_1:
  {
  ldv_2_container_net_device = arg0;
  ldv_switch_automaton_state_2_1();
  }
  goto ldv_52000;
  case_2:
  {
  ldv_3_container_net_device = arg0;
  ldv_switch_automaton_state_3_1();
  }
  goto ldv_52000;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52000: ;
  return;
}
}
void ldv_dispatch_deregister_31_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_4_container_pci_driver = arg0;
  ldv_switch_automaton_state_4_11();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_16_33_4(void)
{
  {
  {
  ldv_switch_automaton_state_7_1();
  ldv_switch_automaton_state_8_1();
  ldv_switch_automaton_state_9_1();
  ldv_switch_automaton_state_10_1();
  ldv_switch_automaton_state_11_1();
  ldv_switch_automaton_state_12_1();
  ldv_switch_automaton_state_13_1();
  ldv_switch_automaton_state_14_1();
  ldv_switch_automaton_state_15_1();
  ldv_switch_automaton_state_16_1();
  ldv_switch_automaton_state_17_1();
  ldv_switch_automaton_state_18_1();
  ldv_switch_automaton_state_19_1();
  ldv_switch_automaton_state_20_1();
  ldv_switch_automaton_state_21_1();
  }
  return;
}
}
void ldv_dispatch_deregister_platform_instance_15_33_5(void)
{
  {
  {
  ldv_switch_automaton_state_6_8();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_24_1(struct timer_list *arg0 )
{
  {
  {
  ldv_22_container_timer_list = arg0;
  ldv_switch_automaton_state_22_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_27_2(struct timer_list *arg0 )
{
  {
  {
  ldv_22_container_timer_list = arg0;
  ldv_switch_automaton_state_22_3();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_25_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_29_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_pm_deregister_6_5(void)
{
  {
  {
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_pm_register_6_6(void)
{
  {
  {
  ldv_switch_automaton_state_5_29();
  }
  return;
}
}
void ldv_dispatch_register_28_4(struct net_device *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  goto ldv_52048;
  case_1:
  {
  ldv_2_container_net_device = arg0;
  ldv_switch_automaton_state_2_5();
  }
  goto ldv_52048;
  case_2:
  {
  ldv_3_container_net_device = arg0;
  ldv_switch_automaton_state_3_5();
  }
  goto ldv_52048;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52048: ;
  return;
}
}
void ldv_dispatch_register_32_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_4_container_pci_driver = arg0;
  ldv_switch_automaton_state_4_20();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_16_33_6(void)
{
  {
  {
  ldv_switch_automaton_state_7_5();
  ldv_switch_automaton_state_8_5();
  ldv_switch_automaton_state_9_5();
  ldv_switch_automaton_state_10_5();
  ldv_switch_automaton_state_11_5();
  ldv_switch_automaton_state_12_5();
  ldv_switch_automaton_state_13_5();
  ldv_switch_automaton_state_14_5();
  ldv_switch_automaton_state_15_5();
  ldv_switch_automaton_state_16_5();
  ldv_switch_automaton_state_17_5();
  ldv_switch_automaton_state_18_5();
  ldv_switch_automaton_state_19_5();
  ldv_switch_automaton_state_20_5();
  ldv_switch_automaton_state_21_5();
  }
  return;
}
}
void ldv_dispatch_register_platform_instance_15_33_7(void)
{
  {
  {
  ldv_switch_automaton_state_6_17();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_efusear_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_ephyar_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_eriar_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_link_list_ready_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_npq_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_ocp_gphy_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_ocp_read_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_ocpar_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_phy_reset_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_phyar_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  rtl8169_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  rtl8169_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 )
{
  {
  {
  ethtool_op_get_ts_info(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_hw_start_8101(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  rtl8169_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  rtl8169_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  rtl8169_get_stats64(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  rtl_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_set_rx_mode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  rtl8169_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  rtl8169_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  rtl8169_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_rxtx_empty_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                   struct rtl8169_private *arg1 )
{
  {
  {
  rtl_txcfg_empty_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  rtl8169_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  rtl8169_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 )
{
  {
  {
  ethtool_op_get_ts_info(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_hw_start_8168(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  rtl8169_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  rtl8169_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  rtl8169_get_stats64(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  rtl_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_set_rx_mode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  rtl8169_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  rtl8169_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  rtl8169_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_10(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_12(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  rtl8169_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_14(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_18(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  rtl8169_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_21(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ts_info * ) ,
                                                   struct net_device *arg1 , struct ethtool_ts_info *arg2 )
{
  {
  {
  ethtool_op_get_ts_info(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_hw_start_8169(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  rtl8169_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_27(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  rtl8169_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  rtl8169_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_33(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  rtl8169_get_stats64(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  rtl8169_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  rtl_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl_set_rx_mode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  rtl8169_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  rtl8169_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_43(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  rtl8169_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  rtl8169_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_47(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  rtl8169_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  rtl8169_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 )
{
  {
  {
  rtl_chipcmd_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 )
{
  {
  {
  rtl_counters_cond_check(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(_Bool (*arg0)(struct rtl8169_private * ) ,
                                                  struct rtl8169_private *arg1 )
{
  {
  {
  rtl_csiar_cond_check(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_33(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_33 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_33 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_33 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_33 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_33 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_33 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_33 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_33 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_33 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_4 == 12);
  ldv_EMGentry_exit_rtl8169_pci_driver_exit_33_2(ldv_33_exit_rtl8169_pci_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_33 = 11;
  }
  goto ldv_52663;
  case_3:
  {
  ldv_assume(ldv_statevar_4 == 12);
  ldv_EMGentry_exit_rtl8169_pci_driver_exit_33_2(ldv_33_exit_rtl8169_pci_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_33 = 11;
  }
  goto ldv_52663;
  case_4:
  {
  ldv_assume((((((((((((((ldv_statevar_7 == 1 || ldv_statevar_8 == 1) || ldv_statevar_9 == 1) || ldv_statevar_10 == 1) || ldv_statevar_11 == 1) || ldv_statevar_12 == 1) || ldv_statevar_13 == 1) || ldv_statevar_14 == 1) || ldv_statevar_15 == 1) || ldv_statevar_16 == 1) || ldv_statevar_17 == 1) || ldv_statevar_18 == 1) || ldv_statevar_19 == 1) || ldv_statevar_20 == 1) || ldv_statevar_21 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_16_33_4();
  ldv_statevar_33 = 2;
  }
  goto ldv_52663;
  case_5:
  {
  ldv_assume(ldv_statevar_6 == 9);
  ldv_dispatch_deregister_platform_instance_15_33_5();
  ldv_statevar_33 = 4;
  }
  goto ldv_52663;
  case_6:
  {
  ldv_assume((((((((((((((ldv_statevar_7 == 5 || ldv_statevar_8 == 5) || ldv_statevar_9 == 5) || ldv_statevar_10 == 5) || ldv_statevar_11 == 5) || ldv_statevar_12 == 5) || ldv_statevar_13 == 5) || ldv_statevar_14 == 5) || ldv_statevar_15 == 5) || ldv_statevar_16 == 5) || ldv_statevar_17 == 5) || ldv_statevar_18 == 5) || ldv_statevar_19 == 5) || ldv_statevar_20 == 5) || ldv_statevar_21 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_16_33_6();
  ldv_statevar_33 = 5;
  }
  goto ldv_52663;
  case_7:
  {
  ldv_assume(ldv_statevar_6 == 17);
  ldv_dispatch_register_platform_instance_15_33_7();
  ldv_statevar_33 = 6;
  }
  goto ldv_52663;
  case_8:
  {
  ldv_assume(ldv_33_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_33 = 3;
  } else {
    ldv_statevar_33 = 7;
  }
  goto ldv_52663;
  case_10:
  {
  ldv_assume(ldv_33_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_33 = 11;
  }
  goto ldv_52663;
  case_11:
  {
  ldv_assume(ldv_statevar_4 == 20);
  ldv_33_ret_default = ldv_EMGentry_init_rtl8169_pci_driver_init_33_11(ldv_33_init_rtl8169_pci_driver_init_default);
  ldv_33_ret_default = ldv_post_init(ldv_33_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_33 = 8;
  } else {
    ldv_statevar_33 = 10;
  }
  goto ldv_52663;
  switch_default: ;
  switch_break: ;
  }
  ldv_52663: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_33 = 11;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_statevar_2 = 5;
  ldv_statevar_3 = 5;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  ldv_statevar_5 = 29;
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  ldv_statevar_7 = 5;
  ldv_statevar_8 = 5;
  ldv_statevar_9 = 5;
  ldv_statevar_10 = 5;
  ldv_statevar_11 = 5;
  ldv_statevar_12 = 5;
  ldv_statevar_13 = 5;
  ldv_statevar_14 = 5;
  ldv_statevar_15 = 5;
  ldv_statevar_16 = 5;
  ldv_statevar_17 = 5;
  ldv_statevar_18 = 5;
  ldv_statevar_19 = 5;
  ldv_statevar_20 = 5;
  ldv_statevar_21 = 5;
  ldv_statevar_22 = 3;
  }
  ldv_52701:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_33((void *)0);
  }
  goto ldv_52676;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_52676;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_52676;
  case_3:
  {
  ldv_net_dummy_resourceless_instance_2((void *)0);
  }
  goto ldv_52676;
  case_4:
  {
  ldv_net_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_52676;
  case_5:
  {
  ldv_pci_pci_instance_4((void *)0);
  }
  goto ldv_52676;
  case_6:
  {
  ldv_pm_pm_ops_instance_5((void *)0);
  }
  goto ldv_52676;
  case_7:
  {
  ldv_pm_platform_instance_6((void *)0);
  }
  goto ldv_52676;
  case_8:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_7((void *)0);
  }
  goto ldv_52676;
  case_9:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_8((void *)0);
  }
  goto ldv_52676;
  case_10:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_9((void *)0);
  }
  goto ldv_52676;
  case_11:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_10((void *)0);
  }
  goto ldv_52676;
  case_12:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_11((void *)0);
  }
  goto ldv_52676;
  case_13:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_12((void *)0);
  }
  goto ldv_52676;
  case_14:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_13((void *)0);
  }
  goto ldv_52676;
  case_15:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_14((void *)0);
  }
  goto ldv_52676;
  case_16:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_15((void *)0);
  }
  goto ldv_52676;
  case_17:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_16((void *)0);
  }
  goto ldv_52676;
  case_18:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_17((void *)0);
  }
  goto ldv_52676;
  case_19:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_18((void *)0);
  }
  goto ldv_52676;
  case_20:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_19((void *)0);
  }
  goto ldv_52676;
  case_21:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_20((void *)0);
  }
  goto ldv_52676;
  case_22:
  {
  ldv_struct_rtl_cond_dummy_resourceless_instance_21((void *)0);
  }
  goto ldv_52676;
  case_23:
  {
  ldv_timer_timer_instance_22((void *)0);
  }
  goto ldv_52676;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52676: ;
  goto ldv_52701;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_25_line_line ;
  {
  {
  ldv_25_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_25_1(ldv_25_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_26_netdev_net_device ;
  {
  {
  ldv_26_netdev_net_device = arg1;
  ldv_free((void *)ldv_26_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = rtl8169_interrupt(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_52733;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  ldv_statevar_0 = 6;
  goto ldv_52733;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_52733;
  case_6: ;
  goto ldv_52733;
  switch_default: ;
  switch_break: ;
  }
  ldv_52733: ;
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_27_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_27_timer_list_timer_list = arg1;
    ldv_assume(ldv_statevar_22 == 3);
    ldv_dispatch_instance_register_27_2(ldv_27_timer_list_timer_list);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_1 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_1 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_1 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_1 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_1 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_1 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_1 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_1 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_1 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_1 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_1 == 47) {
    goto case_47;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_52748;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52748;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52748;
  case_5: ;
  goto ldv_52748;
  case_8:
  {
  tmp = ldv_xmalloc(8UL);
  ldv_1_ldv_param_7_2_default = (unsigned long long *)tmp;
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_ethtool_stats, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_stats_ptr,
                                               ldv_1_ldv_param_7_2_default);
  ldv_free((void *)ldv_1_ldv_param_7_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_15_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_19:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_18_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_18_1_default, ldv_1_ldv_param_18_2_default);
  ldv_free((void *)ldv_1_ldv_param_18_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_get_ts_info, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ts_info_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_22(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_hw_start, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_1_24(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_24_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_27_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_30_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_get_stats64, ldv_1_container_net_device,
                                                ldv_1_container_struct_rtnl_link_stats64_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_35_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_1_39(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_40:
  {
  ldv_dummy_resourceless_instance_callback_1_40(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_1_41(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_42:
  {
  ldv_dummy_resourceless_instance_callback_1_42(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_44:
  {
  ldv_dummy_resourceless_instance_callback_1_43(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_43_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_46:
  {
  ldv_assume((unsigned int )ldv_statevar_22 - 2U <= 1U);
  ldv_dummy_resourceless_instance_callback_1_46(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  case_47:
  {
  ldv_dummy_resourceless_instance_callback_1_47(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_52748;
  switch_default: ;
  switch_break: ;
  }
  ldv_52748: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_2(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_2 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_2 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_2 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_2 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_2 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_2 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_2 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_2 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_2 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_2 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_2 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_2 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_2 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_2 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_2 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_2 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_2 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_2 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_2 == 47) {
    goto case_47;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_52783;
  case_2:
  {
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_52783;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_get_drvinfo, ldv_2_container_net_device,
                                               ldv_2_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_52783;
  case_5: ;
  goto ldv_52783;
  case_8:
  {
  tmp = ldv_xmalloc(8UL);
  ldv_2_ldv_param_7_2_default = (unsigned long long *)tmp;
  ldv_dummy_resourceless_instance_callback_2_7(ldv_2_callback_get_ethtool_stats, ldv_2_container_net_device,
                                               ldv_2_container_struct_ethtool_stats_ptr,
                                               ldv_2_ldv_param_7_2_default);
  ldv_free((void *)ldv_2_ldv_param_7_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_2_10(ldv_2_callback_get_link, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_2_11(ldv_2_callback_get_msglevel, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_2_12(ldv_2_callback_get_regs, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_2_container_struct_ethtool_cmd_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_2_13(ldv_2_callback_get_regs_len, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_2_14(ldv_2_callback_get_settings, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_cmd_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_2_15(ldv_2_callback_get_sset_count, ldv_2_container_net_device,
                                                ldv_2_ldv_param_15_1_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_19:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_18_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_2_18(ldv_2_callback_get_strings, ldv_2_container_net_device,
                                                ldv_2_ldv_param_18_1_default, ldv_2_ldv_param_18_2_default);
  ldv_free((void *)ldv_2_ldv_param_18_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_2_21(ldv_2_callback_get_ts_info, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_ts_info_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_2_22(ldv_2_callback_get_wol, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_2_23(ldv_2_callback_hw_start, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_2_24(ldv_2_callback_ndo_change_mtu, ldv_2_container_net_device,
                                                ldv_2_ldv_param_24_1_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_2_27(ldv_2_callback_ndo_do_ioctl, ldv_2_container_net_device,
                                                ldv_2_container_struct_ifreq_ptr,
                                                ldv_2_ldv_param_27_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_2_30(ldv_2_callback_ndo_fix_features, ldv_2_container_net_device,
                                                ldv_2_ldv_param_30_1_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_2_33(ldv_2_callback_ndo_get_stats64, ldv_2_container_net_device,
                                                ldv_2_container_struct_rtnl_link_stats64_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_2_34(ldv_2_callback_ndo_poll_controller,
                                                ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_2_35(ldv_2_callback_ndo_set_features, ldv_2_container_net_device,
                                                ldv_2_ldv_param_35_1_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_2_38(ldv_2_callback_ndo_set_mac_address,
                                                ldv_2_container_net_device, (void *)ldv_2_container_struct_ethtool_cmd_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_2_39(ldv_2_callback_ndo_set_rx_mode, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_40:
  {
  ldv_dummy_resourceless_instance_callback_2_40(ldv_2_callback_ndo_start_xmit, ldv_2_container_struct_sk_buff_ptr,
                                                ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_2_41(ldv_2_callback_ndo_tx_timeout, ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_42:
  {
  ldv_dummy_resourceless_instance_callback_2_42(ldv_2_callback_ndo_validate_addr,
                                                ldv_2_container_net_device);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_44:
  {
  ldv_dummy_resourceless_instance_callback_2_43(ldv_2_callback_set_msglevel, ldv_2_container_net_device,
                                                ldv_2_ldv_param_43_1_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_46:
  {
  ldv_assume((unsigned int )ldv_statevar_22 - 2U <= 1U);
  ldv_dummy_resourceless_instance_callback_2_46(ldv_2_callback_set_settings, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_cmd_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  case_47:
  {
  ldv_dummy_resourceless_instance_callback_2_47(ldv_2_callback_set_wol, ldv_2_container_net_device,
                                                ldv_2_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_52783;
  switch_default: ;
  switch_break: ;
  }
  ldv_52783: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_3(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_3 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_3 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_3 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_3 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_3 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_3 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_3 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_3 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_3 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_3 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_3 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_3 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_3 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_3 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_3 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_3 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_3 == 47) {
    goto case_47;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_52818;
  case_2:
  {
  ldv_statevar_3 = ldv_switch_0();
  }
  goto ldv_52818;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_get_drvinfo, ldv_3_container_net_device,
                                               ldv_3_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_4:
  {
  ldv_statevar_3 = ldv_switch_0();
  }
  goto ldv_52818;
  case_5: ;
  goto ldv_52818;
  case_8:
  {
  tmp = ldv_xmalloc(8UL);
  ldv_3_ldv_param_7_2_default = (unsigned long long *)tmp;
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_get_ethtool_stats, ldv_3_container_net_device,
                                               ldv_3_container_struct_ethtool_stats_ptr,
                                               ldv_3_ldv_param_7_2_default);
  ldv_free((void *)ldv_3_ldv_param_7_2_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_3_10(ldv_3_callback_get_link, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_3_11(ldv_3_callback_get_msglevel, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_3_12(ldv_3_callback_get_regs, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_3_container_struct_ethtool_cmd_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_3_13(ldv_3_callback_get_regs_len, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_3_14(ldv_3_callback_get_settings, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_cmd_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_3_15(ldv_3_callback_get_sset_count, ldv_3_container_net_device,
                                                ldv_3_ldv_param_15_1_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_19:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_18_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_3_18(ldv_3_callback_get_strings, ldv_3_container_net_device,
                                                ldv_3_ldv_param_18_1_default, ldv_3_ldv_param_18_2_default);
  ldv_free((void *)ldv_3_ldv_param_18_2_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_3_21(ldv_3_callback_get_ts_info, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_ts_info_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_3_22(ldv_3_callback_get_wol, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_3_23(ldv_3_callback_hw_start, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_3_24(ldv_3_callback_ndo_change_mtu, ldv_3_container_net_device,
                                                ldv_3_ldv_param_24_1_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_3_27(ldv_3_callback_ndo_do_ioctl, ldv_3_container_net_device,
                                                ldv_3_container_struct_ifreq_ptr,
                                                ldv_3_ldv_param_27_2_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_3_30(ldv_3_callback_ndo_fix_features, ldv_3_container_net_device,
                                                ldv_3_ldv_param_30_1_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_3_33(ldv_3_callback_ndo_get_stats64, ldv_3_container_net_device,
                                                ldv_3_container_struct_rtnl_link_stats64_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_3_34(ldv_3_callback_ndo_poll_controller,
                                                ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_3_35(ldv_3_callback_ndo_set_features, ldv_3_container_net_device,
                                                ldv_3_ldv_param_35_1_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_3_38(ldv_3_callback_ndo_set_mac_address,
                                                ldv_3_container_net_device, (void *)ldv_3_container_struct_ethtool_cmd_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_3_39(ldv_3_callback_ndo_set_rx_mode, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_40:
  {
  ldv_dummy_resourceless_instance_callback_3_40(ldv_3_callback_ndo_start_xmit, ldv_3_container_struct_sk_buff_ptr,
                                                ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_3_41(ldv_3_callback_ndo_tx_timeout, ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_42:
  {
  ldv_dummy_resourceless_instance_callback_3_42(ldv_3_callback_ndo_validate_addr,
                                                ldv_3_container_net_device);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_44:
  {
  ldv_dummy_resourceless_instance_callback_3_43(ldv_3_callback_set_msglevel, ldv_3_container_net_device,
                                                ldv_3_ldv_param_43_1_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_46:
  {
  ldv_assume((unsigned int )ldv_statevar_22 - 2U <= 1U);
  ldv_dummy_resourceless_instance_callback_3_46(ldv_3_callback_set_settings, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_cmd_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  case_47:
  {
  ldv_dummy_resourceless_instance_callback_3_47(ldv_3_callback_set_wol, ldv_3_container_net_device,
                                                ldv_3_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_52818;
  switch_default: ;
  switch_break: ;
  }
  ldv_52818: ;
  return;
}
}
int ldv_pci_instance_probe_4_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = rtl_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_4_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rtl_remove_one(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_4_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_4_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_4_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  rtl_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_4_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_4_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_4 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_4 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_4 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_4 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_4 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_4 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_52894;
  case_2:
  {
  ldv_assume((ldv_statevar_1 == 1 || ldv_statevar_2 == 1) || ldv_statevar_3 == 1);
  ldv_pci_instance_release_4_2(ldv_4_container_pci_driver->remove, ldv_4_resource_dev);
  ldv_statevar_4 = 1;
  }
  goto ldv_52894;
  case_3:
  {
  ldv_pci_instance_shutdown_4_3(ldv_4_container_pci_driver->shutdown, ldv_4_resource_dev);
  ldv_statevar_4 = 2;
  }
  goto ldv_52894;
  case_4:
  {
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_52894;
  case_5: ;
  if ((unsigned long )ldv_4_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_4_5(ldv_4_container_pci_driver->resume, ldv_4_resource_dev);
    }
  } else {
  }
  ldv_statevar_4 = 4;
  goto ldv_52894;
  case_6: ;
  if ((unsigned long )ldv_4_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_4_6(ldv_4_container_pci_driver->resume_early, ldv_4_resource_dev);
    }
  } else {
  }
  ldv_statevar_4 = 5;
  goto ldv_52894;
  case_7: ;
  if ((unsigned long )ldv_4_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_4_ret_default = ldv_pci_instance_suspend_late_4_7(ldv_4_container_pci_driver->suspend_late,
                                                          ldv_4_resource_dev, ldv_4_resource_pm_message);
    }
  } else {
  }
  {
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  ldv_statevar_4 = 6;
  }
  goto ldv_52894;
  case_8: ;
  if ((unsigned long )ldv_4_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_4_ret_default = ldv_pci_instance_suspend_4_8(ldv_4_container_pci_driver->suspend,
                                                     ldv_4_resource_dev, ldv_4_resource_pm_message);
    }
  } else {
  }
  {
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  ldv_statevar_4 = 7;
  }
  goto ldv_52894;
  case_9:
  {
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_52894;
  case_10:
  ldv_statevar_4 = 9;
  goto ldv_52894;
  case_12:
  {
  ldv_free((void *)ldv_4_resource_dev);
  ldv_free((void *)ldv_4_resource_struct_pci_device_id_ptr);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  }
  goto ldv_52894;
  case_14:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_52894;
  case_16:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_52894;
  case_17:
  {
  ldv_assume((ldv_statevar_1 == 5 || ldv_statevar_2 == 5) || ldv_statevar_3 == 5);
  ldv_pre_probe();
  ldv_4_ret_default = ldv_pci_instance_probe_4_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_4_container_pci_driver->probe,
                                                  ldv_4_resource_dev, ldv_4_resource_struct_pci_device_id_ptr);
  ldv_4_ret_default = ldv_ldv_post_probe_33(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 14;
  } else {
    ldv_statevar_4 = 16;
  }
  goto ldv_52894;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_4_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_4_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_4 = 12;
  } else {
    ldv_statevar_4 = 17;
  }
  goto ldv_52894;
  case_20: ;
  goto ldv_52894;
  switch_default: ;
  switch_break: ;
  }
  ldv_52894: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_31_pci_driver_pci_driver ;
  {
  {
  ldv_31_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_4 == 12);
  ldv_dispatch_deregister_31_1(ldv_31_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_6_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_6_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_complete_5_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_5_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_5_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_5_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_5_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_5_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_5_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_5_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_5_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_5_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_5_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_5_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_5_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_5_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_5_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_runtime_idle(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_5_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_runtime_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_5_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_runtime_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_5_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_5_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_5_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_5_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  rtl8169_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_5_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_5_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_platform_instance_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_6 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_6 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_6 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_6 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_6 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_6 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_6 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_6 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_6 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_6 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_6 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_6 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 22;
  }
  goto ldv_53045;
  case_4:
  {
  ldv_statevar_6 = ldv_switch_4();
  }
  goto ldv_53045;
  case_5:
  {
  ldv_assume(ldv_statevar_5 == 1);
  ldv_dispatch_pm_deregister_6_5();
  ldv_statevar_6 = 4;
  }
  goto ldv_53045;
  case_6:
  {
  ldv_assume(ldv_statevar_5 == 29);
  ldv_dispatch_pm_register_6_6();
  ldv_statevar_6 = 5;
  }
  goto ldv_53045;
  case_7:
  ldv_statevar_6 = 4;
  goto ldv_53045;
  case_9:
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  goto ldv_53045;
  case_11:
  {
  ldv_assume(ldv_6_probed_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 22;
  }
  goto ldv_53045;
  case_13:
  {
  ldv_assume(ldv_6_probed_default == 0);
  ldv_statevar_6 = ldv_switch_4();
  }
  goto ldv_53045;
  case_16:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 22;
  }
  goto ldv_53045;
  case_17: ;
  goto ldv_53045;
  case_20:
  {
  tmp___2 = ldv_xmalloc(1432UL);
  ldv_6_ldv_param_3_0_default = (struct platform_device *)tmp___2;
  }
  if ((unsigned long )ldv_6_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_6_3(ldv_6_container_platform_driver->remove, ldv_6_ldv_param_3_0_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_6_ldv_param_3_0_default);
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 1;
  }
  goto ldv_53045;
  case_22:
  {
  tmp___3 = ldv_xmalloc(1432UL);
  ldv_6_ldv_param_14_0_default = (struct platform_device *)tmp___3;
  ldv_pre_probe();
  }
  if ((unsigned long )ldv_6_container_platform_driver->probe != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_6_probed_default = ldv_platform_instance_probe_6_14(ldv_6_container_platform_driver->probe,
                                                            ldv_6_ldv_param_14_0_default);
    }
  } else {
  }
  {
  ldv_6_probed_default = ldv_ldv_post_probe_34(ldv_6_probed_default);
  ldv_free((void *)ldv_6_ldv_param_14_0_default);
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_6 = 11;
  } else {
    ldv_statevar_6 = 13;
  }
  goto ldv_53045;
  switch_default: ;
  switch_break: ;
  }
  ldv_53045: ;
  return;
}
}
void ldv_pm_pm_ops_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  if (ldv_statevar_5 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_5 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_5 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_5 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_5 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_5 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_5 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_5 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_5 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_5 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_5 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_5 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_5 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_5 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_5 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_5 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_5 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_5 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_5 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_5 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_5 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_5 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_5 == 29) {
    goto case_29;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53062;
  case_2:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53062;
  case_3: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_5_3(ldv_5_pm_ops_dev_pm_ops->complete, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 2;
  goto ldv_53062;
  case_4:
  {
  ldv_assume(ldv_statevar_22 == 3);
  ldv_pm_ops_instance_restore_5_4(ldv_5_pm_ops_dev_pm_ops->restore, ldv_5_device_device);
  ldv_statevar_5 = 3;
  }
  goto ldv_53062;
  case_5: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_noirq_5_5(ldv_5_pm_ops_dev_pm_ops->restore_noirq,
                                          ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 4;
  goto ldv_53062;
  case_6: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_noirq_5_6(ldv_5_pm_ops_dev_pm_ops->poweroff_noirq,
                                           ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 5;
  goto ldv_53062;
  case_7: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_early_5_7(ldv_5_pm_ops_dev_pm_ops->restore_early,
                                          ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 4;
  goto ldv_53062;
  case_8: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_late_5_8(ldv_5_pm_ops_dev_pm_ops->poweroff_late,
                                          ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 7;
  goto ldv_53062;
  case_9:
  {
  ldv_pm_ops_instance_poweroff_5_9(ldv_5_pm_ops_dev_pm_ops->poweroff, ldv_5_device_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 8;
  }
  goto ldv_53062;
  case_10:
  {
  ldv_assume(ldv_statevar_22 == 3);
  ldv_pm_ops_instance_thaw_5_10(ldv_5_pm_ops_dev_pm_ops->thaw, ldv_5_device_device);
  ldv_statevar_5 = 3;
  }
  goto ldv_53062;
  case_11: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_noirq_5_11(ldv_5_pm_ops_dev_pm_ops->thaw_noirq, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 10;
  goto ldv_53062;
  case_12: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_noirq_5_12(ldv_5_pm_ops_dev_pm_ops->freeze_noirq, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 11;
  goto ldv_53062;
  case_13: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_early_5_13(ldv_5_pm_ops_dev_pm_ops->thaw_early, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 10;
  goto ldv_53062;
  case_14: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_late_5_14(ldv_5_pm_ops_dev_pm_ops->freeze_late, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 13;
  goto ldv_53062;
  case_15:
  {
  ldv_pm_ops_instance_freeze_5_15(ldv_5_pm_ops_dev_pm_ops->freeze, ldv_5_device_device);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 12;
  } else {
    ldv_statevar_5 = 14;
  }
  goto ldv_53062;
  case_16:
  {
  ldv_assume(ldv_statevar_22 == 3);
  ldv_pm_ops_instance_resume_5_16(ldv_5_pm_ops_dev_pm_ops->resume, ldv_5_device_device);
  ldv_statevar_5 = 3;
  }
  goto ldv_53062;
  case_17: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_early_5_17(ldv_5_pm_ops_dev_pm_ops->resume_early, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 16;
  goto ldv_53062;
  case_18: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_late_5_18(ldv_5_pm_ops_dev_pm_ops->suspend_late, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 17;
  goto ldv_53062;
  case_19: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_noirq_5_19(ldv_5_pm_ops_dev_pm_ops->resume_noirq, ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 16;
  goto ldv_53062;
  case_20: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_noirq_5_20(ldv_5_pm_ops_dev_pm_ops->suspend_noirq,
                                           ldv_5_device_device);
    }
  } else {
  }
  ldv_statevar_5 = 19;
  goto ldv_53062;
  case_21:
  {
  ldv_pm_ops_instance_suspend_5_21(ldv_5_pm_ops_dev_pm_ops->suspend, ldv_5_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_5 = 18;
  } else {
    ldv_statevar_5 = 20;
  }
  goto ldv_53062;
  case_22: ;
  if ((unsigned long )ldv_5_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_5_22(ldv_5_pm_ops_dev_pm_ops->prepare, ldv_5_device_device);
    }
  } else {
  }
  {
  ldv_statevar_5 = ldv_switch_3();
  }
  goto ldv_53062;
  case_23:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53062;
  case_24:
  {
  ldv_assume(ldv_statevar_22 == 3);
  ldv_pm_ops_instance_runtime_resume_5_24(ldv_5_pm_ops_dev_pm_ops->runtime_resume,
                                          ldv_5_device_device);
  ldv_statevar_5 = 23;
  }
  goto ldv_53062;
  case_25:
  {
  ldv_pm_ops_instance_runtime_suspend_5_25(ldv_5_pm_ops_dev_pm_ops->runtime_suspend,
                                           ldv_5_device_device);
  ldv_statevar_5 = 24;
  }
  goto ldv_53062;
  case_26:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53062;
  case_27:
  {
  ldv_pm_ops_instance_runtime_idle_5_27(ldv_5_pm_ops_dev_pm_ops->runtime_idle, ldv_5_device_device);
  ldv_statevar_5 = 26;
  }
  goto ldv_53062;
  case_28:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53062;
  case_29: ;
  goto ldv_53062;
  switch_default: ;
  switch_break: ;
  }
  ldv_53062: ;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_28_netdev_net_device ;
  int ldv_28_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_28_ret_default = 1;
  ldv_28_ret_default = ldv_pre_register_netdev();
  ldv_28_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_28_ret_default == 0);
    ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_22 == 3);
    ldv_28_ret_default = ldv_register_netdev_open_28_6((ldv_28_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_28_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_28_ret_default == 0);
      ldv_assume((ldv_statevar_1 == 5 || ldv_statevar_2 == 5) || ldv_statevar_3 == 5);
      ldv_dispatch_register_28_4(ldv_28_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_28_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_28_ret_default != 0);
    }
  }
  return (ldv_28_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_28_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = rtl_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_29_callback_handler)(int , void * ) ;
  void *ldv_29_data_data ;
  int ldv_29_line_line ;
  enum irqreturn (*ldv_29_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_29_line_line = (int )arg1;
    ldv_29_callback_handler = arg2;
    ldv_29_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_29_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_29_2(ldv_29_line_line, ldv_29_callback_handler, ldv_29_thread_thread,
                                   ldv_29_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_10(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_10 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_10 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_10 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_10 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_10 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53125;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_10 = 1;
  } else {
    ldv_statevar_10 = 3;
  }
  goto ldv_53125;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_check, ldv_10_container_struct_rtl8169_private_ptr);
  ldv_statevar_10 = 2;
  }
  goto ldv_53125;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_10 = 1;
  } else {
    ldv_statevar_10 = 3;
  }
  goto ldv_53125;
  case_5: ;
  goto ldv_53125;
  switch_default: ;
  switch_break: ;
  }
  ldv_53125: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_11(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_11 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_11 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_11 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_11 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_11 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53135;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_11 = 1;
  } else {
    ldv_statevar_11 = 3;
  }
  goto ldv_53135;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_check, ldv_11_container_struct_rtl8169_private_ptr);
  ldv_statevar_11 = 2;
  }
  goto ldv_53135;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_11 = 1;
  } else {
    ldv_statevar_11 = 3;
  }
  goto ldv_53135;
  case_5: ;
  goto ldv_53135;
  switch_default: ;
  switch_break: ;
  }
  ldv_53135: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_12(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_12 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_12 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_12 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_12 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_12 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53145;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_12 = 1;
  } else {
    ldv_statevar_12 = 3;
  }
  goto ldv_53145;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_check, ldv_12_container_struct_rtl8169_private_ptr);
  ldv_statevar_12 = 2;
  }
  goto ldv_53145;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_12 = 1;
  } else {
    ldv_statevar_12 = 3;
  }
  goto ldv_53145;
  case_5: ;
  goto ldv_53145;
  switch_default: ;
  switch_break: ;
  }
  ldv_53145: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_13(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_13 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_13 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_13 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_13 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_13 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53155;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_13 = 1;
  } else {
    ldv_statevar_13 = 3;
  }
  goto ldv_53155;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_check, ldv_13_container_struct_rtl8169_private_ptr);
  ldv_statevar_13 = 2;
  }
  goto ldv_53155;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_13 = 1;
  } else {
    ldv_statevar_13 = 3;
  }
  goto ldv_53155;
  case_5: ;
  goto ldv_53155;
  switch_default: ;
  switch_break: ;
  }
  ldv_53155: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_14(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_14 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_14 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_14 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53165;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_14 = 1;
  } else {
    ldv_statevar_14 = 3;
  }
  goto ldv_53165;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_check, ldv_14_container_struct_rtl8169_private_ptr);
  ldv_statevar_14 = 2;
  }
  goto ldv_53165;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_14 = 1;
  } else {
    ldv_statevar_14 = 3;
  }
  goto ldv_53165;
  case_5: ;
  goto ldv_53165;
  switch_default: ;
  switch_break: ;
  }
  ldv_53165: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_15(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_15 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_15 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_15 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_15 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_15 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53175;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_15 = 1;
  } else {
    ldv_statevar_15 = 3;
  }
  goto ldv_53175;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_check, ldv_15_container_struct_rtl8169_private_ptr);
  ldv_statevar_15 = 2;
  }
  goto ldv_53175;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_15 = 1;
  } else {
    ldv_statevar_15 = 3;
  }
  goto ldv_53175;
  case_5: ;
  goto ldv_53175;
  switch_default: ;
  switch_break: ;
  }
  ldv_53175: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_16(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_16 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_16 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_16 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_16 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_16 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53185;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_16 = 1;
  } else {
    ldv_statevar_16 = 3;
  }
  goto ldv_53185;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_check, ldv_16_container_struct_rtl8169_private_ptr);
  ldv_statevar_16 = 2;
  }
  goto ldv_53185;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_16 = 1;
  } else {
    ldv_statevar_16 = 3;
  }
  goto ldv_53185;
  case_5: ;
  goto ldv_53185;
  switch_default: ;
  switch_break: ;
  }
  ldv_53185: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_17(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_17 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_17 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_17 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_17 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_17 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53195;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_17 = 1;
  } else {
    ldv_statevar_17 = 3;
  }
  goto ldv_53195;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_check, ldv_17_container_struct_rtl8169_private_ptr);
  ldv_statevar_17 = 2;
  }
  goto ldv_53195;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_17 = 1;
  } else {
    ldv_statevar_17 = 3;
  }
  goto ldv_53195;
  case_5: ;
  goto ldv_53195;
  switch_default: ;
  switch_break: ;
  }
  ldv_53195: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_18(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_18 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_18 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_18 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_18 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_18 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53205;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_18 = 1;
  } else {
    ldv_statevar_18 = 3;
  }
  goto ldv_53205;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_check, ldv_18_container_struct_rtl8169_private_ptr);
  ldv_statevar_18 = 2;
  }
  goto ldv_53205;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_18 = 1;
  } else {
    ldv_statevar_18 = 3;
  }
  goto ldv_53205;
  case_5: ;
  goto ldv_53205;
  switch_default: ;
  switch_break: ;
  }
  ldv_53205: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_19(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_19 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_19 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_19 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_19 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_19 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53215;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_19 = 1;
  } else {
    ldv_statevar_19 = 3;
  }
  goto ldv_53215;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_check, ldv_19_container_struct_rtl8169_private_ptr);
  ldv_statevar_19 = 2;
  }
  goto ldv_53215;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_19 = 1;
  } else {
    ldv_statevar_19 = 3;
  }
  goto ldv_53215;
  case_5: ;
  goto ldv_53215;
  switch_default: ;
  switch_break: ;
  }
  ldv_53215: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_20(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_20 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_20 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_20 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_20 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_20 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53225;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_20 = 1;
  } else {
    ldv_statevar_20 = 3;
  }
  goto ldv_53225;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_check, ldv_20_container_struct_rtl8169_private_ptr);
  ldv_statevar_20 = 2;
  }
  goto ldv_53225;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_20 = 1;
  } else {
    ldv_statevar_20 = 3;
  }
  goto ldv_53225;
  case_5: ;
  goto ldv_53225;
  switch_default: ;
  switch_break: ;
  }
  ldv_53225: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_21(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_21 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_21 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_21 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_21 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_21 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53235;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_21 = 1;
  } else {
    ldv_statevar_21 = 3;
  }
  goto ldv_53235;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_check, ldv_21_container_struct_rtl8169_private_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_53235;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_21 = 1;
  } else {
    ldv_statevar_21 = 3;
  }
  goto ldv_53235;
  case_5: ;
  goto ldv_53235;
  switch_default: ;
  switch_break: ;
  }
  ldv_53235: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_7(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_7 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_7 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_7 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_7 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53245;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_7 = 1;
  } else {
    ldv_statevar_7 = 3;
  }
  goto ldv_53245;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_check, ldv_7_container_struct_rtl8169_private_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_53245;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_7 = 1;
  } else {
    ldv_statevar_7 = 3;
  }
  goto ldv_53245;
  case_5: ;
  goto ldv_53245;
  switch_default: ;
  switch_break: ;
  }
  ldv_53245: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_8(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_8 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_8 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_8 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_8 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_8 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53255;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_8 = 1;
  } else {
    ldv_statevar_8 = 3;
  }
  goto ldv_53255;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_check, ldv_8_container_struct_rtl8169_private_ptr);
  ldv_statevar_8 = 2;
  }
  goto ldv_53255;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_8 = 1;
  } else {
    ldv_statevar_8 = 3;
  }
  goto ldv_53255;
  case_5: ;
  goto ldv_53255;
  switch_default: ;
  switch_break: ;
  }
  ldv_53255: ;
  return;
}
}
void ldv_struct_rtl_cond_dummy_resourceless_instance_9(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_9 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_9 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_9 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_9 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_9 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53265;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_9 = 1;
  } else {
    ldv_statevar_9 = 3;
  }
  goto ldv_53265;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_check, ldv_9_container_struct_rtl8169_private_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_53265;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_9 = 1;
  } else {
    ldv_statevar_9 = 3;
  }
  goto ldv_53265;
  case_5: ;
  goto ldv_53265;
  switch_default: ;
  switch_break: ;
  }
  ldv_53265: ;
  return;
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (8);
  case_3: ;
  return (10);
  case_4: ;
  return (11);
  case_5: ;
  return (12);
  case_6: ;
  return (13);
  case_7: ;
  return (14);
  case_8: ;
  return (16);
  case_9: ;
  return (19);
  case_10: ;
  return (21);
  case_11: ;
  return (22);
  case_12: ;
  return (23);
  case_13: ;
  return (25);
  case_14: ;
  return (28);
  case_15: ;
  return (31);
  case_16: ;
  return (33);
  case_17: ;
  return (34);
  case_18: ;
  return (36);
  case_19: ;
  return (38);
  case_20: ;
  return (39);
  case_21: ;
  return (40);
  case_22: ;
  return (41);
  case_23: ;
  return (42);
  case_24: ;
  return (44);
  case_25: ;
  return (46);
  case_26: ;
  return (47);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (22);
  case_2: ;
  return (25);
  case_3: ;
  return (27);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_3(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (9);
  case_1: ;
  return (15);
  case_2: ;
  return (21);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_4(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (6);
  case_1: ;
  return (7);
  case_2: ;
  return (20);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_10_1(void)
{
  {
  ldv_statevar_10 = 5;
  return;
}
}
void ldv_switch_automaton_state_10_5(void)
{
  {
  ldv_statevar_10 = 4;
  return;
}
}
void ldv_switch_automaton_state_11_1(void)
{
  {
  ldv_statevar_11 = 5;
  return;
}
}
void ldv_switch_automaton_state_11_5(void)
{
  {
  ldv_statevar_11 = 4;
  return;
}
}
void ldv_switch_automaton_state_12_1(void)
{
  {
  ldv_statevar_12 = 5;
  return;
}
}
void ldv_switch_automaton_state_12_5(void)
{
  {
  ldv_statevar_12 = 4;
  return;
}
}
void ldv_switch_automaton_state_13_1(void)
{
  {
  ldv_statevar_13 = 5;
  return;
}
}
void ldv_switch_automaton_state_13_5(void)
{
  {
  ldv_statevar_13 = 4;
  return;
}
}
void ldv_switch_automaton_state_14_1(void)
{
  {
  ldv_statevar_14 = 5;
  return;
}
}
void ldv_switch_automaton_state_14_5(void)
{
  {
  ldv_statevar_14 = 4;
  return;
}
}
void ldv_switch_automaton_state_15_1(void)
{
  {
  ldv_statevar_15 = 5;
  return;
}
}
void ldv_switch_automaton_state_15_5(void)
{
  {
  ldv_statevar_15 = 4;
  return;
}
}
void ldv_switch_automaton_state_16_1(void)
{
  {
  ldv_statevar_16 = 5;
  return;
}
}
void ldv_switch_automaton_state_16_5(void)
{
  {
  ldv_statevar_16 = 4;
  return;
}
}
void ldv_switch_automaton_state_17_1(void)
{
  {
  ldv_statevar_17 = 5;
  return;
}
}
void ldv_switch_automaton_state_17_5(void)
{
  {
  ldv_statevar_17 = 4;
  return;
}
}
void ldv_switch_automaton_state_18_1(void)
{
  {
  ldv_statevar_18 = 5;
  return;
}
}
void ldv_switch_automaton_state_18_5(void)
{
  {
  ldv_statevar_18 = 4;
  return;
}
}
void ldv_switch_automaton_state_19_1(void)
{
  {
  ldv_statevar_19 = 5;
  return;
}
}
void ldv_switch_automaton_state_19_5(void)
{
  {
  ldv_statevar_19 = 4;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_5(void)
{
  {
  ldv_statevar_1 = 4;
  return;
}
}
void ldv_switch_automaton_state_20_1(void)
{
  {
  ldv_statevar_20 = 5;
  return;
}
}
void ldv_switch_automaton_state_20_5(void)
{
  {
  ldv_statevar_20 = 4;
  return;
}
}
void ldv_switch_automaton_state_21_1(void)
{
  {
  ldv_statevar_21 = 5;
  return;
}
}
void ldv_switch_automaton_state_21_5(void)
{
  {
  ldv_statevar_21 = 4;
  return;
}
}
void ldv_switch_automaton_state_22_1(void)
{
  {
  ldv_statevar_22 = 3;
  return;
}
}
void ldv_switch_automaton_state_22_3(void)
{
  {
  ldv_statevar_22 = 2;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_statevar_2 = 4;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_switch_automaton_state_4_11(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 20;
  return;
}
}
void ldv_switch_automaton_state_4_20(void)
{
  {
  ldv_statevar_4 = 19;
  return;
}
}
void ldv_switch_automaton_state_5_1(void)
{
  {
  ldv_statevar_5 = 29;
  return;
}
}
void ldv_switch_automaton_state_5_29(void)
{
  {
  ldv_statevar_5 = 28;
  return;
}
}
void ldv_switch_automaton_state_6_17(void)
{
  {
  ldv_statevar_6 = 16;
  return;
}
}
void ldv_switch_automaton_state_6_8(void)
{
  {
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  return;
}
}
void ldv_switch_automaton_state_7_1(void)
{
  {
  ldv_statevar_7 = 5;
  return;
}
}
void ldv_switch_automaton_state_7_5(void)
{
  {
  ldv_statevar_7 = 4;
  return;
}
}
void ldv_switch_automaton_state_8_1(void)
{
  {
  ldv_statevar_8 = 5;
  return;
}
}
void ldv_switch_automaton_state_8_5(void)
{
  {
  ldv_statevar_8 = 4;
  return;
}
}
void ldv_switch_automaton_state_9_1(void)
{
  {
  ldv_statevar_9 = 5;
  return;
}
}
void ldv_switch_automaton_state_9_5(void)
{
  {
  ldv_statevar_9 = 4;
  return;
}
}
void ldv_timer_instance_callback_22_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_22(void *arg0 )
{
  {
  {
  if (ldv_statevar_22 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_22 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_22_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_22_2(ldv_22_container_timer_list->function, ldv_22_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_22 = 3;
  }
  goto ldv_53427;
  case_3: ;
  goto ldv_53427;
  switch_default: ;
  switch_break: ;
  }
  ldv_53427: ;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_30_netdev_net_device ;
  {
  {
  ldv_30_netdev_net_device = arg1;
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_22 == 2);
  ldv_unregister_netdev_stop_30_2((ldv_30_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_30_netdev_net_device);
  ldv_assume((ldv_statevar_1 == 1 || ldv_statevar_2 == 1) || ldv_statevar_3 == 1);
  ldv_dispatch_deregister_30_1(ldv_30_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_30_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  rtl8169_close(arg1);
  }
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err_or_null(ptr);
  }
  return (tmp);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_atomic_inc(v);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_16(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_17(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_21(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_23(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_24(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_25(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_26(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_27(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_28(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_29(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_30(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_31(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_32(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_probe_33(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
static int ldv_ldv_post_probe_34(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
void ldv_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS != 0 ? LDV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_USB_DEV_REF_COUNTS > 1) {
      LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __compiletime_assert_1634() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *external_alloc(void);
void *__kmalloc_node(size_t arg0, gfp_t arg1, int arg2) {
  return (void *)external_alloc();
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_idle(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __udelay(unsigned long arg0) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_stack() {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int ethtool_op_get_ts_info(struct net_device *arg0, struct ethtool_ts_info *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_register_netdev() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mii_ethtool_gset(struct mii_if_info *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_notice(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netdev_update_features(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_clear_master(struct pci_dev *arg0) {
  return;
}
void pci_clear_mwi(struct pci_dev *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool pci_dev_run_wake(struct pci_dev *arg0) {
  return __VERIFIER_nondet_bool();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_link_state(struct pci_dev *arg0, int arg1) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_wake_from_d3(struct pci_dev *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_clear_and_set_word(struct pci_dev *arg0, int arg1, u16 arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pm_schedule_suspend(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rtnl_is_locked() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int skb_checksum_help(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
void skb_clone_tx_timestamp(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int skb_pad(struct sk_buff *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_sched() {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
