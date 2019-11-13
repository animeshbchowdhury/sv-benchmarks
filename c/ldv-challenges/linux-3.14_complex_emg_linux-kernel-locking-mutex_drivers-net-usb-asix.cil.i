struct device;
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
struct mutex;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
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
enum ldv_27971 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_27972 {
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
   enum ldv_27971 reg_state : 8 ;
   bool dismantle ;
   enum ldv_27972 rtnl_link_state : 16 ;
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
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
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
union __anonunion____missing_field_name_245 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_245 __annonCompField75 ;
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
struct driver_info;
struct usbnet {
   struct usb_device *udev ;
   struct usb_interface *intf ;
   struct driver_info *driver_info ;
   char const *driver_name ;
   void *driver_priv ;
   wait_queue_head_t wait ;
   struct mutex phy_mutex ;
   unsigned char suspend_count ;
   unsigned char pkt_cnt ;
   unsigned char pkt_err ;
   unsigned short rx_qlen ;
   unsigned short tx_qlen ;
   unsigned int can_dma_sg : 1 ;
   unsigned int in ;
   unsigned int out ;
   struct usb_host_endpoint *status ;
   unsigned int maxpacket ;
   struct timer_list delay ;
   char const *padding_pkt ;
   struct net_device *net ;
   int msg_enable ;
   unsigned long data[5U] ;
   u32 xid ;
   u32 hard_mtu ;
   size_t rx_urb_size ;
   struct mii_if_info mii ;
   struct sk_buff_head rxq ;
   struct sk_buff_head txq ;
   struct sk_buff_head done ;
   struct sk_buff_head rxq_pause ;
   struct urb *interrupt ;
   unsigned int interrupt_count ;
   struct mutex interrupt_mutex ;
   struct usb_anchor deferred ;
   struct tasklet_struct bh ;
   struct work_struct kevent ;
   unsigned long flags ;
};
struct driver_info {
   char *description ;
   int flags ;
   int (*bind)(struct usbnet * , struct usb_interface * ) ;
   void (*unbind)(struct usbnet * , struct usb_interface * ) ;
   int (*reset)(struct usbnet * ) ;
   int (*stop)(struct usbnet * ) ;
   int (*check_connect)(struct usbnet * ) ;
   int (*manage_power)(struct usbnet * , int ) ;
   void (*status)(struct usbnet * , struct urb * ) ;
   int (*link_reset)(struct usbnet * ) ;
   int (*rx_fixup)(struct usbnet * , struct sk_buff * ) ;
   struct sk_buff *(*tx_fixup)(struct usbnet * , struct sk_buff * , gfp_t ) ;
   int (*early_init)(struct usbnet * ) ;
   void (*indication)(struct usbnet * , void * , int ) ;
   int in ;
   int out ;
   unsigned long data ;
};
struct asix_data {
   u8 multi_filter[8U] ;
   u8 mac_addr[6U] ;
   u8 phymode ;
   u8 ledmode ;
   u8 res ;
};
struct ax88172_int_data {
   __le16 res1 ;
   u8 link ;
   __le16 res2 ;
   u8 status ;
   __le16 res3 ;
};
typedef int ldv_func_ret_type;
enum hrtimer_restart;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct asix_rx_fixup_info {
   struct sk_buff *ax_skb ;
   u32 header ;
   u16 size ;
   bool split_head ;
};
struct asix_common_private {
   struct asix_rx_fixup_info rx_fixup_info ;
};
enum hrtimer_restart;
enum ldv_30952 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13
} ;
typedef enum ldv_30952 phy_interface_t;
enum ldv_30964 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_30964 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   struct device_driver driver ;
};
struct ax88172a_private {
   struct mii_bus *mdio ;
   struct phy_device *phydev ;
   char phy_name[20U] ;
   u16 phy_addr ;
   u16 oldmode ;
   int use_embdphy ;
   struct asix_rx_fixup_info rx_fixup_info ;
};
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
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void get_random_bytes(void * , int ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_15(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_16(struct usb_driver *ldv_func_arg1 ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
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
__inline static void eth_random_addr(u8 *addr )
{
  {
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  }
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  }
  return;
}
}
extern int mii_link_ok(struct mii_if_info * ) ;
extern int mii_nway_restart(struct mii_if_info * ) ;
extern int mii_ethtool_gset(struct mii_if_info * , struct ethtool_cmd * ) ;
extern unsigned int mii_check_media(struct mii_if_info * , unsigned int , unsigned int ) ;
extern int generic_mii_ioctl(struct mii_if_info * , struct mii_ioctl_data * , int ,
                             unsigned int * ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern u32 bitrev32(u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern int usbnet_probe(struct usb_interface * , struct usb_device_id const * ) ;
extern int usbnet_suspend(struct usb_interface * , pm_message_t ) ;
extern int usbnet_resume(struct usb_interface * ) ;
extern void usbnet_disconnect(struct usb_interface * ) ;
extern int usbnet_open(struct net_device * ) ;
extern int usbnet_stop(struct net_device * ) ;
extern netdev_tx_t usbnet_start_xmit(struct sk_buff * , struct net_device * ) ;
extern void usbnet_tx_timeout(struct net_device * ) ;
extern int usbnet_change_mtu(struct net_device * , int ) ;
extern int usbnet_get_endpoints(struct usbnet * , struct usb_interface * ) ;
extern void usbnet_unlink_rx_urbs(struct usbnet * ) ;
extern int usbnet_get_settings(struct net_device * , struct ethtool_cmd * ) ;
extern int usbnet_set_settings(struct net_device * , struct ethtool_cmd * ) ;
extern u32 usbnet_get_msglevel(struct net_device * ) ;
extern void usbnet_set_msglevel(struct net_device * , u32 ) ;
extern int usbnet_nway_reset(struct net_device * ) ;
extern void usbnet_link_change(struct usbnet * , bool , bool ) ;
extern void usbnet_update_max_qlen(struct usbnet * ) ;
struct driver_info const ax88172a_info ;
int asix_read_cmd(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                  void *data ) ;
int asix_write_cmd(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                   void *data ) ;
void asix_write_cmd_async(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                          void *data ) ;
int asix_rx_fixup_common(struct usbnet *dev , struct sk_buff *skb ) ;
struct sk_buff *asix_tx_fixup(struct usbnet *dev , struct sk_buff *skb , gfp_t flags ) ;
int asix_get_phy_addr(struct usbnet *dev ) ;
int asix_sw_reset(struct usbnet *dev , u8 flags ) ;
u16 asix_read_rx_ctl(struct usbnet *dev ) ;
int asix_write_rx_ctl(struct usbnet *dev , u16 mode ) ;
u16 asix_read_medium_status(struct usbnet *dev ) ;
int asix_write_medium_mode(struct usbnet *dev , u16 mode ) ;
int asix_write_gpio(struct usbnet *dev , u16 value , int sleep ) ;
void asix_set_multicast(struct net_device *net ) ;
int asix_mdio_read(struct net_device *netdev , int phy_id , int loc ) ;
void asix_mdio_write(struct net_device *netdev , int phy_id , int loc , int val ) ;
void asix_get_wol(struct net_device *net , struct ethtool_wolinfo *wolinfo ) ;
int asix_set_wol(struct net_device *net , struct ethtool_wolinfo *wolinfo ) ;
int asix_get_eeprom_len(struct net_device *net ) ;
int asix_get_eeprom(struct net_device *net , struct ethtool_eeprom *eeprom , u8 *data ) ;
int asix_set_eeprom(struct net_device *net , struct ethtool_eeprom *eeprom , u8 *data ) ;
void asix_get_drvinfo(struct net_device *net , struct ethtool_drvinfo *info ) ;
int asix_set_mac_address(struct net_device *net , void *p ) ;
static void asix_status(struct usbnet *dev , struct urb *urb )
{
  struct ax88172_int_data *event ;
  int link ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  {
  if (urb->actual_length <= 7U) {
    return;
  } else {
  }
  {
  event = (struct ax88172_int_data *)urb->transfer_buffer;
  link = (int )event->link & 1;
  tmp___0 = netif_carrier_ok((struct net_device const *)dev->net);
  }
  if ((int )tmp___0 != link) {
    {
    usbnet_link_change(dev, link != 0, 1);
    descriptor.modname = "asix";
    descriptor.function = "asix_status";
    descriptor.filename = "drivers/net/usb/asix_devices.c";
    descriptor.format = "Link Status is: %d\n";
    descriptor.lineno = 58U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "Link Status is: %d\n",
                           link);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void asix_set_netdev_dev_addr(struct usbnet *dev , u8 *addr )
{
  bool tmp ;
  {
  {
  tmp = is_valid_ether_addr((u8 const *)addr);
  }
  if ((int )tmp) {
    {
    memcpy((void *)(dev->net)->dev_addr, (void const *)addr, 6UL);
    }
  } else {
    {
    netdev_info((struct net_device const *)dev->net, "invalid hw address, using random\n");
    eth_hw_addr_random(dev->net);
    }
  }
  return;
}
}
static u32 asix_get_phyid(struct usbnet *dev )
{
  int phy_reg ;
  u32 phy_id ;
  int i ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  i = 0;
  goto ldv_43116;
  ldv_43115:
  {
  phy_reg = asix_mdio_read(dev->net, dev->mii.phy_id, 2);
  }
  if (phy_reg != 0 && phy_reg != 65535) {
    goto ldv_43110;
  } else {
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_43113;
    ldv_43112:
    {
    __const_udelay(4295000UL);
    }
    ldv_43113:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_43112;
    } else {
    }
  }
  i = i + 1;
  ldv_43116: ;
  if (i <= 99) {
    goto ldv_43115;
  } else {
  }
  ldv_43110: ;
  if (phy_reg <= 0 || phy_reg == 65535) {
    return (0U);
  } else {
  }
  {
  phy_id = (u32 )(phy_reg << 16);
  phy_reg = asix_mdio_read(dev->net, dev->mii.phy_id, 3);
  }
  if (phy_reg < 0) {
    return (0U);
  } else {
  }
  phy_id = phy_id | ((u32 )phy_reg & 65535U);
  return (phy_id);
}
}
static u32 asix_get_link(struct net_device *net )
{
  struct usbnet *dev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  tmp___0 = mii_link_ok(& dev->mii);
  }
  return ((u32 )tmp___0);
}
}
static int asix_ioctl(struct net_device *net , struct ifreq *rq , int cmd )
{
  struct usbnet *dev ;
  void *tmp ;
  struct mii_ioctl_data *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  tmp___0 = if_mii(rq);
  tmp___1 = generic_mii_ioctl(& dev->mii, tmp___0, cmd, (unsigned int *)0U);
  }
  return (tmp___1);
}
}
static struct ethtool_ops const ax88172_ethtool_ops =
     {& usbnet_get_settings, & usbnet_set_settings, & asix_get_drvinfo, 0, 0, & asix_get_wol,
    & asix_set_wol, & usbnet_get_msglevel, & usbnet_set_msglevel, & usbnet_nway_reset,
    & asix_get_link, & asix_get_eeprom_len, & asix_get_eeprom, & asix_set_eeprom,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static void ax88172_set_multicast(struct net_device *net )
{
  struct usbnet *dev ;
  void *tmp ;
  struct asix_data *data ;
  u8 rx_ctl ;
  struct netdev_hw_addr *ha ;
  u32 crc_bits ;
  struct list_head const *__mptr ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  data = (struct asix_data *)(& dev->data);
  rx_ctl = 140U;
  }
  if ((net->flags & 256U) != 0U) {
    rx_ctl = (u8 )((unsigned int )rx_ctl | 1U);
  } else
  if ((net->flags & 512U) != 0U || net->mc.count > 64) {
    rx_ctl = (u8 )((unsigned int )rx_ctl | 2U);
  } else
  if (net->mc.count == 0) {
  } else {
    {
    memset((void *)(& data->multi_filter), 0, 8UL);
    __mptr = (struct list_head const *)net->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    }
    goto ldv_43141;
    ldv_43140:
    {
    tmp___0 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___1 = bitrev32(tmp___0);
    crc_bits = tmp___1 >> 26;
    data->multi_filter[crc_bits >> 3] = (u8 )((int )((signed char )data->multi_filter[crc_bits >> 3]) | (int )((signed char )(1 << ((int )crc_bits & 7))));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_43141: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& net->mc.list)) {
      goto ldv_43140;
    } else {
    }
    {
    asix_write_cmd_async(dev, 22, 0, 0, 8, (void *)(& data->multi_filter));
    rx_ctl = (u8 )((unsigned int )rx_ctl | 16U);
    }
  }
  {
  asix_write_cmd_async(dev, 16, (int )rx_ctl, 0, 0, (void *)0);
  }
  return;
}
}
static int ax88172_link_reset(struct usbnet *dev )
{
  u8 mode ;
  struct ethtool_cmd ecmd ;
  struct _ddebug descriptor ;
  __u32 tmp ;
  long tmp___0 ;
  {
  {
  ecmd.cmd = 1U;
  ecmd.supported = 0U;
  ecmd.advertising = 0U;
  ecmd.speed = (unsigned short)0;
  ecmd.duplex = (unsigned char)0;
  ecmd.port = (unsigned char)0;
  ecmd.phy_address = (unsigned char)0;
  ecmd.transceiver = (unsigned char)0;
  ecmd.autoneg = (unsigned char)0;
  ecmd.mdio_support = (unsigned char)0;
  ecmd.maxtxpkt = 0U;
  ecmd.maxrxpkt = 0U;
  ecmd.speed_hi = (unsigned short)0;
  ecmd.eth_tp_mdix = (unsigned char)0;
  ecmd.eth_tp_mdix_ctrl = (unsigned char)0;
  ecmd.lp_advertising = 0U;
  ecmd.reserved[0] = 0U;
  ecmd.reserved[1] = 0U;
  mii_check_media(& dev->mii, 1U, 1U);
  mii_ethtool_gset(& dev->mii, & ecmd);
  mode = 22U;
  }
  if ((unsigned int )ecmd.duplex != 1U) {
    mode = (u8 )((int )((signed char )mode) | -3);
  } else {
  }
  {
  descriptor.modname = "asix";
  descriptor.function = "ax88172_link_reset";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "ax88172_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n";
  descriptor.lineno = 185U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = ethtool_cmd_speed((struct ethtool_cmd const *)(& ecmd));
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "ax88172_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
                         tmp, (int )ecmd.duplex, (int )mode);
    }
  } else {
  }
  {
  asix_write_medium_mode(dev, (int )mode);
  }
  return (0);
}
}
static struct net_device_ops const ax88172_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & ax88172_set_multicast,
    & eth_mac_addr, & eth_validate_addr, & asix_ioctl, 0, & usbnet_change_mtu, 0,
    & usbnet_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ax88172_bind(struct usbnet *dev , struct usb_interface *intf )
{
  int ret ;
  u8 buf[6U] ;
  int i ;
  unsigned long gpio_bits ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  ret = 0;
  gpio_bits = (dev->driver_info)->data;
  usbnet_get_endpoints(dev, intf);
  i = 2;
  }
  goto ldv_43161;
  ldv_43160:
  {
  ret = asix_write_cmd(dev, 31, (int )((u16 )(gpio_bits >> i * 8)) & 255, 0, 0, (void *)0);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  msleep(5U);
  i = i - 1;
  }
  ldv_43161: ;
  if (i >= 0) {
    goto ldv_43160;
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 128);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  ret = asix_read_cmd(dev, 23, 0, 0, 6, (void *)(& buf));
  }
  if (ret < 0) {
    {
    descriptor.modname = "asix";
    descriptor.function = "ax88172_bind";
    descriptor.filename = "drivers/net/usb/asix_devices.c";
    descriptor.format = "read AX_CMD_READ_NODE_ID failed: %d\n";
    descriptor.lineno = 230U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "read AX_CMD_READ_NODE_ID failed: %d\n",
                           ret);
      }
    } else {
    }
    goto out;
  } else {
  }
  {
  asix_set_netdev_dev_addr(dev, (u8 *)(& buf));
  dev->mii.dev = dev->net;
  dev->mii.mdio_read = & asix_mdio_read;
  dev->mii.mdio_write = & asix_mdio_write;
  dev->mii.phy_id_mask = 63;
  dev->mii.reg_num_mask = 31;
  dev->mii.phy_id = asix_get_phy_addr(dev);
  (dev->net)->netdev_ops = & ax88172_netdev_ops;
  (dev->net)->ethtool_ops = & ax88172_ethtool_ops;
  (dev->net)->needed_headroom = 4U;
  (dev->net)->needed_tailroom = 4U;
  asix_mdio_write(dev->net, dev->mii.phy_id, 0, 32768);
  asix_mdio_write(dev->net, dev->mii.phy_id, 4, 1505);
  mii_nway_restart(& dev->mii);
  }
  return (0);
  out: ;
  return (ret);
}
}
static struct ethtool_ops const ax88772_ethtool_ops =
     {& usbnet_get_settings, & usbnet_set_settings, & asix_get_drvinfo, 0, 0, & asix_get_wol,
    & asix_set_wol, & usbnet_get_msglevel, & usbnet_set_msglevel, & usbnet_nway_reset,
    & asix_get_link, & asix_get_eeprom_len, & asix_get_eeprom, & asix_set_eeprom,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int ax88772_link_reset(struct usbnet *dev )
{
  u16 mode ;
  struct ethtool_cmd ecmd ;
  __u32 tmp ;
  struct _ddebug descriptor ;
  __u32 tmp___0 ;
  long tmp___1 ;
  {
  {
  ecmd.cmd = 1U;
  ecmd.supported = 0U;
  ecmd.advertising = 0U;
  ecmd.speed = (unsigned short)0;
  ecmd.duplex = (unsigned char)0;
  ecmd.port = (unsigned char)0;
  ecmd.phy_address = (unsigned char)0;
  ecmd.transceiver = (unsigned char)0;
  ecmd.autoneg = (unsigned char)0;
  ecmd.mdio_support = (unsigned char)0;
  ecmd.maxtxpkt = 0U;
  ecmd.maxrxpkt = 0U;
  ecmd.speed_hi = (unsigned short)0;
  ecmd.eth_tp_mdix = (unsigned char)0;
  ecmd.eth_tp_mdix_ctrl = (unsigned char)0;
  ecmd.lp_advertising = 0U;
  ecmd.reserved[0] = 0U;
  ecmd.reserved[1] = 0U;
  mii_check_media(& dev->mii, 1U, 1U);
  mii_ethtool_gset(& dev->mii, & ecmd);
  mode = 822U;
  tmp = ethtool_cmd_speed((struct ethtool_cmd const *)(& ecmd));
  }
  if (tmp != 100U) {
    mode = (unsigned int )mode & 65023U;
  } else {
  }
  if ((unsigned int )ecmd.duplex != 1U) {
    mode = (unsigned int )mode & 65533U;
  } else {
  }
  {
  descriptor.modname = "asix";
  descriptor.function = "ax88772_link_reset";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "ax88772_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n";
  descriptor.lineno = 291U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)(& ecmd));
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "ax88772_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
                         tmp___0, (int )ecmd.duplex, (int )mode);
    }
  } else {
  }
  {
  asix_write_medium_mode(dev, (int )mode);
  }
  return (0);
}
}
static int ax88772_reset(struct usbnet *dev )
{
  struct asix_data *data ;
  int ret ;
  int embd_phy ;
  u16 rx_ctl ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  {
  {
  data = (struct asix_data *)(& dev->data);
  ret = asix_write_gpio(dev, 176, 5);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  tmp = asix_get_phy_addr(dev);
  embd_phy = (tmp & 31) == 16;
  ret = asix_write_cmd(dev, 34, (int )((u16 )embd_phy), 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    descriptor.modname = "asix";
    descriptor.function = "ax88772_reset";
    descriptor.filename = "drivers/net/usb/asix_devices.c";
    descriptor.format = "Select PHY #1 failed: %d\n";
    descriptor.lineno = 313U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "Select PHY #1 failed: %d\n",
                           ret);
      }
    } else {
    }
    goto out;
  } else {
  }
  {
  ret = asix_sw_reset(dev, 72);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, 0);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  msleep(150U);
  }
  if (embd_phy != 0) {
    {
    ret = asix_sw_reset(dev, 32);
    }
    if (ret < 0) {
      goto out;
    } else {
    }
  } else {
    {
    ret = asix_sw_reset(dev, 4);
    }
    if (ret < 0) {
      goto out;
    } else {
    }
  }
  {
  msleep(150U);
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor___0.modname = "asix";
  descriptor___0.function = "ax88772_reset";
  descriptor___0.filename = "drivers/net/usb/asix_devices.c";
  descriptor___0.format = "RX_CTL is 0x%04x after software reset\n";
  descriptor___0.lineno = 341U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "RX_CTL is 0x%04x after software reset\n", (int )rx_ctl);
    }
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 0);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor___1.modname = "asix";
  descriptor___1.function = "ax88772_reset";
  descriptor___1.filename = "drivers/net/usb/asix_devices.c";
  descriptor___1.format = "RX_CTL is 0x%04x setting to 0x0000\n";
  descriptor___1.lineno = 347U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                         "RX_CTL is 0x%04x setting to 0x0000\n", (int )rx_ctl);
    }
  } else {
  }
  {
  ret = asix_sw_reset(dev, 8);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, 40);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  msleep(150U);
  asix_mdio_write(dev->net, dev->mii.phy_id, 0, 32768);
  asix_mdio_write(dev->net, dev->mii.phy_id, 4, 481);
  mii_nway_restart(& dev->mii);
  ret = asix_write_medium_mode(dev, 822);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  ret = asix_write_cmd(dev, 18, 29, 18, 0, (void *)0);
  }
  if (ret < 0) {
    {
    descriptor___2.modname = "asix";
    descriptor___2.function = "ax88772_reset";
    descriptor___2.filename = "drivers/net/usb/asix_devices.c";
    descriptor___2.format = "Write IPG,IPG1,IPG2 failed: %d\n";
    descriptor___2.lineno = 374U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev->net,
                           "Write IPG,IPG1,IPG2 failed: %d\n", ret);
      }
    } else {
    }
    goto out;
  } else {
  }
  {
  memcpy((void *)(& data->mac_addr), (void const *)(dev->net)->dev_addr, 6UL);
  ret = asix_write_cmd(dev, 20, 0, 0, 6, (void *)(& data->mac_addr));
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 136);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor___3.modname = "asix";
  descriptor___3.function = "ax88772_reset";
  descriptor___3.filename = "drivers/net/usb/asix_devices.c";
  descriptor___3.format = "RX_CTL is 0x%04x after all initializations\n";
  descriptor___3.lineno = 392U;
  descriptor___3.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)dev->net,
                         "RX_CTL is 0x%04x after all initializations\n", (int )rx_ctl);
    }
  } else {
  }
  {
  rx_ctl = asix_read_medium_status(dev);
  descriptor___4.modname = "asix";
  descriptor___4.function = "ax88772_reset";
  descriptor___4.filename = "drivers/net/usb/asix_devices.c";
  descriptor___4.format = "Medium Status is 0x%04x after all initializations\n";
  descriptor___4.lineno = 397U;
  descriptor___4.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)dev->net,
                         "Medium Status is 0x%04x after all initializations\n", (int )rx_ctl);
    }
  } else {
  }
  return (0);
  out: ;
  return (ret);
}
}
static struct net_device_ops const ax88772_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & asix_set_multicast,
    & asix_set_mac_address, & eth_validate_addr, & asix_ioctl, 0, & usbnet_change_mtu,
    0, & usbnet_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ax88772_bind(struct usbnet *dev , struct usb_interface *intf )
{
  int ret ;
  int embd_phy ;
  int i ;
  u8 buf[6U] ;
  u32 phyid ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  {
  usbnet_get_endpoints(dev, intf);
  }
  if ((int )(dev->driver_info)->data & 1) {
    i = 0;
    goto ldv_43200;
    ldv_43199:
    {
    ret = asix_read_cmd(dev, 11, (int )((unsigned int )((u16 )i) + 4U), 0, 2, (void *)(& buf) + (unsigned long )(i * 2));
    }
    if (ret < 0) {
      goto ldv_43198;
    } else {
    }
    i = i + 1;
    ldv_43200: ;
    if (i <= 2) {
      goto ldv_43199;
    } else {
    }
    ldv_43198: ;
  } else {
    {
    ret = asix_read_cmd(dev, 19, 0, 0, 6, (void *)(& buf));
    }
  }
  if (ret < 0) {
    {
    descriptor.modname = "asix";
    descriptor.function = "ax88772_bind";
    descriptor.filename = "drivers/net/usb/asix_devices.c";
    descriptor.format = "Failed to read MAC address: %d\n";
    descriptor.lineno = 440U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "Failed to read MAC address: %d\n",
                           ret);
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  asix_set_netdev_dev_addr(dev, (u8 *)(& buf));
  dev->mii.dev = dev->net;
  dev->mii.mdio_read = & asix_mdio_read;
  dev->mii.mdio_write = & asix_mdio_write;
  dev->mii.phy_id_mask = 31;
  dev->mii.reg_num_mask = 31;
  dev->mii.phy_id = asix_get_phy_addr(dev);
  (dev->net)->netdev_ops = & ax88772_netdev_ops;
  (dev->net)->ethtool_ops = & ax88772_ethtool_ops;
  (dev->net)->needed_headroom = 4U;
  (dev->net)->needed_tailroom = 4U;
  embd_phy = (dev->mii.phy_id & 31) == 16;
  ret = asix_write_cmd(dev, 34, (int )((u16 )embd_phy), 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    descriptor___0.modname = "asix";
    descriptor___0.function = "ax88772_bind";
    descriptor___0.filename = "drivers/net/usb/asix_devices.c";
    descriptor___0.format = "Select PHY #1 failed: %d\n";
    descriptor___0.lineno = 464U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                           "Select PHY #1 failed: %d\n", ret);
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  ret = asix_sw_reset(dev, 72);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, embd_phy != 0 ? 32 : 4);
  phyid = asix_get_phyid(dev);
  descriptor___1.modname = "asix";
  descriptor___1.function = "ax88772_bind";
  descriptor___1.filename = "drivers/net/usb/asix_devices.c";
  descriptor___1.format = "PHYID=0x%08x\n";
  descriptor___1.lineno = 484U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                         "PHYID=0x%08x\n", phyid);
    }
  } else {
  }
  if (((dev->driver_info)->flags & 64) != 0) {
    dev->rx_urb_size = 2048UL;
  } else {
  }
  {
  dev->driver_priv = kzalloc(16UL, 208U);
  }
  if ((unsigned long )dev->driver_priv == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void ax88772_unbind(struct usbnet *dev , struct usb_interface *intf )
{
  {
  if ((unsigned long )dev->driver_priv != (unsigned long )((void *)0)) {
    {
    kfree((void const *)dev->driver_priv);
    }
  } else {
  }
  return;
}
}
static struct ethtool_ops const ax88178_ethtool_ops =
     {& usbnet_get_settings, & usbnet_set_settings, & asix_get_drvinfo, 0, 0, & asix_get_wol,
    & asix_set_wol, & usbnet_get_msglevel, & usbnet_set_msglevel, & usbnet_nway_reset,
    & asix_get_link, & asix_get_eeprom_len, & asix_get_eeprom, & asix_set_eeprom,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int marvell_phy_init(struct usbnet *dev )
{
  struct asix_data *data ;
  u16 reg ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  int tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  {
  {
  data = (struct asix_data *)(& dev->data);
  descriptor.modname = "asix";
  descriptor.function = "marvell_phy_init";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "marvell_phy_init()\n";
  descriptor.lineno = 526U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "marvell_phy_init()\n");
    }
  } else {
  }
  {
  tmp___0 = asix_mdio_read(dev->net, dev->mii.phy_id, 27);
  reg = (u16 )tmp___0;
  descriptor___0.modname = "asix";
  descriptor___0.function = "marvell_phy_init";
  descriptor___0.filename = "drivers/net/usb/asix_devices.c";
  descriptor___0.format = "MII_MARVELL_STATUS = 0x%04x\n";
  descriptor___0.lineno = 529U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "MII_MARVELL_STATUS = 0x%04x\n", (int )reg);
    }
  } else {
  }
  {
  asix_mdio_write(dev->net, dev->mii.phy_id, 20, 130);
  }
  if ((unsigned int )data->ledmode != 0U) {
    {
    tmp___2 = asix_mdio_read(dev->net, dev->mii.phy_id, 24);
    reg = (u16 )tmp___2;
    descriptor___1.modname = "asix";
    descriptor___1.function = "marvell_phy_init";
    descriptor___1.filename = "drivers/net/usb/asix_devices.c";
    descriptor___1.format = "MII_MARVELL_LED_CTRL (1) = 0x%04x\n";
    descriptor___1.lineno = 537U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                           "MII_MARVELL_LED_CTRL (1) = 0x%04x\n", (int )reg);
      }
    } else {
    }
    {
    reg = (unsigned int )reg & 63743U;
    reg = (u16 )((unsigned int )reg | 257U);
    asix_mdio_write(dev->net, dev->mii.phy_id, 24, (int )reg);
    tmp___4 = asix_mdio_read(dev->net, dev->mii.phy_id, 24);
    reg = (u16 )tmp___4;
    descriptor___2.modname = "asix";
    descriptor___2.function = "marvell_phy_init";
    descriptor___2.filename = "drivers/net/usb/asix_devices.c";
    descriptor___2.format = "MII_MARVELL_LED_CTRL (2) = 0x%04x\n";
    descriptor___2.lineno = 546U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev->net,
                           "MII_MARVELL_LED_CTRL (2) = 0x%04x\n", (int )reg);
      }
    } else {
    }
    reg = (unsigned int )reg & 64527U;
  } else {
  }
  return (0);
}
}
static int rtl8211cl_phy_init(struct usbnet *dev )
{
  struct asix_data *data ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  {
  data = (struct asix_data *)(& dev->data);
  descriptor.modname = "asix";
  descriptor.function = "rtl8211cl_phy_init";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "rtl8211cl_phy_init()\n";
  descriptor.lineno = 557U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "rtl8211cl_phy_init()\n");
    }
  } else {
  }
  {
  asix_mdio_write(dev->net, dev->mii.phy_id, 31, 5);
  asix_mdio_write(dev->net, dev->mii.phy_id, 12, 0);
  tmp___0 = asix_mdio_read(dev->net, dev->mii.phy_id, 1);
  asix_mdio_write(dev->net, dev->mii.phy_id, 1, tmp___0 | 128);
  asix_mdio_write(dev->net, dev->mii.phy_id, 31, 0);
  }
  if ((unsigned int )data->ledmode == 12U) {
    {
    asix_mdio_write(dev->net, dev->mii.phy_id, 31, 2);
    asix_mdio_write(dev->net, dev->mii.phy_id, 26, 203);
    asix_mdio_write(dev->net, dev->mii.phy_id, 31, 0);
    }
  } else {
  }
  return (0);
}
}
static int marvell_led_status(struct usbnet *dev , u16 speed )
{
  u16 reg ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  tmp = asix_mdio_read(dev->net, dev->mii.phy_id, 25);
  reg = (u16 )tmp;
  descriptor.modname = "asix";
  descriptor.function = "marvell_led_status";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "marvell_led_status() read 0x%04x\n";
  descriptor.lineno = 578U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "marvell_led_status() read 0x%04x\n",
                         (int )reg);
    }
  } else {
  }
  reg = (unsigned int )reg & 64527U;
  {
  if ((int )speed == 1000) {
    goto case_1000;
  } else {
  }
  if ((int )speed == 100) {
    goto case_100;
  } else {
  }
  goto switch_default;
  case_1000:
  reg = (u16 )((unsigned int )reg | 992U);
  goto ldv_43234;
  case_100:
  reg = (u16 )((unsigned int )reg | 944U);
  goto ldv_43234;
  switch_default:
  reg = (u16 )((unsigned int )reg | 752U);
  switch_break: ;
  }
  ldv_43234:
  {
  descriptor___0.modname = "asix";
  descriptor___0.function = "marvell_led_status";
  descriptor___0.filename = "drivers/net/usb/asix_devices.c";
  descriptor___0.format = "marvell_led_status() writing 0x%04x\n";
  descriptor___0.lineno = 594U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "marvell_led_status() writing 0x%04x\n", (int )reg);
    }
  } else {
  }
  {
  asix_mdio_write(dev->net, dev->mii.phy_id, 25, (int )reg);
  }
  return (0);
}
}
static int ax88178_reset(struct usbnet *dev )
{
  struct asix_data *data ;
  int ret ;
  __le16 eeprom ;
  u8 status ;
  int gpio0 ;
  u32 phyid ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  {
  {
  data = (struct asix_data *)(& dev->data);
  gpio0 = 0;
  asix_read_cmd(dev, 30, 0, 0, 1, (void *)(& status));
  descriptor.modname = "asix";
  descriptor.function = "ax88178_reset";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "GPIO Status: 0x%04x\n";
  descriptor.lineno = 610U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "GPIO Status: 0x%04x\n",
                         (int )status);
    }
  } else {
  }
  {
  asix_write_cmd(dev, 13, 0, 0, 0, (void *)0);
  asix_read_cmd(dev, 11, 23, 0, 2, (void *)(& eeprom));
  asix_write_cmd(dev, 14, 0, 0, 0, (void *)0);
  descriptor___0.modname = "asix";
  descriptor___0.function = "ax88178_reset";
  descriptor___0.filename = "drivers/net/usb/asix_devices.c";
  descriptor___0.format = "EEPROM index 0x17 is 0x%04x\n";
  descriptor___0.lineno = 616U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "EEPROM index 0x17 is 0x%04x\n", (int )eeprom);
    }
  } else {
  }
  if ((unsigned int )eeprom == 65535U) {
    data->phymode = 0U;
    data->ledmode = 0U;
    gpio0 = 1;
  } else {
    data->phymode = (unsigned int )((u8 )eeprom) & 127U;
    data->ledmode = (u8 )((int )eeprom >> 8);
    gpio0 = ((int )eeprom & 128) == 0;
  }
  {
  descriptor___1.modname = "asix";
  descriptor___1.function = "ax88178_reset";
  descriptor___1.filename = "drivers/net/usb/asix_devices.c";
  descriptor___1.format = "GPIO0: %d, PhyMode: %d\n";
  descriptor___1.lineno = 627U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                         "GPIO0: %d, PhyMode: %d\n", gpio0, (int )data->phymode);
    }
  } else {
  }
  {
  asix_write_gpio(dev, 140, 40);
  }
  if ((unsigned int )((int )eeprom >> 8) != 1U) {
    {
    asix_write_gpio(dev, 60, 30);
    asix_write_gpio(dev, 28, 300);
    asix_write_gpio(dev, 60, 30);
    }
  } else {
    {
    descriptor___2.modname = "asix";
    descriptor___2.function = "ax88178_reset";
    descriptor___2.filename = "drivers/net/usb/asix_devices.c";
    descriptor___2.format = "gpio phymode == 1 path\n";
    descriptor___2.lineno = 636U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev->net,
                           "gpio phymode == 1 path\n");
      }
    } else {
    }
    {
    asix_write_gpio(dev, 4, 30);
    asix_write_gpio(dev, 12, 30);
    }
  }
  {
  phyid = asix_get_phyid(dev);
  descriptor___3.modname = "asix";
  descriptor___3.function = "ax88178_reset";
  descriptor___3.filename = "drivers/net/usb/asix_devices.c";
  descriptor___3.format = "PHYID=0x%08x\n";
  descriptor___3.lineno = 643U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)dev->net,
                         "PHYID=0x%08x\n", phyid);
    }
  } else {
  }
  {
  asix_write_cmd(dev, 34, 0, 0, 0, (void *)0);
  asix_sw_reset(dev, 0);
  msleep(150U);
  asix_sw_reset(dev, 72);
  msleep(150U);
  asix_write_rx_ctl(dev, 0);
  }
  if ((unsigned int )data->phymode == 0U) {
    {
    marvell_phy_init(dev);
    msleep(60U);
    }
  } else
  if ((unsigned int )data->phymode == 12U) {
    {
    rtl8211cl_phy_init(dev);
    }
  } else {
  }
  {
  asix_mdio_write(dev->net, dev->mii.phy_id, 0, 36864);
  asix_mdio_write(dev->net, dev->mii.phy_id, 4, 1505);
  asix_mdio_write(dev->net, dev->mii.phy_id, 9, 512);
  mii_nway_restart(& dev->mii);
  ret = asix_write_medium_mode(dev, 886);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  memcpy((void *)(& data->mac_addr), (void const *)(dev->net)->dev_addr, 6UL);
  ret = asix_write_cmd(dev, 20, 0, 0, 6, (void *)(& data->mac_addr));
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 136);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int ax88178_link_reset(struct usbnet *dev )
{
  u16 mode ;
  struct ethtool_cmd ecmd ;
  struct asix_data *data ;
  u32 speed ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  ecmd.cmd = 1U;
  ecmd.supported = 0U;
  ecmd.advertising = 0U;
  ecmd.speed = (unsigned short)0;
  ecmd.duplex = (unsigned char)0;
  ecmd.port = (unsigned char)0;
  ecmd.phy_address = (unsigned char)0;
  ecmd.transceiver = (unsigned char)0;
  ecmd.autoneg = (unsigned char)0;
  ecmd.mdio_support = (unsigned char)0;
  ecmd.maxtxpkt = 0U;
  ecmd.maxrxpkt = 0U;
  ecmd.speed_hi = (unsigned short)0;
  ecmd.eth_tp_mdix = (unsigned char)0;
  ecmd.eth_tp_mdix_ctrl = (unsigned char)0;
  ecmd.lp_advertising = 0U;
  ecmd.reserved[0] = 0U;
  ecmd.reserved[1] = 0U;
  data = (struct asix_data *)(& dev->data);
  descriptor.modname = "asix";
  descriptor.function = "ax88178_link_reset";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "ax88178_link_reset()\n";
  descriptor.lineno = 696U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "ax88178_link_reset()\n");
    }
  } else {
  }
  {
  mii_check_media(& dev->mii, 1U, 1U);
  mii_ethtool_gset(& dev->mii, & ecmd);
  mode = 886U;
  speed = ethtool_cmd_speed((struct ethtool_cmd const *)(& ecmd));
  }
  if (speed == 1000U) {
    mode = (u16 )((unsigned int )mode | 1U);
  } else
  if (speed == 100U) {
    mode = (u16 )((unsigned int )mode | 512U);
  } else {
    mode = (unsigned int )mode & 65022U;
  }
  mode = (u16 )((unsigned int )mode | 8U);
  if ((unsigned int )ecmd.duplex == 1U) {
    mode = (u16 )((unsigned int )mode | 2U);
  } else {
    mode = (unsigned int )mode & 65533U;
  }
  {
  descriptor___0.modname = "asix";
  descriptor___0.function = "ax88178_link_reset";
  descriptor___0.filename = "drivers/net/usb/asix_devices.c";
  descriptor___0.format = "ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n";
  descriptor___0.lineno = 718U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\n",
                         speed, (int )ecmd.duplex, (int )mode);
    }
  } else {
  }
  {
  asix_write_medium_mode(dev, (int )mode);
  }
  if ((unsigned int )data->phymode == 0U && (unsigned int )data->ledmode != 0U) {
    {
    marvell_led_status(dev, (int )((u16 )speed));
    }
  } else {
  }
  return (0);
}
}
static void ax88178_set_mfb(struct usbnet *dev )
{
  u16 mfb ;
  u16 rxctl ;
  u16 medium ;
  int old_rx_urb_size ;
  {
  mfb = 768U;
  old_rx_urb_size = (int )dev->rx_urb_size;
  if (dev->hard_mtu <= 2047U) {
    dev->rx_urb_size = 2048UL;
    mfb = 0U;
  } else
  if (dev->hard_mtu <= 4095U) {
    dev->rx_urb_size = 4096UL;
    mfb = 256U;
  } else
  if (dev->hard_mtu <= 8191U) {
    dev->rx_urb_size = 8192UL;
    mfb = 512U;
  } else
  if (dev->hard_mtu <= 16383U) {
    dev->rx_urb_size = 16384UL;
    mfb = 768U;
  } else {
  }
  {
  rxctl = asix_read_rx_ctl(dev);
  asix_write_rx_ctl(dev, (int )((u16 )(((int )((short )rxctl) & -769) | (int )((short )mfb))));
  medium = asix_read_medium_status(dev);
  }
  if ((dev->net)->mtu > 1500U) {
    medium = (u16 )((unsigned int )medium | 64U);
  } else {
    medium = (unsigned int )medium & 65471U;
  }
  {
  asix_write_medium_mode(dev, (int )medium);
  }
  if (dev->rx_urb_size > (size_t )old_rx_urb_size) {
    {
    usbnet_unlink_rx_urbs(dev);
    }
  } else {
  }
  return;
}
}
static int ax88178_change_mtu(struct net_device *net , int new_mtu )
{
  struct usbnet *dev ;
  void *tmp ;
  int ll_mtu ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  ll_mtu = (new_mtu + (int )net->hard_header_len) + 4;
  descriptor.modname = "asix";
  descriptor.function = "ax88178_change_mtu";
  descriptor.filename = "drivers/net/usb/asix_devices.c";
  descriptor.format = "ax88178_change_mtu() new_mtu=%d\n";
  descriptor.lineno = 768U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "ax88178_change_mtu() new_mtu=%d\n",
                         new_mtu);
    }
  } else {
  }
  if (new_mtu <= 0 || ll_mtu > 16384) {
    return (-22);
  } else {
  }
  if ((unsigned int )ll_mtu % dev->maxpacket == 0U) {
    return (-33);
  } else {
  }
  {
  net->mtu = (unsigned int )new_mtu;
  dev->hard_mtu = net->mtu + (unsigned int )net->hard_header_len;
  ax88178_set_mfb(dev);
  usbnet_update_max_qlen(dev);
  }
  return (0);
}
}
static struct net_device_ops const ax88178_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & asix_set_multicast,
    & asix_set_mac_address, & eth_validate_addr, & asix_ioctl, 0, & ax88178_change_mtu,
    0, & usbnet_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ax88178_bind(struct usbnet *dev , struct usb_interface *intf )
{
  int ret ;
  u8 buf[6U] ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  usbnet_get_endpoints(dev, intf);
  ret = asix_read_cmd(dev, 19, 0, 0, 6, (void *)(& buf));
  }
  if (ret < 0) {
    {
    descriptor.modname = "asix";
    descriptor.function = "ax88178_bind";
    descriptor.filename = "drivers/net/usb/asix_devices.c";
    descriptor.format = "Failed to read MAC address: %d\n";
    descriptor.lineno = 808U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "Failed to read MAC address: %d\n",
                           ret);
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  asix_set_netdev_dev_addr(dev, (u8 *)(& buf));
  dev->mii.dev = dev->net;
  dev->mii.mdio_read = & asix_mdio_read;
  dev->mii.mdio_write = & asix_mdio_write;
  dev->mii.phy_id_mask = 31;
  dev->mii.reg_num_mask = 255;
  dev->mii.supports_gmii = 1U;
  dev->mii.phy_id = asix_get_phy_addr(dev);
  (dev->net)->netdev_ops = & ax88178_netdev_ops;
  (dev->net)->ethtool_ops = & ax88178_ethtool_ops;
  asix_sw_reset(dev, 0);
  msleep(150U);
  asix_sw_reset(dev, 72);
  msleep(150U);
  }
  if (((dev->driver_info)->flags & 64) != 0) {
    dev->rx_urb_size = 2048UL;
  } else {
  }
  {
  dev->driver_priv = kzalloc(16UL, 208U);
  }
  if ((unsigned long )dev->driver_priv == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static struct driver_info const ax8817x_info =
     {(char *)"ASIX AX8817x USB 2.0 Ethernet", 2080, & ax88172_bind, 0, & ax88172_link_reset,
    0, 0, 0, & asix_status, & ax88172_link_reset, 0, 0, 0, 0, 0, 0, 1245443UL};
static struct driver_info const dlink_dub_e100_info =
     {(char *)"DLink DUB-E100 USB Ethernet", 2080, & ax88172_bind, 0, & ax88172_link_reset,
    0, 0, 0, & asix_status, & ax88172_link_reset, 0, 0, 0, 0, 0, 0, 10460575UL};
static struct driver_info const netgear_fa120_info =
     {(char *)"Netgear FA-120 USB Ethernet", 2080, & ax88172_bind, 0, & ax88172_link_reset,
    0, 0, 0, & asix_status, & ax88172_link_reset, 0, 0, 0, 0, 0, 0, 1245443UL};
static struct driver_info const hawking_uf200_info =
     {(char *)"Hawking UF200 USB Ethernet", 2080, & ax88172_bind, 0, & ax88172_link_reset,
    0, 0, 0, & asix_status, & ax88172_link_reset, 0, 0, 0, 0, 0, 0, 2039071UL};
static struct driver_info const ax88772_info =
     {(char *)"ASIX AX88772 USB 2.0 Ethernet", 10336, & ax88772_bind, & ax88772_unbind,
    & ax88772_reset, 0, 0, 0, & asix_status, & ax88772_link_reset, & asix_rx_fixup_common,
    & asix_tx_fixup, 0, 0, 0, 0, 0UL};
static struct driver_info const ax88772b_info =
     {(char *)"ASIX AX88772B USB 2.0 Ethernet", 10336, & ax88772_bind, & ax88772_unbind,
    & ax88772_reset, 0, 0, 0, & asix_status, & ax88772_link_reset, & asix_rx_fixup_common,
    & asix_tx_fixup, 0, 0, 0, 0, 1UL};
static struct driver_info const ax88178_info =
     {(char *)"ASIX AX88178 USB 2.0 Ethernet", 10336, & ax88178_bind, & ax88772_unbind,
    & ax88178_reset, 0, 0, 0, & asix_status, & ax88178_link_reset, & asix_rx_fixup_common,
    & asix_tx_fixup, 0, 0, 0, 0, 0UL};
static struct driver_info const hg20f9_info =
     {(char *)"HG20F9 USB 2.0 Ethernet", 10336, & ax88772_bind, & ax88772_unbind, & ax88772_reset,
    0, 0, 0, & asix_status, & ax88772_link_reset, & asix_rx_fixup_common, & asix_tx_fixup,
    0, 0, 0, 0, 1UL};
static struct usb_device_id const products[36U] =
  { {3U, 1915U, 8742U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 2118U, 4160U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& netgear_fa120_info)},
        {3U, 8193U, 6656U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& dlink_dub_e100_info)},
        {3U, 2965U, 5920U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 1976U, 16906U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& hawking_uf200_info)},
        {3U, 2269U, 37119U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 1367U, 8201U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 1041U, 61U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 1041U, 110U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 24969U, 6189U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 3574U, 86U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 1962U, 23U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 4489U, 2195U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 5681U, 25088U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 1265U, 12296U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax8817x_info)},
        {3U, 6127U, 29187U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2965U, 30507U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772b_info)},
        {3U, 2965U, 30496U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2965U, 6016U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 1929U, 352U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 5041U, 24U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 5463U, 30496U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2001U, 15365U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 8193U, 15365U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 8193U, 6658U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 5943U, 57U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 1211U, 2352U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 1293U, 20565U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 1452U, 5122U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2965U, 30506U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 5354U, 43793U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88178_info)},
        {3U, 3504U, 43127U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2965U, 32299U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88772_info)},
        {3U, 2965U, 5930U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& ax88172a_info)},
        {3U, 1643U, 8441U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& hg20f9_info)}};
struct usb_device_id const __mod_usb_device_table ;
static struct usb_driver asix_driver =
     {"asix", & usbnet_probe, & usbnet_disconnect, 0, & usbnet_suspend, & usbnet_resume,
    0, 0, 0, (struct usb_device_id const *)(& products), {{{{{{0U}}, 0U, 0U, 0,
                                                               {0, {0, 0}, 0, 0, 0UL}}}},
                                                            {0, 0}}, {{0, 0, 0, 0,
                                                                       (_Bool)0, 0,
                                                                       0, 0, 0, 0,
                                                                       0, 0, 0, 0,
                                                                       0}, 0}, 0U,
    1U, 1U, 0U};
static int asix_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_15(& asix_driver, & __this_module, "asix");
  }
  return (tmp);
}
}
static void asix_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_16(& asix_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_asix_driver_exit_10_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_asix_driver_init_10_11(int (*arg0)(void) ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_8_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_10_4(void) ;
void ldv_dispatch_deregister_io_instance_4_10_5(void) ;
void ldv_dispatch_instance_deregister_7_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_7_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_9_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_10_6(void) ;
void ldv_dispatch_register_io_instance_4_10_7(void) ;
void ldv_dummy_resourceless_instance_callback_0_13(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_18(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_22(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_28(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_entry_EMGentry_10(void *arg0 ) ;
int main(void) ;
void ldv_initialize_external_data(void) ;
void ldv_io_instance_callback_2_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_3_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_3_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_3_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_3_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_3_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_3_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_4_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_4_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_4_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_4_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_4_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_4_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_5_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_5_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_5_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_5_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_5_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_5_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
int ldv_io_instance_probe_3_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
int ldv_io_instance_probe_4_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
int ldv_io_instance_probe_5_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_release_3_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_release_4_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_release_5_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_net_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_2(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_3(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_4(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_5(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_5(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_14(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_14(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_14(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_14(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_15(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_4(void) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_7(void *arg0 ) ;
void ldv_usb_instance_post_6_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_6_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_6_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_6_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_6_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_suspend_6_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_6(void *arg0 ) ;
int (*ldv_0_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_0_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_0_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
int (*ldv_0_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
struct net_device *ldv_0_container_net_device ;
struct ethtool_cmd *ldv_0_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_0_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_eeprom *ldv_0_container_struct_ethtool_eeprom_ptr ;
struct ethtool_wolinfo *ldv_0_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_0_container_struct_ifreq_ptr ;
struct sk_buff *ldv_0_container_struct_sk_buff_ptr ;
int ldv_0_ldv_param_15_1_default ;
int ldv_0_ldv_param_18_2_default ;
unsigned char *ldv_0_ldv_param_29_2_default ;
unsigned int ldv_0_ldv_param_32_1_default ;
unsigned char *ldv_0_ldv_param_7_2_default ;
void (*ldv_10_exit_asix_driver_exit_default)(void) ;
int (*ldv_10_init_asix_driver_init_default)(void) ;
int ldv_10_ret_default ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
int (*ldv_1_callback_nway_reset)(struct net_device * ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_eeprom *ldv_1_container_struct_ethtool_eeprom_ptr ;
struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
struct ifreq *ldv_1_container_struct_ifreq_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
int ldv_1_ldv_param_15_1_default ;
int ldv_1_ldv_param_18_2_default ;
unsigned char *ldv_1_ldv_param_29_2_default ;
unsigned int ldv_1_ldv_param_32_1_default ;
unsigned char *ldv_1_ldv_param_7_2_default ;
int (*ldv_2_callback_link_reset)(struct usbnet * ) ;
unsigned int ldv_2_ldv_param_20_2_default ;
struct sk_buff *ldv_2_resource_struct_sk_buff_ptr ;
struct urb *ldv_2_resource_struct_urb_ptr ;
struct usb_interface *ldv_2_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_2_resource_struct_usbnet_ptr ;
int ldv_2_ret_default ;
int (*ldv_3_callback_link_reset)(struct usbnet * ) ;
int (*ldv_3_callback_reset)(struct usbnet * ) ;
int (*ldv_3_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_3_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_3_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_3_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_3_container_struct_driver_info ;
unsigned int ldv_3_ldv_param_20_2_default ;
struct sk_buff *ldv_3_resource_struct_sk_buff_ptr ;
struct urb *ldv_3_resource_struct_urb_ptr ;
struct usb_interface *ldv_3_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_3_resource_struct_usbnet_ptr ;
int ldv_3_ret_default ;
int (*ldv_4_callback_link_reset)(struct usbnet * ) ;
int (*ldv_4_callback_reset)(struct usbnet * ) ;
int (*ldv_4_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_4_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_4_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_4_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_4_container_struct_driver_info ;
unsigned int ldv_4_ldv_param_20_2_default ;
struct sk_buff *ldv_4_resource_struct_sk_buff_ptr ;
struct urb *ldv_4_resource_struct_urb_ptr ;
struct usb_interface *ldv_4_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_4_resource_struct_usbnet_ptr ;
int ldv_4_ret_default ;
int (*ldv_5_callback_link_reset)(struct usbnet * ) ;
int (*ldv_5_callback_reset)(struct usbnet * ) ;
int (*ldv_5_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_5_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_5_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_5_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_5_container_struct_driver_info ;
unsigned int ldv_5_ldv_param_20_2_default ;
struct sk_buff *ldv_5_resource_struct_sk_buff_ptr ;
struct urb *ldv_5_resource_struct_urb_ptr ;
struct usb_interface *ldv_5_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_5_resource_struct_usbnet_ptr ;
int ldv_5_ret_default ;
struct usb_driver *ldv_6_container_usb_driver ;
struct usb_device_id *ldv_6_ldv_param_13_1_default ;
struct pm_message *ldv_6_ldv_param_8_1_default ;
int ldv_6_probe_retval_default ;
_Bool ldv_6_reset_flag_default ;
struct usb_interface *ldv_6_resource_usb_interface ;
struct usb_device *ldv_6_usb_device_usb_device ;
struct usb_driver *ldv_7_container_usb_driver ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_10 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int (*ldv_0_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & usbnet_get_settings;
int (*ldv_0_callback_ndo_change_mtu)(struct net_device * , int ) = & ax88178_change_mtu;
int (*ldv_0_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & asix_ioctl;
int (*ldv_0_callback_ndo_set_mac_address)(struct net_device * , void * ) = & eth_mac_addr;
void (*ldv_10_exit_asix_driver_exit_default)(void) = & asix_driver_exit;
int (*ldv_10_init_asix_driver_init_default)(void) = & asix_driver_init;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & usbnet_get_settings;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & eth_mac_addr;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & ax88172_set_multicast;
int (*ldv_1_callback_nway_reset)(struct net_device * ) = & usbnet_nway_reset;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & usbnet_set_settings;
int (*ldv_3_callback_link_reset)(struct usbnet * ) = & ax88178_link_reset;
int (*ldv_3_callback_reset)(struct usbnet * ) = & ax88178_reset;
int (*ldv_3_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & asix_rx_fixup_common;
void (*ldv_3_callback_status)(struct usbnet * , struct urb * ) = & asix_status;
void (*ldv_3_callback_unbind)(struct usbnet * , struct usb_interface * ) = & ax88772_unbind;
int (*ldv_4_callback_link_reset)(struct usbnet * ) = & ax88172_link_reset;
int (*ldv_4_callback_reset)(struct usbnet * ) = & ax88172_link_reset;
void (*ldv_4_callback_status)(struct usbnet * , struct urb * ) = & asix_status;
int (*ldv_5_callback_link_reset)(struct usbnet * ) = & ax88772_link_reset;
int (*ldv_5_callback_reset)(struct usbnet * ) = & ax88772_reset;
int (*ldv_5_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & asix_rx_fixup_common;
void (*ldv_5_callback_status)(struct usbnet * , struct urb * ) = & asix_status;
void (*ldv_5_callback_unbind)(struct usbnet * , struct usb_interface * ) = & ax88772_unbind;
void ldv_EMGentry_exit_asix_driver_exit_10_2(void (*arg0)(void) )
{
  {
  {
  asix_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_asix_driver_init_10_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = asix_driver_init();
  }
  return (tmp);
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
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_net_device = (struct net_device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_0_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_0_container_struct_ethtool_eeprom_ptr = (struct ethtool_eeprom *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_0_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_0_container_struct_ifreq_ptr = (struct ifreq *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_0_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_0_ldv_param_29_2_default = (unsigned char *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_0_ldv_param_7_2_default = (unsigned char *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_1_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_1_container_struct_ethtool_eeprom_ptr = (struct ethtool_eeprom *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_1_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_1_container_struct_ifreq_ptr = (struct ifreq *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_1_ldv_param_29_2_default = (unsigned char *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_1_ldv_param_7_2_default = (unsigned char *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_2_callback_link_reset = (int (*)(struct usbnet * ))tmp___17;
  tmp___18 = external_allocated_data();
  ldv_2_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_2_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_2_resource_struct_usbnet_ptr = (struct usbnet *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_3_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_3_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_3_resource_struct_usbnet_ptr = (struct usbnet *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_4_callback_rx_fixup = (int (*)(struct usbnet * , struct sk_buff * ))tmp___26;
  tmp___27 = external_allocated_data();
  ldv_4_callback_tx_fixup = (struct sk_buff *(*)(struct usbnet * , struct sk_buff * ,
                                                 unsigned int ))tmp___27;
  tmp___28 = external_allocated_data();
  ldv_4_callback_unbind = (void (*)(struct usbnet * , struct usb_interface * ))tmp___28;
  tmp___29 = external_allocated_data();
  ldv_4_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_4_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_4_resource_struct_usbnet_ptr = (struct usbnet *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_5_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_5_resource_struct_urb_ptr = (struct urb *)tmp___34;
  tmp___35 = external_allocated_data();
  ldv_5_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___35;
  tmp___36 = external_allocated_data();
  ldv_5_resource_struct_usbnet_ptr = (struct usbnet *)tmp___36;
  tmp___37 = external_allocated_data();
  ldv_6_ldv_param_13_1_default = (struct usb_device_id *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_6_ldv_param_8_1_default = (struct pm_message *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_6_resource_usb_interface = (struct usb_interface *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_6_usb_device_usb_device = (struct usb_device *)tmp___40;
  }
  return;
}
}
void ldv_dispatch_deregister_8_1(struct usb_driver *arg0 )
{
  {
  {
  ldv_7_container_usb_driver = arg0;
  ldv_switch_automaton_state_7_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_10_4(void)
{
  {
  {
  ldv_switch_automaton_state_0_1();
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_4_10_5(void)
{
  {
  {
  ldv_switch_automaton_state_2_5();
  ldv_switch_automaton_state_3_5();
  ldv_switch_automaton_state_4_5();
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_7_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_6_container_usb_driver = arg0;
  ldv_switch_automaton_state_6_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_7_3(struct usb_driver *arg0 )
{
  {
  {
  ldv_6_container_usb_driver = arg0;
  ldv_switch_automaton_state_6_15();
  }
  return;
}
}
void ldv_dispatch_register_9_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_7_container_usb_driver = arg0;
  ldv_switch_automaton_state_7_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_10_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_5();
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_4_10_7(void)
{
  {
  {
  ldv_switch_automaton_state_2_14();
  ldv_switch_automaton_state_3_14();
  ldv_switch_automaton_state_4_14();
  ldv_switch_automaton_state_5_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_13(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  usbnet_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  ax88178_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_18(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  asix_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_22(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  usbnet_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172_set_multicast(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_28(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_nway_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  usbnet_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_10(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
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
  if (ldv_statevar_10 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_10 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_10 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_10 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_10 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_7 == 2);
  ldv_EMGentry_exit_asix_driver_exit_10_2(ldv_10_exit_asix_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 11;
  }
  goto ldv_44052;
  case_3:
  {
  ldv_assume(ldv_statevar_7 == 2);
  ldv_EMGentry_exit_asix_driver_exit_10_2(ldv_10_exit_asix_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 11;
  }
  goto ldv_44052;
  case_4:
  {
  ldv_assume(ldv_statevar_0 == 1 || ldv_statevar_1 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_3_10_4();
  ldv_statevar_10 = 2;
  }
  goto ldv_44052;
  case_5:
  {
  ldv_assume(((ldv_statevar_2 == 6 || ldv_statevar_3 == 6) || ldv_statevar_4 == 6) || ldv_statevar_5 == 6);
  ldv_dispatch_deregister_io_instance_4_10_5();
  ldv_statevar_10 = 4;
  }
  goto ldv_44052;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 5 || ldv_statevar_1 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_3_10_6();
  ldv_statevar_10 = 5;
  }
  goto ldv_44052;
  case_7:
  {
  ldv_assume(((ldv_statevar_2 == 14 || ldv_statevar_3 == 14) || ldv_statevar_4 == 14) || ldv_statevar_5 == 14);
  ldv_dispatch_register_io_instance_4_10_7();
  ldv_statevar_10 = 6;
  }
  goto ldv_44052;
  case_8:
  {
  ldv_assume(ldv_10_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_10 = 3;
  } else {
    ldv_statevar_10 = 7;
  }
  goto ldv_44052;
  case_10:
  {
  ldv_assume(ldv_10_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_10 = 11;
  }
  goto ldv_44052;
  case_11:
  {
  ldv_assume(ldv_statevar_7 == 4);
  ldv_10_ret_default = ldv_EMGentry_init_asix_driver_init_10_11(ldv_10_init_asix_driver_init_default);
  ldv_10_ret_default = ldv_post_init(ldv_10_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_10 = 8;
  } else {
    ldv_statevar_10 = 10;
  }
  goto ldv_44052;
  switch_default: ;
  switch_break: ;
  }
  ldv_44052: ;
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
  ldv_statevar_10 = 11;
  ldv_statevar_0 = 5;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  ldv_6_reset_flag_default = 0;
  ldv_statevar_6 = 15;
  ldv_statevar_7 = 4;
  }
  ldv_44075:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_10((void *)0);
  }
  goto ldv_44065;
  case_1:
  {
  ldv_net_dummy_resourceless_instance_0((void *)0);
  }
  goto ldv_44065;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_44065;
  case_3:
  {
  ldv_struct_driver_info_io_instance_2((void *)0);
  }
  goto ldv_44065;
  case_4:
  {
  ldv_struct_driver_info_io_instance_3((void *)0);
  }
  goto ldv_44065;
  case_5:
  {
  ldv_struct_driver_info_io_instance_4((void *)0);
  }
  goto ldv_44065;
  case_6:
  {
  ldv_struct_driver_info_io_instance_5((void *)0);
  }
  goto ldv_44065;
  case_7:
  {
  ldv_usb_usb_instance_6((void *)0);
  }
  goto ldv_44065;
  case_8:
  {
  ldv_usb_dummy_factory_7((void *)0);
  }
  goto ldv_44065;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_44065: ;
  goto ldv_44075;
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
void ldv_io_instance_callback_2_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88178_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  asix_rx_fixup_common(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  asix_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  ax88772_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88178_link_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88172_link_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  asix_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88172_link_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_5_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88772_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_5_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  asix_rx_fixup_common(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  asix_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  ax88772_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88772_link_reset(arg1);
  }
  return;
}
}
int ldv_io_instance_probe_3_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = ax88178_bind(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_4_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = ax88172_bind(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_5_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = ax88772_bind(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_3_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_io_instance_release_4_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_io_instance_release_5_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_struct_driver_info_io_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_3 == 6) {
    goto case_6;
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
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_3 == 18) {
    goto case_18;
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
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_44225;
  case_2: ;
  if ((unsigned long )ldv_3_container_struct_driver_info->stop != (unsigned long )((int (*)(struct usbnet * ))0)) {
    {
    ldv_io_instance_release_3_2(ldv_3_container_struct_driver_info->stop, ldv_3_resource_struct_usbnet_ptr);
    }
  } else {
  }
  ldv_statevar_3 = 1;
  goto ldv_44225;
  case_3:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_44225;
  case_4:
  {
  ldv_io_instance_callback_3_4(ldv_3_callback_link_reset, ldv_3_resource_struct_usbnet_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  case_6:
  {
  ldv_free((void *)ldv_3_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_3_resource_struct_urb_ptr);
  ldv_free((void *)ldv_3_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_3_resource_struct_usbnet_ptr);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  goto ldv_44225;
  case_8:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_44225;
  case_10:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_44225;
  case_11:
  {
  ldv_3_ret_default = ldv_io_instance_probe_3_11(ldv_3_container_struct_driver_info->bind,
                                                 ldv_3_resource_struct_usbnet_ptr,
                                                 ldv_3_resource_struct_usb_interface_ptr);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 8;
  } else {
    ldv_statevar_3 = 10;
  }
  goto ldv_44225;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_3_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_3_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_3_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_44225;
  case_14: ;
  goto ldv_44225;
  case_17:
  {
  ldv_io_instance_callback_3_17(ldv_3_callback_reset, ldv_3_resource_struct_usbnet_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  case_18:
  {
  ldv_io_instance_callback_3_18(ldv_3_callback_rx_fixup, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_sk_buff_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  case_19:
  {
  ldv_io_instance_callback_3_19(ldv_3_callback_status, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_urb_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  case_21:
  {
  ldv_io_instance_callback_3_20(ldv_3_callback_tx_fixup, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_sk_buff_ptr, ldv_3_ldv_param_20_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  case_23:
  {
  ldv_io_instance_callback_3_23(ldv_3_callback_unbind, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_usb_interface_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_44225;
  switch_default: ;
  switch_break: ;
  }
  ldv_44225: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_4 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_4 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_4 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_4 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_4 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_4 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_44245;
  case_2: ;
  if ((unsigned long )ldv_4_container_struct_driver_info->stop != (unsigned long )((int (*)(struct usbnet * ))0)) {
    {
    ldv_io_instance_release_4_2(ldv_4_container_struct_driver_info->stop, ldv_4_resource_struct_usbnet_ptr);
    }
  } else {
  }
  ldv_statevar_4 = 1;
  goto ldv_44245;
  case_3:
  {
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_44245;
  case_4:
  {
  ldv_io_instance_callback_4_4(ldv_4_callback_link_reset, ldv_4_resource_struct_usbnet_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_44245;
  case_6:
  {
  ldv_free((void *)ldv_4_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_4_resource_struct_urb_ptr);
  ldv_free((void *)ldv_4_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_4_resource_struct_usbnet_ptr);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  }
  goto ldv_44245;
  case_8:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_44245;
  case_10:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_44245;
  case_11:
  {
  ldv_4_ret_default = ldv_io_instance_probe_4_11(ldv_4_container_struct_driver_info->bind,
                                                 ldv_4_resource_struct_usbnet_ptr,
                                                 ldv_4_resource_struct_usb_interface_ptr);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 8;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_44245;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_4_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_4_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_4_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_44245;
  case_14: ;
  goto ldv_44245;
  case_17:
  {
  ldv_io_instance_callback_4_17(ldv_4_callback_reset, ldv_4_resource_struct_usbnet_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_44245;
  case_18: ;
  if ((unsigned long )ldv_4_callback_rx_fixup != (unsigned long )((int (*)(struct usbnet * ,
                                                                           struct sk_buff * ))0)) {
    {
    ldv_io_instance_callback_4_18(ldv_4_callback_rx_fixup, ldv_4_resource_struct_usbnet_ptr,
                                  ldv_4_resource_struct_sk_buff_ptr);
    }
  } else {
  }
  ldv_statevar_4 = 3;
  goto ldv_44245;
  case_19:
  {
  ldv_io_instance_callback_4_19(ldv_4_callback_status, ldv_4_resource_struct_usbnet_ptr,
                                ldv_4_resource_struct_urb_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_44245;
  case_21: ;
  if ((unsigned long )ldv_4_callback_tx_fixup != (unsigned long )((struct sk_buff *(*)(struct usbnet * ,
                                                                                       struct sk_buff * ,
                                                                                       unsigned int ))0)) {
    {
    ldv_io_instance_callback_4_20(ldv_4_callback_tx_fixup, ldv_4_resource_struct_usbnet_ptr,
                                  ldv_4_resource_struct_sk_buff_ptr, ldv_4_ldv_param_20_2_default);
    }
  } else {
  }
  ldv_statevar_4 = 3;
  goto ldv_44245;
  case_23: ;
  if ((unsigned long )ldv_4_callback_unbind != (unsigned long )((void (*)(struct usbnet * ,
                                                                          struct usb_interface * ))0)) {
    {
    ldv_io_instance_callback_4_23(ldv_4_callback_unbind, ldv_4_resource_struct_usbnet_ptr,
                                  ldv_4_resource_struct_usb_interface_ptr);
    }
  } else {
  }
  ldv_statevar_4 = 3;
  goto ldv_44245;
  switch_default: ;
  switch_break: ;
  }
  ldv_44245: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_5 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
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
  if (ldv_statevar_5 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_5 == 14) {
    goto case_14;
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
  if (ldv_statevar_5 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_5 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_44265;
  case_2: ;
  if ((unsigned long )ldv_5_container_struct_driver_info->stop != (unsigned long )((int (*)(struct usbnet * ))0)) {
    {
    ldv_io_instance_release_5_2(ldv_5_container_struct_driver_info->stop, ldv_5_resource_struct_usbnet_ptr);
    }
  } else {
  }
  ldv_statevar_5 = 1;
  goto ldv_44265;
  case_3:
  {
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_44265;
  case_4:
  {
  ldv_io_instance_callback_5_4(ldv_5_callback_link_reset, ldv_5_resource_struct_usbnet_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  case_6:
  {
  ldv_free((void *)ldv_5_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_5_resource_struct_urb_ptr);
  ldv_free((void *)ldv_5_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_5_resource_struct_usbnet_ptr);
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  }
  goto ldv_44265;
  case_8:
  {
  ldv_assume(ldv_5_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_44265;
  case_10:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_44265;
  case_11:
  {
  ldv_5_ret_default = ldv_io_instance_probe_5_11(ldv_5_container_struct_driver_info->bind,
                                                 ldv_5_resource_struct_usbnet_ptr,
                                                 ldv_5_resource_struct_usb_interface_ptr);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_5 = 8;
  } else {
    ldv_statevar_5 = 10;
  }
  goto ldv_44265;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_5_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_5_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_5_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_5_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_5 = 6;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_44265;
  case_14: ;
  goto ldv_44265;
  case_17:
  {
  ldv_io_instance_callback_5_17(ldv_5_callback_reset, ldv_5_resource_struct_usbnet_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  case_18:
  {
  ldv_io_instance_callback_5_18(ldv_5_callback_rx_fixup, ldv_5_resource_struct_usbnet_ptr,
                                ldv_5_resource_struct_sk_buff_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  case_19:
  {
  ldv_io_instance_callback_5_19(ldv_5_callback_status, ldv_5_resource_struct_usbnet_ptr,
                                ldv_5_resource_struct_urb_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  case_21:
  {
  ldv_io_instance_callback_5_20(ldv_5_callback_tx_fixup, ldv_5_resource_struct_usbnet_ptr,
                                ldv_5_resource_struct_sk_buff_ptr, ldv_5_ldv_param_20_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  case_23:
  {
  ldv_io_instance_callback_5_23(ldv_5_callback_unbind, ldv_5_resource_struct_usbnet_ptr,
                                ldv_5_resource_struct_usb_interface_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_44265;
  switch_default: ;
  switch_break: ;
  }
  ldv_44265: ;
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
  return (24);
  case_14: ;
  return (25);
  case_15: ;
  return (26);
  case_16: ;
  return (27);
  case_17: ;
  return (28);
  case_18: ;
  return (30);
  case_19: ;
  return (33);
  case_20: ;
  return (35);
  case_21: ;
  return (36);
  case_22: ;
  return (37);
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
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (18);
  case_4: ;
  return (19);
  case_5: ;
  return (21);
  case_6: ;
  return (23);
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
  return (5);
  case_1: ;
  return (6);
  case_2: ;
  return (11);
  case_3: ;
  return (16);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_3_14(void)
{
  {
  ldv_statevar_3 = 13;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  return;
}
}
void ldv_switch_automaton_state_4_14(void)
{
  {
  ldv_statevar_4 = 13;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  return;
}
}
void ldv_switch_automaton_state_5_14(void)
{
  {
  ldv_statevar_5 = 13;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  return;
}
}
void ldv_switch_automaton_state_6_1(void)
{
  {
  ldv_6_reset_flag_default = 0;
  ldv_statevar_6 = 15;
  return;
}
}
void ldv_switch_automaton_state_6_15(void)
{
  {
  ldv_statevar_6 = 14;
  return;
}
}
void ldv_switch_automaton_state_7_1(void)
{
  {
  ldv_statevar_7 = 4;
  return;
}
}
void ldv_switch_automaton_state_7_4(void)
{
  {
  ldv_statevar_7 = 3;
  return;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_8_usb_driver_usb_driver ;
  {
  {
  ldv_8_usb_driver_usb_driver = arg1;
  ldv_assume(ldv_statevar_7 == 2);
  ldv_dispatch_deregister_8_1(ldv_8_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_7(void *arg0 )
{
  {
  {
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_dispatch_instance_deregister_7_2(ldv_7_container_usb_driver);
  ldv_statevar_7 = 4;
  }
  goto ldv_44353;
  case_3:
  {
  ldv_assume(ldv_statevar_6 == 15);
  ldv_dispatch_instance_register_7_3(ldv_7_container_usb_driver);
  ldv_statevar_7 = 2;
  }
  goto ldv_44353;
  case_4: ;
  goto ldv_44353;
  switch_default: ;
  switch_break: ;
  }
  ldv_44353: ;
  return;
}
}
void ldv_usb_instance_post_6_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_6_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_6_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = usbnet_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_6_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  usbnet_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_6_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  usbnet_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_suspend_6_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 )
{
  {
  {
  usbnet_suspend(arg1, *arg2);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_9_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_9_usb_driver_usb_driver = arg1;
    ldv_assume(ldv_statevar_7 == 4);
    ldv_dispatch_register_9_2(ldv_9_usb_driver_usb_driver);
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
void ldv_usb_usb_instance_6(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  {
  if (ldv_statevar_6 == 3) {
    goto case_3;
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
  if (ldv_statevar_6 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_6 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_6 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_6 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_6 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_6 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_3:
  {
  ldv_assume(ldv_6_probe_retval_default != 0);
  ldv_free((void *)ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_usb_device_usb_device);
  ldv_6_reset_flag_default = 0;
  ldv_statevar_6 = 15;
  }
  goto ldv_44402;
  case_4:
  {
  ldv_usb_instance_release_6_4(ldv_6_container_usb_driver->disconnect, ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_usb_device_usb_device);
  ldv_6_reset_flag_default = 0;
  ldv_statevar_6 = 15;
  }
  goto ldv_44402;
  case_5:
  {
  ldv_usb_instance_release_6_4(ldv_6_container_usb_driver->disconnect, ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_resource_usb_interface);
  ldv_free((void *)ldv_6_usb_device_usb_device);
  ldv_6_reset_flag_default = 0;
  ldv_statevar_6 = 15;
  }
  goto ldv_44402;
  case_6:
  ldv_statevar_6 = 4;
  goto ldv_44402;
  case_7:
  {
  ldv_usb_instance_resume_6_7(ldv_6_container_usb_driver->resume, ldv_6_resource_usb_interface);
  ldv_statevar_6 = 4;
  }
  goto ldv_44402;
  case_9: ;
  if ((unsigned long )ldv_6_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_post_6_9(ldv_6_container_usb_driver->post_reset, ldv_6_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_6 = 4;
  goto ldv_44402;
  case_10: ;
  if ((unsigned long )ldv_6_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_pre_6_10(ldv_6_container_usb_driver->pre_reset, ldv_6_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_6 = 9;
  goto ldv_44402;
  case_11: ;
  goto ldv_44402;
  case_12:
  {
  ldv_assume(ldv_6_probe_retval_default == 0);
  ldv_statevar_6 = ldv_switch_2();
  }
  goto ldv_44402;
  case_14:
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_6_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_6_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_6_resource_usb_interface->dev.parent = & ldv_6_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_6_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_6_probe_retval_default = ldv_usb_instance_probe_6_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_6_container_usb_driver->probe,
                                                           ldv_6_resource_usb_interface,
                                                           ldv_6_ldv_param_13_1_default);
  ldv_6_probe_retval_default = ldv_post_probe(ldv_6_probe_retval_default);
  ldv_free((void *)ldv_6_ldv_param_13_1_default);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_6 = 3;
  } else {
    ldv_statevar_6 = 12;
  }
  goto ldv_44402;
  case_15: ;
  goto ldv_44402;
  case_16:
  {
  tmp___3 = ldv_xmalloc(4UL);
  ldv_6_ldv_param_8_1_default = (struct pm_message *)tmp___3;
  ldv_usb_instance_suspend_6_8(ldv_6_container_usb_driver->suspend, ldv_6_resource_usb_interface,
                               ldv_6_ldv_param_8_1_default);
  ldv_free((void *)ldv_6_ldv_param_8_1_default);
  ldv_statevar_6 = 7;
  }
  goto ldv_44402;
  switch_default: ;
  switch_break: ;
  }
  ldv_44402: ;
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
static int ldv_usb_register_driver_15(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_usb_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_usb_deregister_16(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_phy_mutex_of_usbnet(struct mutex *lock ) ;
void ldv_mutex_unlock_phy_mutex_of_usbnet(struct mutex *lock ) ;
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern void *memmove(void * , void const * , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
extern void kfree_skb(struct sk_buff * ) ;
extern struct sk_buff *skb_copy_expand(struct sk_buff const * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_cloned(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) != 0U) {
    {
    tmp = skb_end_pointer(skb);
    tmp___0 = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
    }
    if ((tmp___0 & 65535) != 1) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  {
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  }
  return (dataref != 1);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  }
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  {
  tmp = skb_is_nonlinear(skb);
  }
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
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
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  {
  {
  memcpy((void *)skb->data, from, (size_t )len);
  }
  return;
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
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
extern int netdev_err(struct net_device const * , char const * , ...) ;
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  }
  return (tmp);
}
}
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  }
  return (tmp);
}
}
extern int usbnet_read_cmd(struct usbnet * , u8 , u8 , u16 , u16 , void * , u16 ) ;
extern int usbnet_write_cmd(struct usbnet * , u8 , u8 , u16 , u16 , void const * ,
                            u16 ) ;
extern int usbnet_write_cmd_async(struct usbnet * , u8 , u8 , u16 , u16 , void const * ,
                                  u16 ) ;
extern void usbnet_skb_return(struct usbnet * , struct sk_buff * ) ;
extern void usbnet_get_drvinfo(struct net_device * , struct ethtool_drvinfo * ) ;
int asix_rx_fixup_internal(struct usbnet *dev , struct sk_buff *skb , struct asix_rx_fixup_info *rx ) ;
int asix_set_sw_mii(struct usbnet *dev ) ;
int asix_set_hw_mii(struct usbnet *dev ) ;
int asix_read_phy_addr(struct usbnet *dev , int internal ) ;
int asix_read_cmd(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                  void *data )
{
  int ret ;
  {
  {
  ret = usbnet_read_cmd(dev, (int )cmd, 192, (int )value, (int )index, data, (int )size);
  }
  if (ret != (int )size && ret >= 0) {
    return (-22);
  } else {
  }
  return (ret);
}
}
int asix_write_cmd(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                   void *data )
{
  int tmp ;
  {
  {
  tmp = usbnet_write_cmd(dev, (int )cmd, 64, (int )value, (int )index, (void const *)data,
                         (int )size);
  }
  return (tmp);
}
}
void asix_write_cmd_async(struct usbnet *dev , u8 cmd , u16 value , u16 index , u16 size ,
                          void *data )
{
  {
  {
  usbnet_write_cmd_async(dev, (int )cmd, 64, (int )value, (int )index, (void const *)data,
                         (int )size);
  }
  return;
}
}
int asix_rx_fixup_internal(struct usbnet *dev , struct sk_buff *skb , struct asix_rx_fixup_info *rx )
{
  int offset ;
  u16 remaining ;
  unsigned char *data ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  offset = 0;
  goto ldv_43125;
  ldv_43124:
  remaining = 0U;
  if ((unsigned int )rx->size == 0U) {
    if (skb->len - (unsigned int )offset == 2U || (int )rx->split_head) {
      if (! rx->split_head) {
        {
        tmp = get_unaligned_le16((void const *)skb->data + (unsigned long )offset);
        rx->header = (u32 )tmp;
        rx->split_head = 1;
        offset = (int )((unsigned int )offset + 2U);
        }
        goto ldv_43123;
      } else {
        {
        tmp___0 = get_unaligned_le16((void const *)skb->data + (unsigned long )offset);
        rx->header = rx->header | (u32 )((int )tmp___0 << 16);
        rx->split_head = 0;
        offset = (int )((unsigned int )offset + 2U);
        }
      }
    } else {
      {
      rx->header = get_unaligned_le32((void const *)skb->data + (unsigned long )offset);
      offset = (int )((unsigned int )offset + 4U);
      }
    }
    rx->size = (unsigned int )((unsigned short )rx->header) & 2047U;
    if ((u32 )rx->size != ((~ rx->header >> 16) & 2047U)) {
      {
      netdev_err((struct net_device const *)dev->net, "asix_rx_fixup() Bad Header Length 0x%x, offset %d\n",
                 rx->header, offset);
      rx->size = 0U;
      }
      return (0);
    } else {
    }
    {
    rx->ax_skb = netdev_alloc_skb_ip_align(dev->net, (unsigned int )rx->size);
    }
    if ((unsigned long )rx->ax_skb == (unsigned long )((struct sk_buff *)0)) {
      return (0);
    } else {
    }
  } else {
  }
  if ((unsigned int )rx->size > (dev->net)->mtu + 18U) {
    {
    netdev_err((struct net_device const *)dev->net, "asix_rx_fixup() Bad RX Length %d\n",
               (int )rx->size);
    kfree_skb(rx->ax_skb);
    rx->ax_skb = (struct sk_buff *)0;
    rx->size = 0U;
    }
    return (0);
  } else {
  }
  if ((unsigned int )rx->size > skb->len - (unsigned int )offset) {
    remaining = (int )rx->size + ((int )((u16 )offset) - (int )((u16 )skb->len));
    rx->size = (int )((u16 )skb->len) - (int )((u16 )offset);
  } else {
  }
  {
  data = skb_put(rx->ax_skb, (unsigned int )rx->size);
  memcpy((void *)data, (void const *)skb->data + (unsigned long )offset, (size_t )rx->size);
  }
  if ((unsigned int )remaining == 0U) {
    {
    usbnet_skb_return(dev, rx->ax_skb);
    }
  } else {
  }
  offset = offset + (((int )rx->size + 1) & 65534);
  rx->size = remaining;
  ldv_43125: ;
  if ((unsigned long )offset + 2UL <= (unsigned long )skb->len) {
    goto ldv_43124;
  } else {
  }
  ldv_43123: ;
  if (skb->len != (unsigned int )offset) {
    {
    netdev_err((struct net_device const *)dev->net, "asix_rx_fixup() Bad SKB Length %d, %d\n",
               skb->len, offset);
    }
    return (0);
  } else {
  }
  return (1);
}
}
int asix_rx_fixup_common(struct usbnet *dev , struct sk_buff *skb )
{
  struct asix_common_private *dp ;
  struct asix_rx_fixup_info *rx ;
  int tmp ;
  {
  {
  dp = (struct asix_common_private *)dev->driver_priv;
  rx = & dp->rx_fixup_info;
  tmp = asix_rx_fixup_internal(dev, skb, rx);
  }
  return (tmp);
}
}
struct sk_buff *asix_tx_fixup(struct usbnet *dev , struct sk_buff *skb , gfp_t flags )
{
  int padlen ;
  int headroom ;
  unsigned int tmp ;
  int tailroom ;
  int tmp___0 ;
  u32 packet_len ;
  u32 padbytes ;
  void *tmp___1 ;
  struct sk_buff *skb2 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned char *tmp___4 ;
  {
  {
  tmp = skb_headroom((struct sk_buff const *)skb);
  headroom = (int )tmp;
  tmp___0 = skb_tailroom((struct sk_buff const *)skb);
  tailroom = tmp___0;
  padbytes = 4294901760U;
  padlen = ((skb->len + 4U) & (dev->maxpacket - 1U)) != 0U ? 0 : 4;
  tmp___2 = skb_header_cloned((struct sk_buff const *)skb);
  }
  if (tmp___2 == 0) {
    if (padlen == 0) {
      goto _L___1;
    } else {
      {
      tmp___3 = skb_cloned((struct sk_buff const *)skb);
      }
      if (tmp___3 == 0) {
        _L___1:
        if (headroom + tailroom >= padlen + 4) {
          if (headroom <= 3 || tailroom < padlen) {
            {
            tmp___1 = memmove((void *)skb->head + 4U, (void const *)skb->data, (size_t )skb->len);
            skb->data = (unsigned char *)tmp___1;
            skb_set_tail_pointer(skb, (int const )skb->len);
            }
          } else {
          }
        } else {
          goto _L___0;
        }
      } else {
        goto _L___0;
      }
    }
  } else {
    _L___0:
    {
    skb2 = skb_copy_expand((struct sk_buff const *)skb, 4, padlen, flags);
    dev_kfree_skb_any(skb);
    skb = skb2;
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      return ((struct sk_buff *)0);
    } else {
    }
  }
  {
  packet_len = ((skb->len ^ 65535U) << 16) + skb->len;
  skb_push(skb, 4U);
  skb_copy_to_linear_data(skb, (void const *)(& packet_len), 4U);
  }
  if (padlen != 0) {
    {
    tmp___4 = skb_tail_pointer((struct sk_buff const *)skb);
    memcpy((void *)tmp___4, (void const *)(& padbytes), 4UL);
    skb_put(skb, 4U);
    }
  } else {
  }
  return (skb);
}
}
int asix_set_sw_mii(struct usbnet *dev )
{
  int ret ;
  {
  {
  ret = asix_write_cmd(dev, 6, 0, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to enable software MII access\n");
    }
  } else {
  }
  return (ret);
}
}
int asix_set_hw_mii(struct usbnet *dev )
{
  int ret ;
  {
  {
  ret = asix_write_cmd(dev, 10, 0, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to enable hardware MII access\n");
    }
  } else {
  }
  return (ret);
}
}
int asix_read_phy_addr(struct usbnet *dev , int internal )
{
  int offset ;
  u8 buf[2U] ;
  int ret ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  offset = internal != 0;
  tmp = asix_read_cmd(dev, 25, 0, 0, 2, (void *)(& buf));
  ret = tmp;
  descriptor.modname = "asix";
  descriptor.function = "asix_read_phy_addr";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_get_phy_addr()\n";
  descriptor.lineno = 218U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_get_phy_addr()\n");
    }
  } else {
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Error reading PHYID register: %02x\n",
               ret);
    }
    goto out;
  } else {
  }
  {
  descriptor___0.modname = "asix";
  descriptor___0.function = "asix_read_phy_addr";
  descriptor___0.filename = "drivers/net/usb/asix_common.c";
  descriptor___0.format = "asix_get_phy_addr() returning 0x%04x\n";
  descriptor___0.lineno = 225U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "asix_get_phy_addr() returning 0x%04x\n", (int )*((__le16 *)(& buf)));
    }
  } else {
  }
  ret = (int )buf[offset];
  out: ;
  return (ret);
}
}
int asix_get_phy_addr(struct usbnet *dev )
{
  int tmp ;
  {
  {
  tmp = asix_read_phy_addr(dev, 1);
  }
  return (tmp);
}
}
int asix_sw_reset(struct usbnet *dev , u8 flags )
{
  int ret ;
  {
  {
  ret = asix_write_cmd(dev, 32, (int )flags, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to send software reset: %02x\n",
               ret);
    }
  } else {
  }
  return (ret);
}
}
u16 asix_read_rx_ctl(struct usbnet *dev )
{
  __le16 v ;
  int ret ;
  int tmp ;
  {
  {
  tmp = asix_read_cmd(dev, 15, 0, 0, 2, (void *)(& v));
  ret = tmp;
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Error reading RX_CTL register: %02x\n",
               ret);
    }
    goto out;
  } else {
  }
  ret = (int )v;
  out: ;
  return ((u16 )ret);
}
}
int asix_write_rx_ctl(struct usbnet *dev , u16 mode )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "asix";
  descriptor.function = "asix_write_rx_ctl";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_write_rx_ctl() - mode = 0x%04x\n";
  descriptor.lineno = 268U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_write_rx_ctl() - mode = 0x%04x\n",
                         (int )mode);
    }
  } else {
  }
  {
  ret = asix_write_cmd(dev, 16, (int )mode, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to write RX_CTL mode to 0x%04x: %02x\n",
               (int )mode, ret);
    }
  } else {
  }
  return (ret);
}
}
u16 asix_read_medium_status(struct usbnet *dev )
{
  __le16 v ;
  int ret ;
  int tmp ;
  {
  {
  tmp = asix_read_cmd(dev, 26, 0, 0, 2, (void *)(& v));
  ret = tmp;
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Error reading Medium Status register: %02x\n",
               ret);
    }
    return ((u16 )ret);
  } else {
  }
  return (v);
}
}
int asix_write_medium_mode(struct usbnet *dev , u16 mode )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "asix";
  descriptor.function = "asix_write_medium_mode";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_write_medium_mode() - mode = 0x%04x\n";
  descriptor.lineno = 296U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_write_medium_mode() - mode = 0x%04x\n",
                         (int )mode);
    }
  } else {
  }
  {
  ret = asix_write_cmd(dev, 27, (int )mode, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to write Medium Mode mode to 0x%04x: %02x\n",
               (int )mode, ret);
    }
  } else {
  }
  return (ret);
}
}
int asix_write_gpio(struct usbnet *dev , u16 value , int sleep )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "asix";
  descriptor.function = "asix_write_gpio";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_write_gpio() - value = 0x%04x\n";
  descriptor.lineno = 309U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_write_gpio() - value = 0x%04x\n",
                         (int )value);
    }
  } else {
  }
  {
  ret = asix_write_cmd(dev, 31, (int )value, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to write GPIO value 0x%04x: %02x\n",
               (int )value, ret);
    }
  } else {
  }
  if (sleep != 0) {
    {
    msleep((unsigned int )sleep);
    }
  } else {
  }
  return (ret);
}
}
void asix_set_multicast(struct net_device *net )
{
  struct usbnet *dev ;
  void *tmp ;
  struct asix_data *data ;
  u16 rx_ctl ;
  struct netdev_hw_addr *ha ;
  u32 crc_bits ;
  struct list_head const *__mptr ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  data = (struct asix_data *)(& dev->data);
  rx_ctl = 136U;
  }
  if ((net->flags & 256U) != 0U) {
    rx_ctl = (u16 )((unsigned int )rx_ctl | 1U);
  } else
  if ((net->flags & 512U) != 0U || net->mc.count > 64) {
    rx_ctl = (u16 )((unsigned int )rx_ctl | 2U);
  } else
  if (net->mc.count == 0) {
  } else {
    {
    memset((void *)(& data->multi_filter), 0, 8UL);
    __mptr = (struct list_head const *)net->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    }
    goto ldv_43216;
    ldv_43215:
    {
    tmp___0 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___1 = bitrev32(tmp___0);
    crc_bits = tmp___1 >> 26;
    data->multi_filter[crc_bits >> 3] = (u8 )((int )((signed char )data->multi_filter[crc_bits >> 3]) | (int )((signed char )(1 << ((int )crc_bits & 7))));
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_43216: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& net->mc.list)) {
      goto ldv_43215;
    } else {
    }
    {
    asix_write_cmd_async(dev, 22, 0, 0, 8, (void *)(& data->multi_filter));
    rx_ctl = (u16 )((unsigned int )rx_ctl | 16U);
    }
  }
  {
  asix_write_cmd_async(dev, 16, (int )rx_ctl, 0, 0, (void *)0);
  }
  return;
}
}
int asix_mdio_read(struct net_device *netdev , int phy_id , int loc )
{
  struct usbnet *dev ;
  void *tmp ;
  __le16 res ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  dev = (struct usbnet *)tmp;
  ldv_mutex_lock_15(& dev->phy_mutex);
  asix_set_sw_mii(dev);
  asix_read_cmd(dev, 7, (int )((u16 )phy_id), (int )((unsigned short )loc), 2, (void *)(& res));
  asix_set_hw_mii(dev);
  ldv_mutex_unlock_16(& dev->phy_mutex);
  descriptor.modname = "asix";
  descriptor.function = "asix_mdio_read";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n";
  descriptor.lineno = 376U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
                         phy_id, loc, (int )res);
    }
  } else {
  }
  return ((int )res);
}
}
void asix_mdio_write(struct net_device *netdev , int phy_id , int loc , int val )
{
  struct usbnet *dev ;
  void *tmp ;
  __le16 res ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  dev = (struct usbnet *)tmp;
  res = (unsigned short )val;
  descriptor.modname = "asix";
  descriptor.function = "asix_mdio_write";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n";
  descriptor.lineno = 387U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n",
                         phy_id, loc, val);
    }
  } else {
  }
  {
  ldv_mutex_lock_17(& dev->phy_mutex);
  asix_set_sw_mii(dev);
  asix_write_cmd(dev, 8, (int )((u16 )phy_id), (int )((unsigned short )loc), 2, (void *)(& res));
  asix_set_hw_mii(dev);
  ldv_mutex_unlock_18(& dev->phy_mutex);
  }
  return;
}
}
void asix_get_wol(struct net_device *net , struct ethtool_wolinfo *wolinfo )
{
  struct usbnet *dev ;
  void *tmp ;
  u8 opt ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  tmp___0 = asix_read_cmd(dev, 28, 0, 0, 1, (void *)(& opt));
  }
  if (tmp___0 < 0) {
    wolinfo->supported = 0U;
    wolinfo->wolopts = 0U;
    return;
  } else {
  }
  wolinfo->supported = 33U;
  wolinfo->wolopts = 0U;
  if (((int )opt & 2) != 0) {
    wolinfo->wolopts = wolinfo->wolopts | 1U;
  } else {
  }
  if (((int )opt & 4) != 0) {
    wolinfo->wolopts = wolinfo->wolopts | 32U;
  } else {
  }
  return;
}
}
int asix_set_wol(struct net_device *net , struct ethtool_wolinfo *wolinfo )
{
  struct usbnet *dev ;
  void *tmp ;
  u8 opt ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  opt = 0U;
  }
  if ((int )wolinfo->wolopts & 1) {
    opt = (u8 )((unsigned int )opt | 2U);
  } else {
  }
  if ((wolinfo->wolopts & 32U) != 0U) {
    opt = (u8 )((unsigned int )opt | 4U);
  } else {
  }
  {
  tmp___0 = asix_write_cmd(dev, 29, (int )opt, 0, 0, (void *)0);
  }
  if (tmp___0 < 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
int asix_get_eeprom_len(struct net_device *net )
{
  {
  return (512);
}
}
int asix_get_eeprom(struct net_device *net , struct ethtool_eeprom *eeprom , u8 *data )
{
  struct usbnet *dev ;
  void *tmp ;
  u16 *eeprom_buff ;
  int first_word ;
  int last_word ;
  int i ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  }
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  {
  eeprom->magic = 3735928559U;
  first_word = (int )(eeprom->offset >> 1);
  last_word = (int )(((eeprom->offset + eeprom->len) - 1U) >> 1);
  tmp___0 = kmalloc((unsigned long )((last_word - first_word) + 1) * 2UL, 208U);
  eeprom_buff = (u16 *)tmp___0;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  i = first_word;
  goto ldv_43263;
  ldv_43262:
  {
  tmp___1 = asix_read_cmd(dev, 11, (int )((u16 )i), 0, 2, (void *)eeprom_buff + (unsigned long )(i - first_word));
  }
  if (tmp___1 < 0) {
    {
    kfree((void const *)eeprom_buff);
    }
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_43263: ;
  if (i <= last_word) {
    goto ldv_43262;
  } else {
  }
  {
  memcpy((void *)data, (void const *)eeprom_buff + ((unsigned long )eeprom->offset & 1UL),
         (size_t )eeprom->len);
  kfree((void const *)eeprom_buff);
  }
  return (0);
}
}
int asix_set_eeprom(struct net_device *net , struct ethtool_eeprom *eeprom , u8 *data )
{
  struct usbnet *dev ;
  void *tmp ;
  u16 *eeprom_buff ;
  int first_word ;
  int last_word ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  descriptor.modname = "asix";
  descriptor.function = "asix_set_eeprom";
  descriptor.filename = "drivers/net/usb/asix_common.c";
  descriptor.format = "write EEPROM len %d, offset %d, magic 0x%x\n";
  descriptor.lineno = 480U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)net, "write EEPROM len %d, offset %d, magic 0x%x\n",
                         eeprom->len, eeprom->offset, eeprom->magic);
    }
  } else {
  }
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  if (eeprom->magic != 3735928559U) {
    return (-22);
  } else {
  }
  {
  first_word = (int )(eeprom->offset >> 1);
  last_word = (int )(((eeprom->offset + eeprom->len) - 1U) >> 1);
  tmp___1 = kmalloc((unsigned long )((last_word - first_word) + 1) * 2UL, 208U);
  eeprom_buff = (u16 *)tmp___1;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  if ((int )eeprom->offset & 1) {
    {
    ret = asix_read_cmd(dev, 11, (int )((u16 )first_word), 0, 2, (void *)eeprom_buff);
    }
    if (ret < 0) {
      {
      netdev_err((struct net_device const *)net, "Failed to read EEPROM at offset 0x%02x.\n",
                 first_word);
      }
      goto free;
    } else {
    }
  } else {
  }
  if ((int )(eeprom->offset + eeprom->len) & 1) {
    {
    ret = asix_read_cmd(dev, 11, (int )((u16 )last_word), 0, 2, (void *)eeprom_buff + (unsigned long )(last_word - first_word));
    }
    if (ret < 0) {
      {
      netdev_err((struct net_device const *)net, "Failed to read EEPROM at offset 0x%02x.\n",
                 last_word);
      }
      goto free;
    } else {
    }
  } else {
  }
  {
  memcpy((void *)eeprom_buff + ((unsigned long )eeprom->offset & 1UL), (void const *)data,
         (size_t )eeprom->len);
  ret = asix_write_cmd(dev, 13, 0, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)net, "Failed to enable EEPROM write\n");
    }
    goto free;
  } else {
  }
  {
  msleep(20U);
  i = first_word;
  }
  goto ldv_43281;
  ldv_43280:
  {
  descriptor___0.modname = "asix";
  descriptor___0.function = "asix_set_eeprom";
  descriptor___0.filename = "drivers/net/usb/asix_common.c";
  descriptor___0.format = "write to EEPROM at offset 0x%02x, data 0x%04x\n";
  descriptor___0.lineno = 528U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)net, "write to EEPROM at offset 0x%02x, data 0x%04x\n",
                         i, (int )*(eeprom_buff + (unsigned long )(i - first_word)));
    }
  } else {
  }
  {
  ret = asix_write_cmd(dev, 12, (int )((u16 )i), (int )*(eeprom_buff + (unsigned long )(i - first_word)),
                       0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)net, "Failed to write EEPROM at offset 0x%02x.\n",
               i);
    }
    goto free;
  } else {
  }
  {
  msleep(20U);
  i = i + 1;
  }
  ldv_43281: ;
  if (i <= last_word) {
    goto ldv_43280;
  } else {
  }
  {
  ret = asix_write_cmd(dev, 14, 0, 0, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)net, "Failed to disable EEPROM write\n");
    }
    goto free;
  } else {
  }
  ret = 0;
  free:
  {
  kfree((void const *)eeprom_buff);
  }
  return (ret);
}
}
void asix_get_drvinfo(struct net_device *net , struct ethtool_drvinfo *info )
{
  {
  {
  usbnet_get_drvinfo(net, info);
  strlcpy((char *)(& info->driver), "asix", 32UL);
  strlcpy((char *)(& info->version), "22-Dec-2011", 32UL);
  info->eedump_len = 512U;
  }
  return;
}
}
int asix_set_mac_address(struct net_device *net , void *p )
{
  struct usbnet *dev ;
  void *tmp ;
  struct asix_data *data ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)net);
  dev = (struct usbnet *)tmp;
  data = (struct asix_data *)(& dev->data);
  addr = (struct sockaddr *)p;
  tmp___0 = netif_running((struct net_device const *)net);
  }
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  {
  tmp___1 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-99);
  } else {
  }
  {
  memcpy((void *)net->dev_addr, (void const *)(& addr->sa_data), 6UL);
  memcpy((void *)(& data->mac_addr), (void const *)(& addr->sa_data), 6UL);
  asix_write_cmd_async(dev, 20, 0, 0, 6, (void *)(& data->mac_addr));
  }
  return (0);
}
}
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_phy_mutex_of_usbnet(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_phy_mutex_of_usbnet(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_phy_mutex_of_usbnet(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_phy_mutex_of_usbnet(ldv_func_arg1);
  }
  return;
}
}
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern u32 usbnet_get_link(struct net_device * ) ;
extern struct mii_bus *mdiobus_alloc_size(size_t ) ;
__inline static struct mii_bus *mdiobus_alloc(void)
{
  struct mii_bus *tmp ;
  {
  {
  tmp = mdiobus_alloc_size(0UL);
  }
  return (tmp);
}
}
extern int mdiobus_register(struct mii_bus * ) ;
extern void mdiobus_unregister(struct mii_bus * ) ;
extern void mdiobus_free(struct mii_bus * ) ;
extern struct phy_device *phy_connect(struct net_device * , char const * , void (*)(struct net_device * ) ,
                                      phy_interface_t ) ;
extern void phy_disconnect(struct phy_device * ) ;
extern void phy_start(struct phy_device * ) ;
extern void phy_stop(struct phy_device * ) ;
extern int phy_start_aneg(struct phy_device * ) ;
extern int genphy_resume(struct phy_device * ) ;
extern int phy_ethtool_sset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_ethtool_gset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_mii_ioctl(struct phy_device * , struct ifreq * , int ) ;
extern void phy_print_status(struct phy_device * ) ;
static int asix_mdio_bus_read(struct mii_bus *bus , int phy_id , int regnum )
{
  int tmp ;
  {
  {
  tmp = asix_mdio_read(((struct usbnet *)bus->priv)->net, phy_id, regnum);
  }
  return (tmp);
}
}
static int asix_mdio_bus_write(struct mii_bus *bus , int phy_id , int regnum , u16 val )
{
  {
  {
  asix_mdio_write(((struct usbnet *)bus->priv)->net, phy_id, regnum, (int )val);
  }
  return (0);
}
}
static int ax88172a_ioctl(struct net_device *net , struct ifreq *rq , int cmd )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netif_running((struct net_device const *)net);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-22);
  } else {
  }
  if ((unsigned long )net->phydev == (unsigned long )((struct phy_device *)0)) {
    return (-19);
  } else {
  }
  {
  tmp___1 = phy_mii_ioctl(net->phydev, rq, cmd);
  }
  return (tmp___1);
}
}
static void ax88172a_adjust_link(struct net_device *netdev )
{
  struct phy_device *phydev ;
  struct usbnet *dev ;
  void *tmp ;
  struct ax88172a_private *priv ;
  u16 mode ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  phydev = netdev->phydev;
  tmp = netdev_priv((struct net_device const *)netdev);
  dev = (struct usbnet *)tmp;
  priv = (struct ax88172a_private *)dev->driver_priv;
  mode = 0U;
  }
  if (phydev->link != 0) {
    mode = 822U;
    if (phydev->duplex == 0) {
      mode = (unsigned int )mode & 65533U;
    } else {
    }
    if (phydev->speed != 100) {
      mode = (unsigned int )mode & 65023U;
    } else {
    }
  } else {
  }
  if ((int )mode != (int )priv->oldmode) {
    {
    asix_write_medium_mode(dev, (int )mode);
    priv->oldmode = mode;
    descriptor.modname = "asix";
    descriptor.function = "ax88172a_adjust_link";
    descriptor.filename = "drivers/net/usb/ax88172a.c";
    descriptor.format = "speed %u duplex %d, setting mode to 0x%04x\n";
    descriptor.lineno = 87U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "speed %u duplex %d, setting mode to 0x%04x\n",
                           phydev->speed, phydev->duplex, (int )mode);
      }
    } else {
    }
    {
    phy_print_status(phydev);
    }
  } else {
  }
  return;
}
}
static void ax88172a_status(struct usbnet *dev , struct urb *urb )
{
  {
  return;
}
}
static int ax88172a_init_mdio(struct usbnet *dev )
{
  struct ax88172a_private *priv ;
  int ret ;
  int i ;
  void *tmp ;
  {
  {
  priv = (struct ax88172a_private *)dev->driver_priv;
  priv->mdio = mdiobus_alloc();
  }
  if ((unsigned long )priv->mdio == (unsigned long )((struct mii_bus *)0)) {
    {
    netdev_err((struct net_device const *)dev->net, "Could not allocate MDIO bus\n");
    }
    return (-12);
  } else {
  }
  {
  (priv->mdio)->priv = (void *)dev;
  (priv->mdio)->read = & asix_mdio_bus_read;
  (priv->mdio)->write = & asix_mdio_bus_write;
  (priv->mdio)->name = "Asix MDIO Bus";
  snprintf((char *)(& (priv->mdio)->id), 17UL, "usb-%03d:%03d", ((dev->udev)->bus)->busnum,
           (dev->udev)->devnum);
  tmp = kzalloc(128UL, 208U);
  (priv->mdio)->irq = (int *)tmp;
  }
  if ((unsigned long )(priv->mdio)->irq == (unsigned long )((int *)0)) {
    ret = -12;
    goto mfree;
  } else {
  }
  i = 0;
  goto ldv_43457;
  ldv_43456:
  *((priv->mdio)->irq + (unsigned long )i) = -1;
  i = i + 1;
  ldv_43457: ;
  if (i <= 31) {
    goto ldv_43456;
  } else {
  }
  {
  ret = mdiobus_register(priv->mdio);
  }
  if (ret != 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Could not register MDIO bus\n");
    }
    goto ifree;
  } else {
  }
  {
  netdev_info((struct net_device const *)dev->net, "registered mdio bus %s\n", (char *)(& (priv->mdio)->id));
  }
  return (0);
  ifree:
  {
  kfree((void const *)(priv->mdio)->irq);
  }
  mfree:
  {
  mdiobus_free(priv->mdio);
  }
  return (ret);
}
}
static void ax88172a_remove_mdio(struct usbnet *dev )
{
  struct ax88172a_private *priv ;
  {
  {
  priv = (struct ax88172a_private *)dev->driver_priv;
  netdev_info((struct net_device const *)dev->net, "deregistering mdio bus %s\n",
              (char *)(& (priv->mdio)->id));
  mdiobus_unregister(priv->mdio);
  kfree((void const *)(priv->mdio)->irq);
  mdiobus_free(priv->mdio);
  }
  return;
}
}
static struct net_device_ops const ax88172a_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & asix_set_multicast,
    & asix_set_mac_address, & eth_validate_addr, & ax88172a_ioctl, 0, & usbnet_change_mtu,
    0, & usbnet_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ax88172a_get_settings(struct net_device *net , struct ethtool_cmd *cmd )
{
  int tmp ;
  {
  if ((unsigned long )net->phydev == (unsigned long )((struct phy_device *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = phy_ethtool_gset(net->phydev, cmd);
  }
  return (tmp);
}
}
static int ax88172a_set_settings(struct net_device *net , struct ethtool_cmd *cmd )
{
  int tmp ;
  {
  if ((unsigned long )net->phydev == (unsigned long )((struct phy_device *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = phy_ethtool_sset(net->phydev, cmd);
  }
  return (tmp);
}
}
static int ax88172a_nway_reset(struct net_device *net )
{
  int tmp ;
  {
  if ((unsigned long )net->phydev == (unsigned long )((struct phy_device *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = phy_start_aneg(net->phydev);
  }
  return (tmp);
}
}
static struct ethtool_ops const ax88172a_ethtool_ops =
     {& ax88172a_get_settings, & ax88172a_set_settings, & asix_get_drvinfo, 0, 0, & asix_get_wol,
    & asix_set_wol, & usbnet_get_msglevel, & usbnet_set_msglevel, & ax88172a_nway_reset,
    & usbnet_get_link, & asix_get_eeprom_len, & asix_get_eeprom, & asix_set_eeprom,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int ax88172a_reset_phy(struct usbnet *dev , int embd_phy )
{
  int ret ;
  {
  {
  ret = asix_sw_reset(dev, 64);
  }
  if (ret < 0) {
    goto err;
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, 0);
  }
  if (ret < 0) {
    goto err;
  } else {
  }
  {
  msleep(150U);
  ret = asix_sw_reset(dev, embd_phy != 0 ? 32 : 64);
  }
  if (ret < 0) {
    goto err;
  } else {
  }
  return (0);
  err: ;
  return (ret);
}
}
static int ax88172a_bind(struct usbnet *dev , struct usb_interface *intf )
{
  int ret ;
  u8 buf[6U] ;
  struct ax88172a_private *priv ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  {
  usbnet_get_endpoints(dev, intf);
  tmp = kzalloc(64UL, 208U);
  priv = (struct ax88172a_private *)tmp;
  }
  if ((unsigned long )priv == (unsigned long )((struct ax88172a_private *)0)) {
    return (-12);
  } else {
  }
  {
  dev->driver_priv = (void *)priv;
  ret = asix_read_cmd(dev, 19, 0, 0, 6, (void *)(& buf));
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to read MAC address: %d\n",
               ret);
    }
    goto free;
  } else {
  }
  {
  memcpy((void *)(dev->net)->dev_addr, (void const *)(& buf), 6UL);
  (dev->net)->netdev_ops = & ax88172a_netdev_ops;
  (dev->net)->ethtool_ops = & ax88172a_ethtool_ops;
  ret = asix_read_cmd(dev, 33, 0, 0, 1, (void *)(& buf));
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Failed to read software interface selection register: %d\n",
               ret);
    }
    goto free;
  } else {
  }
  {
  descriptor.modname = "asix";
  descriptor.function = "ax88172a_bind";
  descriptor.filename = "drivers/net/usb/ax88172a.c";
  descriptor.format = "AX_CMD_SW_PHY_STATUS = 0x%02x\n";
  descriptor.lineno = 263U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "AX_CMD_SW_PHY_STATUS = 0x%02x\n",
                         (int )buf[0]);
    }
  } else {
  }
  {
  if (((unsigned long )buf[0] & 12UL) == 0UL) {
    goto case_0;
  } else {
  }
  if (((unsigned long )buf[0] & 12UL) == 4UL) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0:
  {
  descriptor___0.modname = "asix";
  descriptor___0.function = "ax88172a_bind";
  descriptor___0.filename = "drivers/net/usb/ax88172a.c";
  descriptor___0.format = "use internal phy\n";
  descriptor___0.lineno = 266U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "use internal phy\n");
    }
  } else {
  }
  priv->use_embdphy = 1;
  goto ldv_43495;
  case_4:
  {
  descriptor___1.modname = "asix";
  descriptor___1.function = "ax88172a_bind";
  descriptor___1.filename = "drivers/net/usb/ax88172a.c";
  descriptor___1.format = "use external phy\n";
  descriptor___1.lineno = 270U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                         "use external phy\n");
    }
  } else {
  }
  priv->use_embdphy = 0;
  goto ldv_43495;
  switch_default:
  {
  netdev_err((struct net_device const *)dev->net, "Interface mode not supported by driver\n");
  ret = -524;
  }
  goto free;
  switch_break: ;
  }
  ldv_43495:
  {
  tmp___3 = asix_read_phy_addr(dev, priv->use_embdphy);
  priv->phy_addr = (u16 )tmp___3;
  ax88172a_reset_phy(dev, priv->use_embdphy);
  }
  if (((dev->driver_info)->flags & 64) != 0) {
    dev->rx_urb_size = 2048UL;
  } else {
  }
  {
  ret = ax88172a_init_mdio(dev);
  }
  if (ret != 0) {
    goto free;
  } else {
  }
  return (0);
  free:
  {
  kfree((void const *)priv);
  }
  return (ret);
}
}
static int ax88172a_stop(struct usbnet *dev )
{
  struct ax88172a_private *priv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  priv = (struct ax88172a_private *)dev->driver_priv;
  descriptor.modname = "asix";
  descriptor.function = "ax88172a_stop";
  descriptor.filename = "drivers/net/usb/ax88172a.c";
  descriptor.format = "Stopping interface\n";
  descriptor.lineno = 305U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "Stopping interface\n");
    }
  } else {
  }
  if ((unsigned long )priv->phydev != (unsigned long )((struct phy_device *)0)) {
    {
    netdev_info((struct net_device const *)dev->net, "Disconnecting from phy %s\n",
                (char *)(& priv->phy_name));
    phy_stop(priv->phydev);
    phy_disconnect(priv->phydev);
    }
  } else {
  }
  return (0);
}
}
static void ax88172a_unbind(struct usbnet *dev , struct usb_interface *intf )
{
  struct ax88172a_private *priv ;
  {
  {
  priv = (struct ax88172a_private *)dev->driver_priv;
  ax88172a_remove_mdio(dev);
  kfree((void const *)priv);
  }
  return;
}
}
static int ax88172a_reset(struct usbnet *dev )
{
  struct asix_data *data ;
  struct ax88172a_private *priv ;
  int ret ;
  u16 rx_ctl ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  {
  data = (struct asix_data *)(& dev->data);
  priv = (struct ax88172a_private *)dev->driver_priv;
  ax88172a_reset_phy(dev, priv->use_embdphy);
  msleep(150U);
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor.modname = "asix";
  descriptor.function = "ax88172a_reset";
  descriptor.filename = "drivers/net/usb/ax88172a.c";
  descriptor.format = "RX_CTL is 0x%04x after software reset\n";
  descriptor.lineno = 336U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "RX_CTL is 0x%04x after software reset\n",
                         (int )rx_ctl);
    }
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 0);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor___0.modname = "asix";
  descriptor___0.function = "ax88172a_reset";
  descriptor___0.filename = "drivers/net/usb/ax88172a.c";
  descriptor___0.format = "RX_CTL is 0x%04x setting to 0x0000\n";
  descriptor___0.lineno = 342U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                         "RX_CTL is 0x%04x setting to 0x0000\n", (int )rx_ctl);
    }
  } else {
  }
  {
  msleep(150U);
  ret = asix_write_cmd(dev, 18, 29, 18, 0, (void *)0);
  }
  if (ret < 0) {
    {
    netdev_err((struct net_device const *)dev->net, "Write IPG,IPG1,IPG2 failed: %d\n",
               ret);
    }
    goto out;
  } else {
  }
  {
  memcpy((void *)(& data->mac_addr), (void const *)(dev->net)->dev_addr, 6UL);
  ret = asix_write_cmd(dev, 20, 0, 0, 6, (void *)(& data->mac_addr));
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  ret = asix_write_rx_ctl(dev, 136);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  rx_ctl = asix_read_rx_ctl(dev);
  descriptor___1.modname = "asix";
  descriptor___1.function = "ax88172a_reset";
  descriptor___1.filename = "drivers/net/usb/ax88172a.c";
  descriptor___1.format = "RX_CTL is 0x%04x after all initializations\n";
  descriptor___1.lineno = 368U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                         "RX_CTL is 0x%04x after all initializations\n", (int )rx_ctl);
    }
  } else {
  }
  {
  rx_ctl = asix_read_medium_status(dev);
  descriptor___2.modname = "asix";
  descriptor___2.function = "ax88172a_reset";
  descriptor___2.filename = "drivers/net/usb/ax88172a.c";
  descriptor___2.format = "Medium Status is 0x%04x after all initializations\n";
  descriptor___2.lineno = 372U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev->net,
                         "Medium Status is 0x%04x after all initializations\n", (int )rx_ctl);
    }
  } else {
  }
  {
  snprintf((char *)(& priv->phy_name), 20UL, "%s:%02x", (char *)(& (priv->mdio)->id),
           (int )priv->phy_addr);
  priv->phydev = phy_connect(dev->net, (char const *)(& priv->phy_name), & ax88172a_adjust_link,
                             1);
  tmp___4 = IS_ERR((void const *)priv->phydev);
  }
  if (tmp___4 != 0L) {
    {
    netdev_err((struct net_device const *)dev->net, "Could not connect to PHY device %s\n",
               (char *)(& priv->phy_name));
    tmp___3 = PTR_ERR((void const *)priv->phydev);
    ret = (int )tmp___3;
    }
    goto out;
  } else {
  }
  {
  netdev_info((struct net_device const *)dev->net, "Connected to phy %s\n", (char *)(& priv->phy_name));
  genphy_resume(priv->phydev);
  phy_start(priv->phydev);
  }
  return (0);
  out: ;
  return (ret);
}
}
static int ax88172a_rx_fixup(struct usbnet *dev , struct sk_buff *skb )
{
  struct ax88172a_private *dp ;
  struct asix_rx_fixup_info *rx ;
  int tmp ;
  {
  {
  dp = (struct ax88172a_private *)dev->driver_priv;
  rx = & dp->rx_fixup_info;
  tmp = asix_rx_fixup_internal(dev, skb, rx);
  }
  return (tmp);
}
}
struct driver_info const ax88172a_info =
     {(char *)"ASIX AX88172A USB 2.0 Ethernet", 10336, & ax88172a_bind, & ax88172a_unbind,
    & ax88172a_reset, & ax88172a_stop, 0, 0, & ax88172a_status, 0, & ax88172a_rx_fixup,
    & asix_tx_fixup, 0, 0, 0, 0, 0UL};
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_21(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_24(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_25(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_26(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_27(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_28(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_32(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_35(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_36(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_24(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_25(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_26(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_36(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_io_instance_callback_2_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_2_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_2_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_2_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_2_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
int ldv_io_instance_probe_2_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_release_2_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void (*ldv_0_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_0_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_0_callback_get_eeprom_len)(struct net_device * ) ;
unsigned int (*ldv_0_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_0_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_0_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
int (*ldv_0_callback_ndo_open)(struct net_device * ) ;
void (*ldv_0_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_0_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
int (*ldv_0_callback_ndo_stop)(struct net_device * ) ;
void (*ldv_0_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_0_callback_ndo_validate_addr)(struct net_device * ) ;
int (*ldv_0_callback_nway_reset)(struct net_device * ) ;
int (*ldv_0_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
void (*ldv_0_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_0_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_0_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
void (*ldv_0_callback_setup)(struct net_device * ) ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
int (*ldv_1_callback_ndo_open)(struct net_device * ) ;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
int (*ldv_1_callback_ndo_stop)(struct net_device * ) ;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
void (*ldv_1_callback_setup)(struct net_device * ) ;
int (*ldv_2_callback_reset)(struct usbnet * ) ;
int (*ldv_2_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_2_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_2_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_2_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_2_container_struct_driver_info ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
void (*ldv_0_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & asix_get_drvinfo;
int (*ldv_0_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & asix_get_eeprom;
int (*ldv_0_callback_get_eeprom_len)(struct net_device * ) = & asix_get_eeprom_len;
unsigned int (*ldv_0_callback_get_link)(struct net_device * ) = & usbnet_get_link;
unsigned int (*ldv_0_callback_get_msglevel)(struct net_device * ) = & usbnet_get_msglevel;
void (*ldv_0_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & asix_get_wol;
int (*ldv_0_callback_ndo_open)(struct net_device * ) = & usbnet_open;
void (*ldv_0_callback_ndo_set_rx_mode)(struct net_device * ) = & ax88172a_adjust_link;
enum netdev_tx (*ldv_0_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & usbnet_start_xmit;
int (*ldv_0_callback_ndo_stop)(struct net_device * ) = & usbnet_stop;
void (*ldv_0_callback_ndo_tx_timeout)(struct net_device * ) = & usbnet_tx_timeout;
int (*ldv_0_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
int (*ldv_0_callback_nway_reset)(struct net_device * ) = & ax88172a_nway_reset;
int (*ldv_0_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & asix_set_eeprom;
void (*ldv_0_callback_set_msglevel)(struct net_device * , unsigned int ) = & usbnet_set_msglevel;
int (*ldv_0_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & ax88172a_set_settings;
int (*ldv_0_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & asix_set_wol;
void (*ldv_0_callback_setup)(struct net_device * ) = & ax88172a_adjust_link;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & asix_get_drvinfo;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & asix_get_eeprom;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) = & asix_get_eeprom_len;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & usbnet_get_link;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) = & usbnet_get_msglevel;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & asix_get_wol;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & usbnet_change_mtu;
int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) = & ax88172a_ioctl;
int (*ldv_1_callback_ndo_open)(struct net_device * ) = & usbnet_open;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & usbnet_start_xmit;
int (*ldv_1_callback_ndo_stop)(struct net_device * ) = & usbnet_stop;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & ax88172a_adjust_link;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & asix_set_eeprom;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) = & usbnet_set_msglevel;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & asix_set_wol;
void (*ldv_1_callback_setup)(struct net_device * ) = & ax88172a_adjust_link;
int (*ldv_2_callback_reset)(struct usbnet * ) = & ax88172a_reset;
int (*ldv_2_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & ax88172a_rx_fixup;
void (*ldv_2_callback_status)(struct usbnet * , struct urb * ) = & ax88172a_status;
struct sk_buff *(*ldv_2_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & asix_tx_fixup;
void (*ldv_2_callback_unbind)(struct usbnet * , struct usb_interface * ) = & ax88172a_unbind;
struct sk_buff *(*ldv_3_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & asix_tx_fixup;
struct sk_buff *(*ldv_5_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & asix_tx_fixup;
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  asix_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  asix_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_21(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_open(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_23(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172a_adjust_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_24(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  usbnet_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_25(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_stop(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_26(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_27(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_28(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172a_nway_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  asix_set_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  asix_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_32(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  usbnet_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_35(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  ax88172a_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_36(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  asix_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172a_adjust_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  asix_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  asix_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  asix_get_wol(arg1, arg2);
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
  usbnet_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  ax88172a_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_open(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_24(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  usbnet_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_25(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_stop(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_26(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172a_adjust_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  asix_set_eeprom(arg1, arg2, arg3);
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
  asix_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  usbnet_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_36(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  asix_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ax88172a_adjust_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  asix_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_2_17(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88172a_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_2_18(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  ax88172a_rx_fixup(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_19(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  ax88172a_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  asix_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_2_23(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  ax88172a_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  asix_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_20(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  asix_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_io_instance_probe_2_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = ax88172a_bind(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_2_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  ax88172a_stop(arg1);
  }
  return;
}
}
void ldv_net_dummy_resourceless_instance_0(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 3) {
    goto case_3;
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
  if (ldv_statevar_0 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_0 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_0 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_0 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_0 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_0 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_0 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_0 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_0 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_0 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_0 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_0 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_0 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_0 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_0 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_0 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_0 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_0 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_0 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_0 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_0 == 37) {
    goto case_37;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_44434;
  case_2:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_44434;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_get_drvinfo, ldv_0_container_net_device,
                                               ldv_0_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_4:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_44434;
  case_5: ;
  goto ldv_44434;
  case_8:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_0_ldv_param_7_2_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_get_eeprom, ldv_0_container_net_device,
                                               ldv_0_container_struct_ethtool_eeprom_ptr,
                                               ldv_0_ldv_param_7_2_default);
  ldv_free((void *)ldv_0_ldv_param_7_2_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_0_10(ldv_0_callback_get_eeprom_len, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_0_11(ldv_0_callback_get_link, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_0_12(ldv_0_callback_get_msglevel, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_0_13(ldv_0_callback_get_settings, ldv_0_container_net_device,
                                                ldv_0_container_struct_ethtool_cmd_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_0_14(ldv_0_callback_get_wol, ldv_0_container_net_device,
                                                ldv_0_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_0_15(ldv_0_callback_ndo_change_mtu, ldv_0_container_net_device,
                                                ldv_0_ldv_param_15_1_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_0_18(ldv_0_callback_ndo_do_ioctl, ldv_0_container_net_device,
                                                ldv_0_container_struct_ifreq_ptr,
                                                ldv_0_ldv_param_18_2_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_0_21(ldv_0_callback_ndo_open, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_0_22(ldv_0_callback_ndo_set_mac_address,
                                                ldv_0_container_net_device, (void *)ldv_0_container_struct_ethtool_cmd_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_0_23(ldv_0_callback_ndo_set_rx_mode, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_0_24(ldv_0_callback_ndo_start_xmit, ldv_0_container_struct_sk_buff_ptr,
                                                ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_0_25(ldv_0_callback_ndo_stop, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_0_26(ldv_0_callback_ndo_tx_timeout, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_0_27(ldv_0_callback_ndo_validate_addr,
                                                ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_0_28(ldv_0_callback_nway_reset, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_30:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_29_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_0_29(ldv_0_callback_set_eeprom, ldv_0_container_net_device,
                                                ldv_0_container_struct_ethtool_eeprom_ptr,
                                                ldv_0_ldv_param_29_2_default);
  ldv_free((void *)ldv_0_ldv_param_29_2_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_0_32(ldv_0_callback_set_msglevel, ldv_0_container_net_device,
                                                ldv_0_ldv_param_32_1_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_35:
  {
  ldv_dummy_resourceless_instance_callback_0_35(ldv_0_callback_set_settings, ldv_0_container_net_device,
                                                ldv_0_container_struct_ethtool_cmd_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_0_36(ldv_0_callback_set_wol, ldv_0_container_net_device,
                                                ldv_0_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  case_37:
  {
  ldv_dummy_resourceless_instance_callback_0_37(ldv_0_callback_setup, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_44434;
  switch_default: ;
  switch_break: ;
  }
  ldv_44434: ;
  return;
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
  if (ldv_statevar_1 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_1 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_1 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_1 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_1 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_1 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 37) {
    goto case_37;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_44465;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_44465;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_44465;
  case_5: ;
  goto ldv_44465;
  case_8:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_1_ldv_param_7_2_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_eeprom, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_eeprom_ptr,
                                               ldv_1_ldv_param_7_2_default);
  ldv_free((void *)ldv_1_ldv_param_7_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_eeprom_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_15_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_18_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_ndo_open, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_22(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_24(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_1_25(ldv_1_callback_ndo_stop, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_1_26(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_1_28(ldv_1_callback_nway_reset, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_30:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_29_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_29(ldv_1_callback_set_eeprom, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_eeprom_ptr,
                                                ldv_1_ldv_param_29_2_default);
  ldv_free((void *)ldv_1_ldv_param_29_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_1_32(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_32_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_35:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_36(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  case_37:
  {
  ldv_dummy_resourceless_instance_callback_1_37(ldv_1_callback_setup, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_44465;
  switch_default: ;
  switch_break: ;
  }
  ldv_44465: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_2 == 6) {
    goto case_6;
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
  if (ldv_statevar_2 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_2 == 18) {
    goto case_18;
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
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_44496;
  case_2:
  {
  ldv_io_instance_release_2_2(ldv_2_container_struct_driver_info->stop, ldv_2_resource_struct_usbnet_ptr);
  ldv_statevar_2 = 1;
  }
  goto ldv_44496;
  case_3:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_44496;
  case_4: ;
  if ((unsigned long )ldv_2_callback_link_reset != (unsigned long )((int (*)(struct usbnet * ))0)) {
    {
    ldv_io_instance_callback_2_4(ldv_2_callback_link_reset, ldv_2_resource_struct_usbnet_ptr);
    }
  } else {
  }
  ldv_statevar_2 = 3;
  goto ldv_44496;
  case_6:
  {
  ldv_free((void *)ldv_2_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_2_resource_struct_urb_ptr);
  ldv_free((void *)ldv_2_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_2_resource_struct_usbnet_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  }
  goto ldv_44496;
  case_8:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_44496;
  case_10:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_44496;
  case_11:
  {
  ldv_2_ret_default = ldv_io_instance_probe_2_11(ldv_2_container_struct_driver_info->bind,
                                                 ldv_2_resource_struct_usbnet_ptr,
                                                 ldv_2_resource_struct_usb_interface_ptr);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 8;
  } else {
    ldv_statevar_2 = 10;
  }
  goto ldv_44496;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_2_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_2_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_2_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_44496;
  case_14: ;
  goto ldv_44496;
  case_17:
  {
  ldv_io_instance_callback_2_17(ldv_2_callback_reset, ldv_2_resource_struct_usbnet_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_44496;
  case_18:
  {
  ldv_io_instance_callback_2_18(ldv_2_callback_rx_fixup, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_sk_buff_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_44496;
  case_19:
  {
  ldv_io_instance_callback_2_19(ldv_2_callback_status, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_urb_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_44496;
  case_21:
  {
  ldv_io_instance_callback_2_20(ldv_2_callback_tx_fixup, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_sk_buff_ptr, ldv_2_ldv_param_20_2_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_44496;
  case_23:
  {
  ldv_io_instance_callback_2_23(ldv_2_callback_unbind, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_usb_interface_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_44496;
  switch_default: ;
  switch_break: ;
  }
  ldv_44496: ;
  return;
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_0_5(void)
{
  {
  ldv_statevar_0 = 4;
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
void ldv_switch_automaton_state_2_14(void)
{
  {
  ldv_statevar_2 = 13;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  return;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_phy_mutex_of_usbnet ;
void ldv_mutex_lock_phy_mutex_of_usbnet(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_phy_mutex_of_usbnet);
  LDV_MUTEXES_phy_mutex_of_usbnet = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_phy_mutex_of_usbnet(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_phy_mutex_of_usbnet);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_phy_mutex_of_usbnet = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_phy_mutex_of_usbnet(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_phy_mutex_of_usbnet) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_phy_mutex_of_usbnet(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_phy_mutex_of_usbnet);
  tmp = ldv_mutex_is_locked_phy_mutex_of_usbnet(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_phy_mutex_of_usbnet = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_phy_mutex_of_usbnet(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_phy_mutex_of_usbnet(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_phy_mutex_of_usbnet(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_phy_mutex_of_usbnet);
  LDV_MUTEXES_phy_mutex_of_usbnet = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_phy_mutex_of_usbnet = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_phy_mutex_of_usbnet);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int generic_mii_ioctl(struct mii_if_info *arg0, struct mii_ioctl_data *arg1, int arg2, unsigned int *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int genphy_resume(struct phy_device *arg0) {
  return __VERIFIER_nondet_int();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
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
int ldv_pre_usb_register_driver() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct mii_bus *mdiobus_alloc_size(size_t arg0) {
  return (struct mii_bus *)external_alloc();
}
void mdiobus_free(struct mii_bus *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mdiobus_register(struct mii_bus *arg0) {
  return __VERIFIER_nondet_int();
}
void mdiobus_unregister(struct mii_bus *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int mii_check_media(struct mii_if_info *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int mii_ethtool_gset(struct mii_if_info *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mii_link_ok(struct mii_if_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mii_nway_restart(struct mii_if_info *arg0) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct phy_device *phy_connect(struct net_device *arg0, const char *arg1, void (*arg2)(struct net_device *), phy_interface_t arg3) {
  return (struct phy_device *)external_alloc();
}
void phy_disconnect(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_gset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_sset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_mii_ioctl(struct phy_device *arg0, struct ifreq *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void phy_print_status(struct phy_device *arg0) {
  return;
}
void phy_start(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_start_aneg(struct phy_device *arg0) {
  return __VERIFIER_nondet_int();
}
void phy_stop(struct phy_device *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *skb_copy_expand(const struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_disconnect(struct usb_interface *arg0) {
  return;
}
void usbnet_get_drvinfo(struct net_device *arg0, struct ethtool_drvinfo *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_get_endpoints(struct usbnet *arg0, struct usb_interface *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 usbnet_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 usbnet_get_msglevel(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int usbnet_get_settings(struct net_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_link_change(struct usbnet *arg0, bool arg1, bool arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_nway_reset(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_open(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_probe(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_read_cmd(struct usbnet *arg0, u8 arg1, u8 arg2, u16 arg3, u16 arg4, void *arg5, u16 arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_resume(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usbnet_set_msglevel(struct net_device *arg0, u32 arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_set_settings(struct net_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_skb_return(struct usbnet *arg0, struct sk_buff *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
netdev_tx_t usbnet_start_xmit(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_stop(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_suspend(struct usb_interface *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_tx_timeout(struct net_device *arg0) {
  return;
}
void usbnet_unlink_rx_urbs(struct usbnet *arg0) {
  return;
}
void usbnet_update_max_qlen(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_write_cmd(struct usbnet *arg0, u8 arg1, u8 arg2, u16 arg3, u16 arg4, const void *arg5, u16 arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_write_cmd_async(struct usbnet *arg0, u8 arg1, u8 arg2, u16 arg3, u16 arg4, const void *arg5, u16 arg6) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
