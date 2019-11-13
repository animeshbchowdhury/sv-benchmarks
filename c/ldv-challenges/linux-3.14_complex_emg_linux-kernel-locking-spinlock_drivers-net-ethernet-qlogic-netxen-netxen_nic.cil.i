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
typedef __u64 __le64;
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
typedef unsigned long ulong;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
enum ldv_22042 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22042 socket_state;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
enum ldv_28400 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28401 {
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
   enum ldv_28400 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28401 rtnl_link_state : 16 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
union __anonunion_ki_obj_247 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_247 ki_obj ;
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
union __anonunion____missing_field_name_248 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_248 __annonCompField77 ;
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
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_253 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_254 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_254 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_256 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_255 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_256 __annonCompField79 ;
};
union __anonunion____missing_field_name_257 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_259 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_258 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_259 __annonCompField82 ;
};
union __anonunion____missing_field_name_260 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_255 __annonCompField80 ;
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   union __anonunion____missing_field_name_258 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_260 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_261 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_262 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_262 sk_backlog ;
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
union __anonunion_h_263 {
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
   union __anonunion_h_263 h ;
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
struct netxen_adapter;
struct __anonstruct_crb_128M_2M_sub_block_map_t_270 {
   unsigned int valid ;
   unsigned int start_128M ;
   unsigned int end_128M ;
   unsigned int start_2M ;
};
typedef struct __anonstruct_crb_128M_2M_sub_block_map_t_270 crb_128M_2M_sub_block_map_t;
struct __anonstruct_crb_128M_2M_block_map_t_271 {
   crb_128M_2M_sub_block_map_t sub_block[16U] ;
};
typedef struct __anonstruct_crb_128M_2M_block_map_t_271 crb_128M_2M_block_map_t;
struct netxen_rcv_ring {
   __le64 addr ;
   __le32 size ;
   __le32 rsrvd ;
};
struct netxen_sts_ring {
   __le64 addr ;
   __le32 size ;
   __le16 msi_index ;
   __le16 rsvd ;
};
struct netxen_ring_ctx {
   __le64 cmd_consumer_offset ;
   __le64 cmd_ring_addr ;
   __le32 cmd_ring_size ;
   __le32 rsrvd ;
   struct netxen_rcv_ring rcv_rings[3U] ;
   __le64 sts_ring_addr ;
   __le32 sts_ring_size ;
   __le32 ctx_id ;
   __le64 rsrvd_2[3U] ;
   __le32 sts_ring_count ;
   __le32 rsrvd_3 ;
   struct netxen_sts_ring sts_rings[4U] ;
};
struct cmd_desc_type0 {
   u8 tcp_hdr_offset ;
   u8 ip_hdr_offset ;
   __le16 flags_opcode ;
   __le32 nfrags__length ;
   __le64 addr_buffer2 ;
   __le16 reference_handle ;
   __le16 mss ;
   u8 port_ctxid ;
   u8 total_hdr_length ;
   __le16 conn_id ;
   __le64 addr_buffer3 ;
   __le64 addr_buffer1 ;
   __le16 buffer_length[4U] ;
   __le64 addr_buffer4 ;
   __le32 reserved2 ;
   __le16 reserved ;
   __le16 vlan_TCI ;
};
struct rcv_desc {
   __le16 reference_handle ;
   __le16 reserved ;
   __le32 buffer_length ;
   __le64 addr_buffer ;
};
struct status_desc {
   __le64 status_desc_data[2U] ;
};
struct netxen_skb_frag {
   u64 dma ;
   u64 length ;
};
struct netxen_cmd_buffer {
   struct sk_buff *skb ;
   struct netxen_skb_frag frag_array[18U] ;
   u32 frag_count ;
};
struct netxen_rx_buffer {
   struct list_head list ;
   struct sk_buff *skb ;
   u64 dma ;
   u16 ref_handle ;
   u16 state ;
};
struct netxen_hardware_context {
   void *pci_base0 ;
   void *pci_base1 ;
   void *pci_base2 ;
   void *db_base ;
   void *ocm_win_crb ;
   unsigned long db_len ;
   unsigned long pci_len0 ;
   u32 ocm_win ;
   u32 crb_win ;
   rwlock_t crb_lock ;
   spinlock_t mem_lock ;
   u8 cut_through ;
   u8 revision_id ;
   u8 pci_func ;
   u8 linkup ;
   u16 port_type ;
   u16 board_type ;
};
struct netxen_adapter_stats {
   u64 xmitcalled ;
   u64 xmitfinished ;
   u64 rxdropped ;
   u64 txdropped ;
   u64 csummed ;
   u64 rx_pkts ;
   u64 lro_pkts ;
   u64 rxbytes ;
   u64 txbytes ;
};
struct nx_host_rds_ring {
   u32 producer ;
   u32 num_desc ;
   u32 dma_size ;
   u32 skb_size ;
   u32 flags ;
   void *crb_rcv_producer ;
   struct rcv_desc *desc_head ;
   struct netxen_rx_buffer *rx_buf_arr ;
   struct list_head free_list ;
   spinlock_t lock ;
   dma_addr_t phys_addr ;
};
struct nx_host_sds_ring {
   u32 consumer ;
   u32 num_desc ;
   void *crb_sts_consumer ;
   void *crb_intr_mask ;
   struct status_desc *desc_head ;
   struct netxen_adapter *adapter ;
   struct napi_struct napi ;
   struct list_head free_list[3U] ;
   int irq ;
   dma_addr_t phys_addr ;
   char name[20U] ;
};
struct nx_host_tx_ring {
   u32 producer ;
   __le32 *hw_consumer ;
   u32 sw_consumer ;
   void *crb_cmd_producer ;
   void *crb_cmd_consumer ;
   u32 num_desc ;
   struct netdev_queue *txq ;
   struct netxen_cmd_buffer *cmd_buf_arr ;
   struct cmd_desc_type0 *desc_head ;
   dma_addr_t phys_addr ;
};
struct netxen_recv_context {
   u32 state ;
   u16 context_id ;
   u16 virt_port ;
   struct nx_host_rds_ring *rds_rings ;
   struct nx_host_sds_ring *sds_rings ;
   struct netxen_ring_ctx *hwctx ;
   dma_addr_t phys_addr ;
};
struct nx_mac_list_s {
   struct list_head list ;
   uint8_t mac_addr[8U] ;
};
typedef struct nx_mac_list_s nx_mac_list_t;
struct __anonstruct_data_283 {
   uint16_t rx_packets ;
   uint16_t rx_time_us ;
   uint16_t tx_packets ;
   uint16_t tx_time_us ;
};
union __anonunion_nx_nic_intr_coalesce_data_t_282 {
   struct __anonstruct_data_283 data ;
   uint64_t word ;
};
typedef union __anonunion_nx_nic_intr_coalesce_data_t_282 nx_nic_intr_coalesce_data_t;
struct __anonstruct_nx_nic_intr_coalesce_t_284 {
   uint16_t stats_time_us ;
   uint16_t rate_sample_time ;
   uint16_t flags ;
   uint16_t rsvd_1 ;
   uint32_t low_threshold ;
   uint32_t high_threshold ;
   nx_nic_intr_coalesce_data_t normal ;
   nx_nic_intr_coalesce_data_t low ;
   nx_nic_intr_coalesce_data_t high ;
   nx_nic_intr_coalesce_data_t irq ;
};
typedef struct __anonstruct_nx_nic_intr_coalesce_t_284 nx_nic_intr_coalesce_t;
struct __anonstruct_nx_nic_req_t_288 {
   __le64 qhdr ;
   __le64 req_hdr ;
   __le64 words[6U] ;
};
typedef struct __anonstruct_nx_nic_req_t_288 nx_nic_req_t;
struct __anonstruct_nx_mac_req_t_289 {
   u8 op ;
   u8 tag ;
   u8 mac_addr[6U] ;
};
typedef struct __anonstruct_nx_mac_req_t_289 nx_mac_req_t;
struct netxen_minidump {
   u32 pos ;
   u8 fw_supports_md ;
   u8 has_valid_dump ;
   u8 md_capture_mask ;
   u8 md_enabled ;
   u32 md_dump_size ;
   u32 md_capture_size ;
   u32 md_template_size ;
   u32 md_template_ver ;
   u64 md_timestamp ;
   void *md_template ;
   void *md_capture_buff ;
};
struct netxen_minidump_template_hdr {
   u32 entry_type ;
   u32 first_entry_offset ;
   u32 size_of_template ;
   u32 capture_mask ;
   u32 num_of_entries ;
   u32 version ;
   u32 driver_timestamp ;
   u32 checksum ;
   u32 driver_capture_mask ;
   u32 driver_info_word2 ;
   u32 driver_info_word3 ;
   u32 driver_info_word4 ;
   u32 saved_state_array[16U] ;
   u32 capture_size_array[8U] ;
   u32 rsvd[0U] ;
};
struct __anonstruct____missing_field_name_291 {
   u8 entry_capture_mask ;
   u8 entry_code ;
   u8 driver_code ;
   u8 driver_flags ;
};
union __anonunion____missing_field_name_290 {
   struct __anonstruct____missing_field_name_291 __annonCompField88 ;
   u32 entry_ctrl_word ;
};
struct netxen_common_entry_hdr {
   u32 entry_type ;
   u32 entry_size ;
   u32 entry_capture_size ;
   union __anonunion____missing_field_name_290 __annonCompField89 ;
};
struct netxen_minidump_entry {
   struct netxen_common_entry_hdr hdr ;
   u32 entry_data00 ;
   u32 entry_data01 ;
   u32 entry_data02 ;
   u32 entry_data03 ;
   u32 entry_data04 ;
   u32 entry_data05 ;
   u32 entry_data06 ;
   u32 entry_data07 ;
};
struct __anonstruct____missing_field_name_293 {
   u32 select_addr_reg ;
};
union __anonunion____missing_field_name_292 {
   struct __anonstruct____missing_field_name_293 __annonCompField90 ;
   u32 rsvd_0 ;
};
struct __anonstruct____missing_field_name_295 {
   u8 addr_stride ;
   u8 addr_cnt ;
   u16 data_size ;
};
union __anonunion____missing_field_name_294 {
   struct __anonstruct____missing_field_name_295 __annonCompField92 ;
   u32 rsvd_1 ;
};
struct __anonstruct____missing_field_name_297 {
   u32 op_count ;
};
union __anonunion____missing_field_name_296 {
   struct __anonstruct____missing_field_name_297 __annonCompField94 ;
   u32 rsvd_2 ;
};
struct __anonstruct____missing_field_name_299 {
   u32 read_addr_reg ;
};
union __anonunion____missing_field_name_298 {
   struct __anonstruct____missing_field_name_299 __annonCompField96 ;
   u32 rsvd_3 ;
};
struct __anonstruct____missing_field_name_301 {
   u32 write_mask ;
};
union __anonunion____missing_field_name_300 {
   struct __anonstruct____missing_field_name_301 __annonCompField98 ;
   u32 rsvd_4 ;
};
struct __anonstruct____missing_field_name_303 {
   u32 read_mask ;
};
union __anonunion____missing_field_name_302 {
   struct __anonstruct____missing_field_name_303 __annonCompField100 ;
   u32 rsvd_5 ;
};
struct netxen_minidump_entry_rdrom {
   struct netxen_common_entry_hdr h ;
   union __anonunion____missing_field_name_292 __annonCompField91 ;
   union __anonunion____missing_field_name_294 __annonCompField93 ;
   union __anonunion____missing_field_name_296 __annonCompField95 ;
   union __anonunion____missing_field_name_298 __annonCompField97 ;
   union __anonunion____missing_field_name_300 __annonCompField99 ;
   union __anonunion____missing_field_name_302 __annonCompField101 ;
   u32 read_addr ;
   u32 read_data_size ;
};
struct __anonstruct____missing_field_name_305 {
   u8 addr_stride ;
   u8 state_index_a ;
   u16 poll_timeout ;
};
union __anonunion____missing_field_name_304 {
   struct __anonstruct____missing_field_name_305 __annonCompField102 ;
   u32 addr_cntrl ;
};
struct __anonstruct____missing_field_name_307 {
   u8 opcode ;
   u8 state_index_v ;
   u8 shl ;
   u8 shr ;
};
union __anonunion____missing_field_name_306 {
   struct __anonstruct____missing_field_name_307 __annonCompField104 ;
   u32 control_value ;
};
struct netxen_minidump_entry_crb {
   struct netxen_common_entry_hdr h ;
   u32 addr ;
   union __anonunion____missing_field_name_304 __annonCompField103 ;
   u32 data_size ;
   u32 op_count ;
   union __anonunion____missing_field_name_306 __annonCompField105 ;
   u32 value_1 ;
   u32 value_2 ;
   u32 value_3 ;
};
struct __anonstruct____missing_field_name_309 {
   u32 select_addr_reg ;
};
union __anonunion____missing_field_name_308 {
   struct __anonstruct____missing_field_name_309 __annonCompField106 ;
   u32 rsvd_0 ;
};
struct __anonstruct____missing_field_name_311 {
   u8 addr_stride ;
   u8 addr_cnt ;
   u16 data_size ;
};
union __anonunion____missing_field_name_310 {
   struct __anonstruct____missing_field_name_311 __annonCompField108 ;
   u32 rsvd_1 ;
};
struct __anonstruct____missing_field_name_313 {
   u32 op_count ;
};
union __anonunion____missing_field_name_312 {
   struct __anonstruct____missing_field_name_313 __annonCompField110 ;
   u32 rsvd_2 ;
};
struct __anonstruct____missing_field_name_315 {
   u32 read_addr_reg ;
};
union __anonunion____missing_field_name_314 {
   struct __anonstruct____missing_field_name_315 __annonCompField112 ;
   u32 rsvd_3 ;
};
struct __anonstruct____missing_field_name_317 {
   u32 cntrl_addr_reg ;
};
union __anonunion____missing_field_name_316 {
   struct __anonstruct____missing_field_name_317 __annonCompField114 ;
   u32 rsvd_4 ;
};
struct __anonstruct____missing_field_name_319 {
   u8 wr_byte0 ;
   u8 wr_byte1 ;
   u8 poll_mask ;
   u8 poll_cnt ;
};
union __anonunion____missing_field_name_318 {
   struct __anonstruct____missing_field_name_319 __annonCompField116 ;
   u32 rsvd_5 ;
};
struct netxen_minidump_entry_rdmem {
   struct netxen_common_entry_hdr h ;
   union __anonunion____missing_field_name_308 __annonCompField107 ;
   union __anonunion____missing_field_name_310 __annonCompField109 ;
   union __anonunion____missing_field_name_312 __annonCompField111 ;
   union __anonunion____missing_field_name_314 __annonCompField113 ;
   union __anonunion____missing_field_name_316 __annonCompField115 ;
   union __anonunion____missing_field_name_318 __annonCompField117 ;
   u32 read_addr ;
   u32 read_data_size ;
};
struct __anonstruct____missing_field_name_321 {
   u16 tag_value_stride ;
   u16 init_tag_value ;
};
union __anonunion____missing_field_name_320 {
   struct __anonstruct____missing_field_name_321 __annonCompField118 ;
   u32 select_addr_cntrl ;
};
struct __anonstruct____missing_field_name_323 {
   u16 write_value ;
   u8 poll_mask ;
   u8 poll_wait ;
};
union __anonunion____missing_field_name_322 {
   struct __anonstruct____missing_field_name_323 __annonCompField120 ;
   u32 control_value ;
};
struct __anonstruct____missing_field_name_325 {
   u8 read_addr_stride ;
   u8 read_addr_cnt ;
   u16 rsvd_1 ;
};
union __anonunion____missing_field_name_324 {
   struct __anonstruct____missing_field_name_325 __annonCompField122 ;
   u32 read_addr_cntrl ;
};
struct netxen_minidump_entry_cache {
   struct netxen_common_entry_hdr h ;
   u32 tag_reg_addr ;
   union __anonunion____missing_field_name_320 __annonCompField119 ;
   u32 data_size ;
   u32 op_count ;
   u32 control_addr ;
   union __anonunion____missing_field_name_322 __annonCompField121 ;
   u32 read_addr ;
   union __anonunion____missing_field_name_324 __annonCompField123 ;
};
struct __anonstruct____missing_field_name_327 {
   u32 rsvd_1 ;
};
union __anonunion____missing_field_name_326 {
   struct __anonstruct____missing_field_name_327 __annonCompField124 ;
   u32 select_addr_cntrl ;
};
struct __anonstruct____missing_field_name_329 {
   u32 read_addr_stride ;
};
union __anonunion____missing_field_name_328 {
   struct __anonstruct____missing_field_name_329 __annonCompField126 ;
   u32 read_addr_cntrl ;
};
struct netxen_minidump_entry_rdocm {
   struct netxen_common_entry_hdr h ;
   u32 rsvd_0 ;
   union __anonunion____missing_field_name_326 __annonCompField125 ;
   u32 data_size ;
   u32 op_count ;
   u32 rsvd_2 ;
   u32 rsvd_3 ;
   u32 read_addr ;
   union __anonunion____missing_field_name_328 __annonCompField127 ;
};
struct __anonstruct____missing_field_name_331 {
   u32 rsvd_0 ;
};
union __anonunion____missing_field_name_330 {
   struct __anonstruct____missing_field_name_331 __annonCompField128 ;
   u32 select_addr_cntrl ;
};
struct netxen_minidump_entry_mux {
   struct netxen_common_entry_hdr h ;
   u32 select_addr ;
   union __anonunion____missing_field_name_330 __annonCompField129 ;
   u32 data_size ;
   u32 op_count ;
   u32 select_value ;
   u32 select_value_stride ;
   u32 read_addr ;
   u32 rsvd_1 ;
};
struct __anonstruct____missing_field_name_333 {
   u16 queue_id_stride ;
   u16 rsvd_0 ;
};
union __anonunion____missing_field_name_332 {
   struct __anonstruct____missing_field_name_333 __annonCompField130 ;
   u32 select_addr_cntrl ;
};
struct __anonstruct____missing_field_name_335 {
   u8 read_addr_stride ;
   u8 read_addr_cnt ;
   u16 rsvd_3 ;
};
union __anonunion____missing_field_name_334 {
   struct __anonstruct____missing_field_name_335 __annonCompField132 ;
   u32 read_addr_cntrl ;
};
struct netxen_minidump_entry_queue {
   struct netxen_common_entry_hdr h ;
   u32 select_addr ;
   union __anonunion____missing_field_name_332 __annonCompField131 ;
   u32 data_size ;
   u32 op_count ;
   u32 rsvd_1 ;
   u32 rsvd_2 ;
   u32 read_addr ;
   union __anonunion____missing_field_name_334 __annonCompField133 ;
};
struct netxen_dummy_dma {
   void *addr ;
   dma_addr_t phys_addr ;
};
struct netxen_adapter {
   struct netxen_hardware_context ahw ;
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct list_head mac_list ;
   struct list_head ip_list ;
   spinlock_t tx_clean_lock ;
   u16 num_txd ;
   u16 num_rxd ;
   u16 num_jumbo_rxd ;
   u16 num_lro_rxd ;
   u8 max_rds_rings ;
   u8 max_sds_rings ;
   u8 driver_mismatch ;
   u8 msix_supported ;
   u8 __pad ;
   u8 pci_using_dac ;
   u8 portnum ;
   u8 physical_port ;
   u8 mc_enabled ;
   u8 max_mc_count ;
   u8 rss_supported ;
   u8 link_changed ;
   u8 fw_wait_cnt ;
   u8 fw_fail_cnt ;
   u8 tx_timeo_cnt ;
   u8 need_fw_reset ;
   u8 has_link_events ;
   u8 fw_type ;
   u16 tx_context_id ;
   u16 mtu ;
   u16 is_up ;
   u16 link_speed ;
   u16 link_duplex ;
   u16 link_autoneg ;
   u16 module_type ;
   u32 capabilities ;
   u32 flags ;
   u32 irq ;
   u32 temp ;
   u32 int_vec_bit ;
   u32 heartbit ;
   u8 mac_addr[6U] ;
   struct netxen_adapter_stats stats ;
   struct netxen_recv_context recv_ctx ;
   struct nx_host_tx_ring *tx_ring ;
   int (*macaddr_set)(struct netxen_adapter * , u8 * ) ;
   int (*set_mtu)(struct netxen_adapter * , int ) ;
   int (*set_promisc)(struct netxen_adapter * , u32 ) ;
   void (*set_multi)(struct net_device * ) ;
   int (*phy_read)(struct netxen_adapter * , u32 , u32 * ) ;
   int (*phy_write)(struct netxen_adapter * , u32 , u32 ) ;
   int (*init_port)(struct netxen_adapter * , int ) ;
   int (*stop_port)(struct netxen_adapter * ) ;
   u32 (*crb_read)(struct netxen_adapter * , ulong ) ;
   int (*crb_write)(struct netxen_adapter * , ulong , u32 ) ;
   int (*pci_mem_read)(struct netxen_adapter * , u64 , u64 * ) ;
   int (*pci_mem_write)(struct netxen_adapter * , u64 , u64 ) ;
   int (*pci_set_window)(struct netxen_adapter * , u64 , u32 * ) ;
   u32 (*io_read)(struct netxen_adapter * , void * ) ;
   void (*io_write)(struct netxen_adapter * , void * , u32 ) ;
   void *tgt_mask_reg ;
   void *pci_int_reg ;
   void *tgt_status_reg ;
   void *crb_int_state_reg ;
   void *isr_int_vec ;
   struct msix_entry msix_entries[4U] ;
   struct netxen_dummy_dma dummy_dma ;
   struct delayed_work fw_work ;
   struct work_struct tx_timeout_task ;
   nx_nic_intr_coalesce_t coal ;
   unsigned long state ;
   __le32 file_prd_off ;
   u32 fw_version ;
   struct firmware const *fw ;
   struct netxen_minidump mdump ;
   int fw_mdump_rdy ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_342 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_342 __annonCompField134 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_343 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_345 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion____missing_field_name_344 {
   struct __anonstruct____missing_field_name_345 __annonCompField136 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_343 __annonCompField135 ;
   union __anonunion____missing_field_name_344 __annonCompField137 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
typedef __u16 __sum16;
typedef int pao_T__;
typedef int pao_T_____0;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netdev_notifier_info {
   struct net_device *dev ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
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
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   __u16 res1 : 4 ;
   __u16 doff : 4 ;
   __u16 fin : 1 ;
   __u16 syn : 1 ;
   __u16 rst : 1 ;
   __u16 psh : 1 ;
   __u16 ack : 1 ;
   __u16 urg : 1 ;
   __u16 ece : 1 ;
   __u16 cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct netxen_legacy_intr_set {
   uint32_t int_vec_bit ;
   uint32_t tgt_status_reg ;
   uint32_t tgt_mask_reg ;
   uint32_t pci_int_reg ;
};
struct nx_ip_list {
   struct list_head list ;
   __be32 ip_addr ;
   bool master ;
};
struct netxen_brdinfo {
   int brdtype ;
   long ports ;
   char short_name[32U] ;
};
struct netxen_dimm_cfg {
   u8 presence ;
   u8 mem_type ;
   u8 dimm_type ;
   u32 size ;
};
struct vlan_ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_vlan_proto ;
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct ipv6hdr {
   __u8 priority : 4 ;
   __u8 version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct in_ifaddr;
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef struct net_device *ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
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
enum hrtimer_restart;
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
typedef u32 netxen_ctx_msg;
struct uni_table_desc {
   uint32_t findex ;
   uint32_t num_entries ;
   uint32_t entry_size ;
   uint32_t reserved[5U] ;
};
struct uni_data_desc {
   uint32_t findex ;
   uint32_t size ;
   uint32_t reserved[5U] ;
};
struct __anonstruct____missing_field_name_288 {
   u64 hdr ;
   u64 body[7U] ;
};
union __anonunion____missing_field_name_287 {
   struct __anonstruct____missing_field_name_288 __annonCompField86 ;
   u64 words[8U] ;
};
struct __anonstruct_nx_fw_msg_t_286 {
   union __anonunion____missing_field_name_287 __annonCompField87 ;
};
typedef struct __anonstruct_nx_fw_msg_t_286 nx_fw_msg_t;
struct crb_addr_pair {
   u32 addr ;
   u32 data ;
};
enum hrtimer_restart;
struct netxen_nic_stats {
   char stat_string[32U] ;
   int sizeof_stat ;
   int stat_offset ;
};
enum hrtimer_restart;
struct netxen_recv_crb {
   u32 crb_rcv_producer[3U] ;
   u32 crb_sts_consumer[4U] ;
   u32 sw_int_mask[4U] ;
};
struct _cdrp_cmd {
   u32 cmd ;
   u32 arg1 ;
   u32 arg2 ;
   u32 arg3 ;
};
struct netxen_cmd_args {
   struct _cdrp_cmd req ;
   struct _cdrp_cmd rsp ;
};
struct __anonstruct_nx_hostrq_sds_ring_t_272 {
   __le64 host_phys_addr ;
   __le32 ring_size ;
   __le16 msi_index ;
   __le16 rsvd ;
};
typedef struct __anonstruct_nx_hostrq_sds_ring_t_272 nx_hostrq_sds_ring_t;
struct __anonstruct_nx_hostrq_rds_ring_t_273 {
   __le64 host_phys_addr ;
   __le64 buff_size ;
   __le32 ring_size ;
   __le32 ring_kind ;
};
typedef struct __anonstruct_nx_hostrq_rds_ring_t_273 nx_hostrq_rds_ring_t;
struct __anonstruct_nx_hostrq_rx_ctx_t_274 {
   __le64 host_rsp_dma_addr ;
   __le32 capabilities[4U] ;
   __le32 host_int_crb_mode ;
   __le32 host_rds_crb_mode ;
   __le32 rds_ring_offset ;
   __le32 sds_ring_offset ;
   __le16 num_rds_rings ;
   __le16 num_sds_rings ;
   __le16 rsvd1 ;
   __le16 rsvd2 ;
   u8 reserved[128U] ;
   char data[0U] ;
};
typedef struct __anonstruct_nx_hostrq_rx_ctx_t_274 nx_hostrq_rx_ctx_t;
struct __anonstruct_nx_cardrsp_rds_ring_t_275 {
   __le32 host_producer_crb ;
   __le32 rsvd1 ;
};
typedef struct __anonstruct_nx_cardrsp_rds_ring_t_275 nx_cardrsp_rds_ring_t;
struct __anonstruct_nx_cardrsp_sds_ring_t_276 {
   __le32 host_consumer_crb ;
   __le32 interrupt_crb ;
};
typedef struct __anonstruct_nx_cardrsp_sds_ring_t_276 nx_cardrsp_sds_ring_t;
struct __anonstruct_nx_cardrsp_rx_ctx_t_277 {
   __le32 rds_ring_offset ;
   __le32 sds_ring_offset ;
   __le32 host_ctx_state ;
   __le32 num_fn_per_port ;
   __le16 num_rds_rings ;
   __le16 num_sds_rings ;
   __le16 context_id ;
   u8 phys_port ;
   u8 virt_port ;
   u8 reserved[128U] ;
   char data[0U] ;
};
typedef struct __anonstruct_nx_cardrsp_rx_ctx_t_277 nx_cardrsp_rx_ctx_t;
struct __anonstruct_nx_hostrq_cds_ring_t_278 {
   __le64 host_phys_addr ;
   __le32 ring_size ;
   __le32 rsvd ;
};
typedef struct __anonstruct_nx_hostrq_cds_ring_t_278 nx_hostrq_cds_ring_t;
struct __anonstruct_nx_hostrq_tx_ctx_t_279 {
   __le64 host_rsp_dma_addr ;
   __le64 cmd_cons_dma_addr ;
   __le64 dummy_dma_addr ;
   __le32 capabilities[4U] ;
   __le32 host_int_crb_mode ;
   __le32 rsvd1 ;
   __le16 rsvd2 ;
   __le16 interrupt_ctl ;
   __le16 msi_index ;
   __le16 rsvd3 ;
   nx_hostrq_cds_ring_t cds_ring ;
   u8 reserved[128U] ;
};
typedef struct __anonstruct_nx_hostrq_tx_ctx_t_279 nx_hostrq_tx_ctx_t;
struct __anonstruct_nx_cardrsp_cds_ring_t_280 {
   __le32 host_producer_crb ;
   __le32 interrupt_crb ;
};
typedef struct __anonstruct_nx_cardrsp_cds_ring_t_280 nx_cardrsp_cds_ring_t;
struct __anonstruct_nx_cardrsp_tx_ctx_t_281 {
   __le32 host_ctx_state ;
   __le16 context_id ;
   u8 phys_port ;
   u8 virt_port ;
   nx_cardrsp_cds_ring_t cds_ring ;
   u8 reserved[128U] ;
};
typedef struct __anonstruct_nx_cardrsp_tx_ctx_t_281 nx_cardrsp_tx_ctx_t;
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
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_tail_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)list);
  }
  if (tmp == 0) {
    {
    __list_splice((struct list_head const *)list, head->prev, head);
    INIT_LIST_HEAD(list);
    }
  } else {
  }
  return;
}
}
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
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
extern int printk(char const * , ...) ;
extern int __printk_ratelimit(char const * ) ;
extern void dump_stack(void) ;
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void) ;
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void) ;
void ldv_spin_lock_mem_lock_of_netxen_hardware_context(void) ;
void ldv_spin_unlock_mem_lock_of_netxen_hardware_context(void) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_read_lock(rwlock_t * ) ;
extern unsigned long _raw_write_lock_irqsave(rwlock_t * ) ;
extern void _raw_read_unlock(rwlock_t * ) ;
extern void _raw_write_unlock_irqrestore(rwlock_t * , unsigned long ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_47(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_50(spinlock_t *lock ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void jiffies_to_timespec(unsigned long const , struct timespec * ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
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
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
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
  tmp___0 = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
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
__inline static void __netif_tx_lock_bh(struct netdev_queue *txq )
{
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  ldv_spin_lock_bh_47(& txq->_xmit_lock);
  __vpp_verify = (void const *)0;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1: ;
  {
  if (4UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39597;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39597;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39597;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39597;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_39597:
  pscr_ret__ = pfo_ret__;
  goto ldv_39603;
  case_2___0: ;
  {
  if (4UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39607;
  case_2___1:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39607;
  case_4___0:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39607;
  case_8___0:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39607;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_39607:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39603;
  case_4___1: ;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39616;
  case_2___2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39616;
  case_4___2:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39616;
  case_8___1:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39616;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_39616:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39603;
  case_8___2: ;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39625;
  case_2___3:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39625;
  case_4___3:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39625;
  case_8___3:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39625;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_39625:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39603;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_39603;
  switch_break: ;
  }
  ldv_39603:
  txq->xmit_lock_owner = pscr_ret__;
  return;
}
}
__inline static void __netif_tx_unlock_bh(struct netdev_queue *txq )
{
  {
  {
  txq->xmit_lock_owner = -1;
  ldv_spin_unlock_bh_50(& txq->_xmit_lock);
  }
  return;
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
void netxen_nic_set_link_parameters(struct netxen_adapter *adapter ) ;
int nx_fw_cmd_query_phy(struct netxen_adapter *adapter , u32 reg , u32 *val ) ;
int nx_fw_cmd_set_phy(struct netxen_adapter *adapter , u32 reg , u32 val ) ;
int netxen_pcie_sem_lock(struct netxen_adapter *adapter , int sem , u32 id_reg ) ;
void netxen_pcie_sem_unlock(struct netxen_adapter *adapter , int sem ) ;
int netxen_nic_get_board_info(struct netxen_adapter *adapter ) ;
int netxen_nic_wol_supported(struct netxen_adapter *adapter ) ;
int netxen_rom_fast_read(struct netxen_adapter *adapter , int addr , int *valp ) ;
void netxen_setup_hwops(struct netxen_adapter *adapter ) ;
void *netxen_get_ioaddr(struct netxen_adapter *adapter , u32 offset ) ;
void netxen_p3_free_mac_list(struct netxen_adapter *adapter ) ;
int netxen_config_intr_coalesce(struct netxen_adapter *adapter ) ;
int netxen_config_rss(struct netxen_adapter *adapter , int enable ) ;
int netxen_config_ipaddr(struct netxen_adapter *adapter , __be32 ip , int cmd ) ;
int netxen_linkevent_request(struct netxen_adapter *adapter , int enable ) ;
void netxen_pci_camqm_read_2M(struct netxen_adapter *adapter , u64 off , u64 *data ) ;
void netxen_pci_camqm_write_2M(struct netxen_adapter *adapter , u64 off , u64 data ) ;
int nx_fw_cmd_set_mtu(struct netxen_adapter *adapter , int mtu ) ;
int netxen_nic_change_mtu(struct net_device *netdev , int mtu ) ;
int netxen_config_hw_lro(struct netxen_adapter *adapter , int enable ) ;
int netxen_config_bridged_mode(struct netxen_adapter *adapter , int enable ) ;
int netxen_send_lro_cleanup(struct netxen_adapter *adapter ) ;
void netxen_dump_fw(struct netxen_adapter *adapter ) ;
void netxen_nic_update_cmd_producer(struct netxen_adapter *adapter , struct nx_host_tx_ring *tx_ring ) ;
__inline static u32 netxen_tx_avail(struct nx_host_tx_ring *tx_ring )
{
  {
  __asm__ volatile ("mfence": : : "memory");
  return (tx_ring->producer < tx_ring->sw_consumer ? tx_ring->sw_consumer - tx_ring->producer : (tx_ring->sw_consumer + tx_ring->num_desc) - tx_ring->producer);
}
}
int netxen_get_flash_mac_addr(struct netxen_adapter *adapter , u64 *mac ) ;
int netxen_p3_get_mac_addr(struct netxen_adapter *adapter , u64 *mac ) ;
static void netxen_nic_io_write_128M(struct netxen_adapter *adapter , void *addr ,
                                     u32 data ) ;
static u32 netxen_nic_io_read_128M(struct netxen_adapter *adapter , void *addr ) ;
static void *pci_base_offset(struct netxen_adapter *adapter , unsigned long off )
{
  {
  if (off <= 1048575UL) {
    return (adapter->ahw.pci_base0 + off);
  } else {
  }
  if (off - 100663296UL <= 9158655UL) {
    return (adapter->ahw.pci_base1 + (off + 0xfffffffffa000000UL));
  } else {
  }
  if (off - 118374400UL <= 15843327UL) {
    return (adapter->ahw.pci_base2 + (off + 0xfffffffff8f1c000UL));
  } else {
  }
  return ((void *)0);
}
}
static crb_128M_2M_block_map_t crb_128M_2M_map[64U] =
  { {{{0U, 0U, 0U, 0U}}},
        {{{1U, 1048576U, 1056768U, 1179648U}, {1U, 1114112U, 1179648U, 1245184U}, {1U,
                                                                                1179648U,
                                                                                1187840U,
                                                                                1196032U},
       {1U, 1245184U, 1253376U, 1204224U}, {1U, 1310720U, 1318912U, 1212416U}, {1U,
                                                                                1376256U,
                                                                                1384448U,
                                                                                1220608U},
       {1U, 1441792U, 1507328U, 1114112U}, {1U, 1507328U, 1515520U, 1236992U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {1U, 1966080U, 1968128U, 1187840U}, {0U, 0U, 0U, 0U}}},
        {{{1U, 2097152U, 2162688U, 1572864U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 4194304U, 4198400U, 1478656U}}},
        {{{1U, 5242880U, 5308416U, 1310720U}}},
        {{{1U, 6291456U, 6356992U, 1835008U}}},
        {{{1U, 7340032U, 7356416U, 1802240U}}},
        {{{1U, 8388608U, 8396800U, 1507328U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {1U, 9371648U, 9379840U, 1515520U}}},
        {{{1U, 9437184U, 9445376U, 1523712U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {1U, 10420224U, 10428416U, 1531904U}}},
        {{{0U, 10485760U, 10493952U, 1540096U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {1U, 11468800U, 11476992U, 1548288U}}},
        {{{0U, 11534336U, 11542528U, 1556480U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {1U, 12517376U, 12525568U, 1564672U}}},
        {{{1U, 12582912U, 12599296U, 1916928U}}},
        {{{1U, 13631488U, 13647872U, 1720320U}}},
        {{{1U, 14680064U, 14696448U, 1703936U}}},
        {{{1U, 15728640U, 15732736U, 1458176U}}},
        {{{0U, 16777216U, 16793600U, 1736704U}}},
        {{{1U, 17825792U, 17829888U, 1441792U}}},
        {{{1U, 18874368U, 18878464U, 1445888U}}},
        {{{1U, 19922944U, 19927040U, 1449984U}}},
        {{{1U, 20971520U, 20975616U, 1454080U}}},
        {{{1U, 22020096U, 22024192U, 1462272U}}},
        {{{1U, 23068672U, 23072768U, 1466368U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 30408704U, 30474240U, 1638400U}}},
        {{{1U, 31457280U, 31461376U, 1482752U}}},
        {{{1U, 32505856U, 32571392U, 1376256U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 34603008U, 34611200U, 1179648U}, {1U, 34668544U, 34734080U, 1245184U},
       {1U, 34734080U, 34742272U, 1196032U}, {1U, 34799616U, 34807808U, 1204224U},
       {1U, 34865152U, 34873344U, 1212416U}, {1U, 34930688U, 34938880U, 1220608U},
       {1U, 34996224U, 35061760U, 1114112U}, {1U, 35061760U, 35069952U, 1236992U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U,
                                                                                0U,
                                                                                0U,
                                                                                0U},
       {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}, {0U, 0U, 0U, 0U}}},
        {{{1U, 35651584U, 35667968U, 1769472U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 41943040U, 41959424U, 1720320U}}},
        {{{1U, 42991616U, 42995712U, 1486848U}}},
        {{{1U, 44040192U, 44041216U, 1754112U}}},
        {{{1U, 45088768U, 45089792U, 1755136U}}},
        {{{1U, 46137344U, 46138368U, 1756160U}}},
        {{{1U, 47185920U, 47186944U, 1757184U}}},
        {{{1U, 48234496U, 48235520U, 1758208U}}},
        {{{1U, 49283072U, 49284096U, 1759232U}}},
        {{{1U, 50331648U, 50332672U, 1760256U}}},
        {{{0U, 51380224U, 51396608U, 1736704U}}},
        {{{1U, 52428800U, 52445184U, 1916928U}}},
        {{{1U, 53477376U, 53493760U, 1703936U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 55574528U, 55575552U, 1753088U}}},
        {{{1U, 56623104U, 56624128U, 1761280U}}},
        {{{1U, 57671680U, 57672704U, 1762304U}}},
        {{{1U, 58720256U, 58736640U, 1900544U}}},
        {{{1U, 59768832U, 59785216U, 1785856U}}},
        {{{1U, 60817408U, 60833792U, 1933312U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{0U, 0U, 0U, 0U}}},
        {{{1U, 63963136U, 63979520U, 1933312U}}},
        {{{1U, 65011712U, 65015808U, 1470464U}}},
        {{{1U, 66060288U, 66064384U, 1474560U}}}};
static unsigned int crb_hub_agt[64U] =
  { 0U, 1907U, 661U, 677U,
        0U, 208U, 433U, 230U,
        224U, 225U, 226U, 227U,
        1056U, 1047U, 1057U, 843U,
        1029U, 832U, 833U, 834U,
        835U, 837U, 836U, 960U,
        961U, 962U, 963U, 0U,
        964U, 1040U, 0U, 209U,
        0U, 1907U, 1046U, 0U,
        0U, 0U, 0U, 0U,
        1047U, 0U, 137U, 1802U,
        1803U, 1804U, 141U, 142U,
        1807U, 1029U, 1056U, 1057U,
        0U, 136U, 145U, 1810U,
        1030U, 0U, 1816U, 409U,
        425U, 0U, 838U, 0U};
static int netxen_nic_set_mtu_xgb(struct netxen_adapter *adapter , int new_mtu ) ;
int netxen_pcie_sem_lock(struct netxen_adapter *adapter , int sem , u32 id_reg )
{
  int done ;
  int timeout ;
  u32 tmp ;
  {
  done = 0;
  timeout = 0;
  goto ldv_50380;
  ldv_50379:
  {
  tmp = (*(adapter->crb_read))(adapter, (unsigned long )((sem + 14336) * 8) + 101711872UL);
  done = (int )tmp;
  }
  if (done == 1) {
    goto ldv_50378;
  } else {
  }
  timeout = timeout + 1;
  if (timeout > 9999) {
    return (-5);
  } else {
  }
  {
  msleep(1U);
  }
  ldv_50380: ;
  if (done == 0) {
    goto ldv_50379;
  } else {
  }
  ldv_50378: ;
  if (id_reg != 0U) {
    {
    (*(adapter->crb_write))(adapter, (ulong )id_reg, (u32 )adapter->portnum);
    }
  } else {
  }
  return (0);
}
}
void netxen_pcie_sem_unlock(struct netxen_adapter *adapter , int sem )
{
  {
  {
  (*(adapter->crb_read))(adapter, (unsigned long )(sem * 8 + 114692) + 101711872UL);
  }
  return;
}
}
static int netxen_niu_xg_init_port(struct netxen_adapter *adapter , int port )
{
  {
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536) + 107413508UL,
                            5191U);
    (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536) + 107413504UL,
                            5U);
    }
  } else {
  }
  return (0);
}
}
static int netxen_niu_disable_xg_port(struct netxen_adapter *adapter )
{
  __u32 mac_cfg ;
  u32 port ;
  int tmp ;
  {
  port = (u32 )adapter->physical_port;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    return (0);
  } else {
  }
  if (port > 1U) {
    return (-22);
  } else {
  }
  {
  mac_cfg = 0U;
  tmp = (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536U) + 107413504UL,
                                mac_cfg);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int netxen_p2_nic_set_promisc(struct netxen_adapter *adapter , u32 mode )
{
  u32 mac_cfg ;
  u32 cnt ;
  __u32 reg ;
  u32 port ;
  u16 board_type ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  u32 tmp___1 ;
  {
  cnt = 0U;
  reg = 512U;
  port = (u32 )adapter->physical_port;
  board_type = adapter->ahw.board_type;
  if (port > 1U) {
    return (-22);
  } else {
  }
  {
  mac_cfg = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536U) + 107413504UL);
  mac_cfg = mac_cfg & 4294967291U;
  (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536U) + 107413504UL,
                          mac_cfg);
  }
  if ((unsigned int )board_type - 13U <= 1U) {
    reg = (__u32 )(32 << (int )port);
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 106954924UL, reg);
  __ms = 10UL;
  }
  goto ldv_50405;
  ldv_50404:
  {
  __const_udelay(4295000UL);
  }
  ldv_50405:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_50404;
  } else {
  }
  goto ldv_50412;
  ldv_50411:
  __ms___0 = 10UL;
  goto ldv_50409;
  ldv_50408:
  {
  __const_udelay(4295000UL);
  }
  ldv_50409:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_50408;
  } else {
  }
  ldv_50412:
  {
  tmp___1 = (*(adapter->crb_read))(adapter, 106954928UL);
  }
  if (tmp___1 != 0U) {
    cnt = cnt + 1U;
    if (cnt <= 19U) {
      goto ldv_50411;
    } else {
      goto ldv_50413;
    }
  } else {
  }
  ldv_50413: ;
  if (cnt <= 19U) {
    {
    reg = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536U) + 107413508UL);
    }
    if (mode == 1U) {
      reg = reg | 8192U;
    } else {
      reg = reg & 4294959103U;
    }
    if (mode == 2U) {
      reg = reg | 4096U;
    } else {
      reg = reg & 4294963199U;
    }
    {
    (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536U) + 107413508UL,
                            reg);
    }
  } else {
  }
  {
  mac_cfg = mac_cfg | 4U;
  (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536U) + 107413504UL,
                          mac_cfg);
  }
  return (0);
}
}
static int netxen_p2_nic_set_mac_addr(struct netxen_adapter *adapter , u8 *addr )
{
  u32 mac_hi ;
  u32 mac_lo ;
  u32 reg_hi ;
  u32 reg_lo ;
  u8 phy ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  phy = adapter->physical_port;
  if ((unsigned int )phy > 1U) {
    return (-22);
  } else {
  }
  {
  mac_lo = ((unsigned int )*addr << 16) | ((unsigned int )*(addr + 1UL) << 24);
  mac_hi = (((unsigned int )*(addr + 2UL) | ((unsigned int )*(addr + 3UL) << 8)) | ((unsigned int )*(addr + 4UL) << 16)) | ((unsigned int )*(addr + 5UL) << 24);
  reg_lo = (u32 )((int )phy * 65536) + 107413520U;
  reg_hi = (u32 )((int )phy * 65536) + 107413516U;
  tmp = (*(adapter->crb_write))(adapter, (ulong )reg_lo, mac_lo);
  }
  if (tmp != 0) {
    return (-5);
  } else {
    {
    tmp___0 = (*(adapter->crb_write))(adapter, (ulong )reg_hi, mac_hi);
    }
    if (tmp___0 != 0) {
      return (-5);
    } else {
    }
  }
  {
  tmp___1 = (*(adapter->crb_write))(adapter, (ulong )reg_lo, mac_lo);
  }
  if (tmp___1 != 0) {
    return (-5);
  } else {
    {
    tmp___2 = (*(adapter->crb_write))(adapter, (ulong )reg_hi, mac_hi);
    }
    if (tmp___2 != 0) {
      return (-5);
    } else {
    }
  }
  return (0);
}
}
static int netxen_nic_enable_mcast_filter(struct netxen_adapter *adapter )
{
  u32 val ;
  u16 port ;
  u8 *addr ;
  {
  val = 0U;
  port = (u16 )adapter->physical_port;
  addr = (u8 *)(& adapter->mac_addr);
  if ((unsigned int )adapter->mc_enabled != 0U) {
    return (0);
  } else {
  }
  {
  val = (*(adapter->crb_read))(adapter, 106958848UL);
  val = val | (u32 )(1UL << ((int )port + 28));
  (*(adapter->crb_write))(adapter, 106958848UL, val);
  val = 16777215U;
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958976UL,
                          val);
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958980UL,
                          val);
  val = (u32 )((((int )*(addr + 2UL) << 16) | ((int )*(addr + 1UL) << 8)) | (int )*addr);
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958984UL,
                          val);
  val = (u32 )((((int )*(addr + 5UL) << 16) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 3UL));
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958988UL,
                          val);
  adapter->mc_enabled = 1U;
  }
  return (0);
}
}
static int netxen_nic_disable_mcast_filter(struct netxen_adapter *adapter )
{
  u32 val ;
  u16 port ;
  u8 *addr ;
  {
  val = 0U;
  port = (u16 )adapter->physical_port;
  addr = (u8 *)(& adapter->mac_addr);
  if ((unsigned int )adapter->mc_enabled == 0U) {
    return (0);
  } else {
  }
  {
  val = (*(adapter->crb_read))(adapter, 106958848UL);
  val = val & ~ ((u32 )(1UL << ((int )port + 28)));
  (*(adapter->crb_write))(adapter, 106958848UL, val);
  val = (u32 )((((int )*(addr + 2UL) << 16) | ((int )*(addr + 1UL) << 8)) | (int )*addr);
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958976UL,
                          val);
  val = (u32 )((((int )*(addr + 5UL) << 16) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 3UL));
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958980UL,
                          val);
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958984UL,
                          0U);
  (*(adapter->crb_write))(adapter, (unsigned long )((int )port * 32) + 106958988UL,
                          0U);
  adapter->mc_enabled = 0U;
  }
  return (0);
}
}
static int netxen_nic_set_mcast_addr(struct netxen_adapter *adapter , int index ,
                                     u8 *addr )
{
  u32 hi ;
  u32 lo ;
  u16 port ;
  {
  {
  hi = 0U;
  lo = 0U;
  port = (u16 )adapter->physical_port;
  lo = (u32 )((((int )*(addr + 5UL) << 16) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 3UL));
  hi = (u32 )((((int )*(addr + 2UL) << 16) | ((int )*(addr + 1UL) << 8)) | (int )*addr);
  (*(adapter->crb_write))(adapter, ((unsigned long )((int )port * 128) + (unsigned long )(index * 8)) + 106959104UL,
                          hi);
  (*(adapter->crb_write))(adapter, ((unsigned long )((int )port * 128) + (unsigned long )(index * 8)) + 106959108UL,
                          lo);
  }
  return (0);
}
}
static void netxen_p2_nic_set_multi(struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netdev_hw_addr *ha ;
  u8 null_addr[6U] ;
  int i ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  memset((void *)(& null_addr), 0, 6UL);
  }
  if ((netdev->flags & 256U) != 0U) {
    {
    (*(adapter->set_promisc))(adapter, 1U);
    netxen_nic_disable_mcast_filter(adapter);
    }
    return;
  } else {
  }
  if (netdev->mc.count == 0) {
    {
    (*(adapter->set_promisc))(adapter, 0U);
    netxen_nic_disable_mcast_filter(adapter);
    }
    return;
  } else {
  }
  {
  (*(adapter->set_promisc))(adapter, 2U);
  }
  if ((netdev->flags & 512U) != 0U || netdev->mc.count > (int )adapter->max_mc_count) {
    {
    netxen_nic_disable_mcast_filter(adapter);
    }
    return;
  } else {
  }
  {
  netxen_nic_enable_mcast_filter(adapter);
  i = 0;
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  }
  goto ldv_50455;
  ldv_50454:
  {
  tmp___0 = i;
  i = i + 1;
  netxen_nic_set_mcast_addr(adapter, tmp___0, (u8 *)(& ha->addr));
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  }
  ldv_50455: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_50454;
  } else {
  }
  goto ldv_50458;
  ldv_50457:
  {
  tmp___1 = i;
  i = i + 1;
  netxen_nic_set_mcast_addr(adapter, tmp___1, (u8 *)(& null_addr));
  }
  ldv_50458: ;
  if (i < (int )adapter->max_mc_count) {
    goto ldv_50457;
  } else {
  }
  return;
}
}
static int netxen_send_cmd_descs(struct netxen_adapter *adapter , struct cmd_desc_type0 *cmd_desc_arr ,
                                 int nr_desc )
{
  u32 i ;
  u32 producer ;
  u32 consumer ;
  struct netxen_cmd_buffer *pbuf ;
  struct cmd_desc_type0 *cmd_desc ;
  struct nx_host_tx_ring *tx_ring ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  i = 0U;
  if ((unsigned int )adapter->is_up != 777U) {
    return (-5);
  } else {
  }
  {
  tx_ring = adapter->tx_ring;
  __netif_tx_lock_bh(tx_ring->txq);
  producer = tx_ring->producer;
  consumer = tx_ring->sw_consumer;
  tmp___1 = netxen_tx_avail(tx_ring);
  }
  if ((u32 )nr_desc >= tmp___1) {
    {
    netif_tx_stop_queue(tx_ring->txq);
    __asm__ volatile ("mfence": : : "memory");
    tmp___0 = netxen_tx_avail(tx_ring);
    }
    if (tmp___0 > (u32 )nr_desc) {
      {
      tmp = netxen_tx_avail(tx_ring);
      }
      if (tmp > 10U) {
        {
        netif_tx_wake_queue(tx_ring->txq);
        }
      } else {
      }
    } else {
      {
      __netif_tx_unlock_bh(tx_ring->txq);
      }
      return (-16);
    }
  } else {
  }
  ldv_50471:
  {
  cmd_desc = cmd_desc_arr + (unsigned long )i;
  pbuf = tx_ring->cmd_buf_arr + (unsigned long )producer;
  pbuf->skb = (struct sk_buff *)0;
  pbuf->frag_count = 0U;
  memcpy((void *)tx_ring->desc_head + (unsigned long )producer, (void const *)cmd_desc_arr + (unsigned long )i,
         64UL);
  producer = (producer + 1U) & (tx_ring->num_desc - 1U);
  i = i + 1U;
  }
  if (i != (u32 )nr_desc) {
    goto ldv_50471;
  } else {
  }
  {
  tx_ring->producer = producer;
  netxen_nic_update_cmd_producer(adapter, tx_ring);
  __netif_tx_unlock_bh(tx_ring->txq);
  }
  return (0);
}
}
static int nx_p3_sre_macaddr_change(struct netxen_adapter *adapter , u8 *addr , unsigned int op )
{
  nx_nic_req_t req ;
  nx_mac_req_t *mac_req ;
  u64 word ;
  int tmp ;
  {
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 167772160ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 1ULL;
  req.req_hdr = word;
  mac_req = (nx_mac_req_t *)(& req.words);
  mac_req->op = (u8 )op;
  memcpy((void *)(& mac_req->mac_addr), (void const *)addr, 6UL);
  tmp = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  return (tmp);
}
}
static int nx_p3_nic_add_mac(struct netxen_adapter *adapter , u8 const *addr , struct list_head *del_list )
{
  struct list_head *head ;
  nx_mac_list_t *cur ;
  struct list_head const *__mptr ;
  bool tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  head = del_list->next;
  goto ldv_50491;
  ldv_50490:
  {
  __mptr = (struct list_head const *)head;
  cur = (nx_mac_list_t *)__mptr;
  tmp = ether_addr_equal(addr, (u8 const *)(& cur->mac_addr));
  }
  if ((int )tmp) {
    {
    list_move_tail(head, & adapter->mac_list);
    }
    return (0);
  } else {
  }
  head = head->next;
  ldv_50491: ;
  if ((unsigned long )head != (unsigned long )del_list) {
    goto ldv_50490;
  } else {
  }
  {
  tmp___0 = kzalloc(24UL, 32U);
  cur = (nx_mac_list_t *)tmp___0;
  }
  if ((unsigned long )cur == (unsigned long )((nx_mac_list_t *)0)) {
    return (-12);
  } else {
  }
  {
  memcpy((void *)(& cur->mac_addr), (void const *)addr, 6UL);
  list_add_tail(& cur->list, & adapter->mac_list);
  tmp___1 = nx_p3_sre_macaddr_change(adapter, (u8 *)(& cur->mac_addr), 1U);
  }
  return (tmp___1);
}
}
static void netxen_p3_nic_set_multi(struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netdev_hw_addr *ha ;
  u8 bcast_addr[6U] ;
  u32 mode ;
  struct list_head del_list ;
  struct list_head *head ;
  nx_mac_list_t *cur ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  bcast_addr[0] = 255U;
  bcast_addr[1] = 255U;
  bcast_addr[2] = 255U;
  bcast_addr[3] = 255U;
  bcast_addr[4] = 255U;
  bcast_addr[5] = 255U;
  mode = 0U;
  del_list.next = & del_list;
  del_list.prev = & del_list;
  }
  if ((unsigned int )adapter->is_up != 777U) {
    return;
  } else {
  }
  {
  list_splice_tail_init(& adapter->mac_list, & del_list);
  nx_p3_nic_add_mac(adapter, (u8 const *)(& adapter->mac_addr), & del_list);
  nx_p3_nic_add_mac(adapter, (u8 const *)(& bcast_addr), & del_list);
  }
  if ((netdev->flags & 256U) != 0U) {
    mode = 1U;
    goto send_fw_cmd;
  } else {
  }
  if ((netdev->flags & 512U) != 0U || netdev->mc.count > (int )adapter->max_mc_count) {
    mode = 2U;
    goto send_fw_cmd;
  } else {
  }
  if (netdev->mc.count != 0) {
    __mptr = (struct list_head const *)netdev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_50509;
    ldv_50508:
    {
    nx_p3_nic_add_mac(adapter, (u8 const *)(& ha->addr), & del_list);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_50509: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
      goto ldv_50508;
    } else {
    }
  } else {
  }
  send_fw_cmd:
  {
  (*(adapter->set_promisc))(adapter, mode);
  head = & del_list;
  }
  goto ldv_50514;
  ldv_50513:
  {
  __mptr___1 = (struct list_head const *)head->next;
  cur = (nx_mac_list_t *)__mptr___1;
  nx_p3_sre_macaddr_change(adapter, (u8 *)(& cur->mac_addr), 2U);
  list_del(& cur->list);
  kfree((void const *)cur);
  }
  ldv_50514:
  {
  tmp___0 = list_empty((struct list_head const *)head);
  }
  if (tmp___0 == 0) {
    goto ldv_50513;
  } else {
  }
  return;
}
}
static int netxen_p3_nic_set_promisc(struct netxen_adapter *adapter , u32 mode )
{
  nx_nic_req_t req ;
  u64 word ;
  int tmp ;
  {
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 12ULL;
  req.req_hdr = word;
  req.words[0] = (unsigned long long )mode;
  tmp = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  return (tmp);
}
}
void netxen_p3_free_mac_list(struct netxen_adapter *adapter )
{
  nx_mac_list_t *cur ;
  struct list_head *head ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  head = & adapter->mac_list;
  goto ldv_50530;
  ldv_50529:
  {
  __mptr = (struct list_head const *)head->next;
  cur = (nx_mac_list_t *)__mptr;
  nx_p3_sre_macaddr_change(adapter, (u8 *)(& cur->mac_addr), 2U);
  list_del(& cur->list);
  kfree((void const *)cur);
  }
  ldv_50530:
  {
  tmp = list_empty((struct list_head const *)head);
  }
  if (tmp == 0) {
    goto ldv_50529;
  } else {
  }
  return;
}
}
static int netxen_p3_nic_set_mac_addr(struct netxen_adapter *adapter , u8 *addr )
{
  {
  {
  netxen_p3_nic_set_multi(adapter->netdev);
  }
  return (0);
}
}
int netxen_config_intr_coalesce(struct netxen_adapter *adapter )
{
  nx_nic_req_t req ;
  u64 word[6U] ;
  int rv ;
  int i ;
  {
  {
  memset((void *)(& req), 0, 64UL);
  memset((void *)(& word), 0, 48UL);
  req.qhdr = 159383552ULL;
  word[0] = ((unsigned long long )adapter->portnum << 16) | 3ULL;
  req.req_hdr = word[0];
  memcpy((void *)(& word), (void const *)(& adapter->coal), 48UL);
  i = 0;
  }
  goto ldv_50544;
  ldv_50543:
  req.words[i] = word[i];
  i = i + 1;
  ldv_50544: ;
  if (i <= 5) {
    goto ldv_50543;
  } else {
  }
  {
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\vERROR. Could not send interrupt coalescing parameters\n");
    }
  } else {
  }
  return (rv);
}
}
int netxen_config_hw_lro(struct netxen_adapter *adapter , int enable )
{
  nx_nic_req_t req ;
  u64 word ;
  int rv ;
  int tmp ;
  {
  {
  rv = 0;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->state));
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 24ULL;
  req.req_hdr = word;
  req.words[0] = (unsigned long long )enable;
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\vERROR. Could not send configure hw lro request\n");
    }
  } else {
  }
  return (rv);
}
}
int netxen_config_bridged_mode(struct netxen_adapter *adapter , int enable )
{
  nx_nic_req_t req ;
  u64 word ;
  int rv ;
  {
  rv = 0;
  if (((adapter->flags & 16U) != 0U) == enable) {
    return (rv);
  } else {
  }
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 23ULL;
  req.req_hdr = word;
  req.words[0] = (unsigned long long )enable;
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\vERROR. Could not send configure bridge mode request\n");
    }
  } else {
  }
  adapter->flags = adapter->flags ^ 16U;
  return (rv);
}
}
int netxen_config_rss(struct netxen_adapter *adapter , int enable )
{
  nx_nic_req_t req ;
  u64 word ;
  int i ;
  int rv ;
  u64 key[5U] ;
  {
  {
  key[0] = 0xbeac01fa6a42b73bULL;
  key[1] = 0x8030f20c77cb2da3ULL;
  key[2] = 0xae7b30b4d0ca2bcbULL;
  key[3] = 4873897208919303485ULL;
  key[4] = 2691761430505084634ULL;
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 1ULL;
  req.req_hdr = word;
  word = (((unsigned long long )enable & 1ULL) << 8) | 1970324836974832ULL;
  req.words[0] = word;
  i = 0;
  }
  goto ldv_50572;
  ldv_50571:
  req.words[i + 1] = key[i];
  i = i + 1;
  ldv_50572: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_50571;
  } else {
  }
  {
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\v%s: could not configure RSS\n", (char *)(& (adapter->netdev)->name));
    }
  } else {
  }
  return (rv);
}
}
int netxen_config_ipaddr(struct netxen_adapter *adapter , __be32 ip , int cmd )
{
  nx_nic_req_t req ;
  u64 word ;
  int rv ;
  {
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 18ULL;
  req.req_hdr = word;
  req.words[0] = (unsigned long long )cmd;
  memcpy((void *)(& req.words) + 1U, (void const *)(& ip), 4UL);
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\v%s: could not notify %s IP 0x%x reuqest\n", (char *)(& (adapter->netdev)->name),
           cmd == 2 ? (char *)"Add" : (char *)"Remove", ip);
    }
  } else {
  }
  return (rv);
}
}
int netxen_linkevent_request(struct netxen_adapter *adapter , int enable )
{
  nx_nic_req_t req ;
  u64 word ;
  int rv ;
  {
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 21ULL;
  req.req_hdr = word;
  req.words[0] = (unsigned long long )(enable | (enable << 8));
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\v%s: could not configure link notification\n", (char *)(& (adapter->netdev)->name));
    }
  } else {
  }
  return (rv);
}
}
int netxen_send_lro_cleanup(struct netxen_adapter *adapter )
{
  nx_nic_req_t req ;
  u64 word ;
  int rv ;
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->state));
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  memset((void *)(& req), 0, 64UL);
  req.qhdr = 159383552ULL;
  word = ((unsigned long long )adapter->portnum << 16) | 288230376151711751ULL;
  req.req_hdr = word;
  rv = netxen_send_cmd_descs(adapter, (struct cmd_desc_type0 *)(& req), 1);
  }
  if (rv != 0) {
    {
    printk("\v%s: could not cleanup lro flows\n", (char *)(& (adapter->netdev)->name));
    }
  } else {
  }
  return (rv);
}
}
int netxen_nic_change_mtu(struct net_device *netdev , int mtu )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int max_mtu ;
  int rc ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  rc = 0;
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    max_mtu = 9600;
  } else {
    max_mtu = 8000;
  }
  if (mtu > max_mtu) {
    {
    printk("\v%s: mtu > %d bytes unsupported\n", (char *)(& netdev->name), max_mtu);
    }
    return (-22);
  } else {
  }
  if ((unsigned long )adapter->set_mtu != (unsigned long )((int (*)(struct netxen_adapter * ,
                                                                    int ))0)) {
    {
    rc = (*(adapter->set_mtu))(adapter, mtu);
    }
  } else {
  }
  if (rc == 0) {
    netdev->mtu = (unsigned int )mtu;
  } else {
  }
  return (rc);
}
}
static int netxen_get_flash_block(struct netxen_adapter *adapter , int base , int size ,
                                  __le32 *buf )
{
  int i ;
  int v ;
  int addr ;
  __le32 *ptr32 ;
  int tmp ;
  __le32 local ;
  int tmp___0 ;
  {
  addr = base;
  ptr32 = buf;
  i = 0;
  goto ldv_50613;
  ldv_50612:
  {
  tmp = netxen_rom_fast_read(adapter, addr, & v);
  }
  if (tmp == -1) {
    return (-1);
  } else {
  }
  *ptr32 = (unsigned int )v;
  ptr32 = ptr32 + 1;
  addr = (int )((unsigned int )addr + 4U);
  i = i + 1;
  ldv_50613: ;
  if ((unsigned long )i < (unsigned long )size / 4UL) {
    goto ldv_50612;
  } else {
  }
  if ((unsigned long )((char *)buf + (unsigned long )size) > (unsigned long )((char *)ptr32)) {
    {
    tmp___0 = netxen_rom_fast_read(adapter, addr, & v);
    }
    if (tmp___0 == -1) {
      return (-1);
    } else {
    }
    {
    local = (unsigned int )v;
    memcpy((void *)ptr32, (void const *)(& local), (size_t )((long )((char *)buf + (unsigned long )size) - (long )ptr32));
    }
  } else {
  }
  return (0);
}
}
int netxen_get_flash_mac_addr(struct netxen_adapter *adapter , u64 *mac )
{
  __le32 *pmac ;
  u32 offset ;
  int tmp ;
  int tmp___0 ;
  {
  {
  pmac = (__le32 *)mac;
  offset = (u32 )((unsigned long )adapter->portnum + 512131UL) * 8U;
  tmp = netxen_get_flash_block(adapter, (int )offset, 8, pmac);
  }
  if (tmp == -1) {
    return (-1);
  } else {
  }
  if (*mac == 0xffffffffffffffffULL) {
    {
    offset = (u32 )((unsigned long )adapter->portnum + 512000UL) * 8U;
    tmp___0 = netxen_get_flash_block(adapter, (int )offset, 8, pmac);
    }
    if (tmp___0 == -1) {
      return (-1);
    } else {
    }
    if (*mac == 0xffffffffffffffffULL) {
      return (-1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int netxen_p3_get_mac_addr(struct netxen_adapter *adapter , u64 *mac )
{
  uint32_t crbaddr ;
  uint32_t mac_hi ;
  uint32_t mac_lo ;
  int pci_func ;
  {
  {
  pci_func = (int )adapter->ahw.pci_func;
  crbaddr = (((uint32_t )((pci_func / 2) * 3) + ((uint32_t )pci_func & 1U)) + 34080880U) * 4U;
  mac_lo = (*(adapter->crb_read))(adapter, (ulong )crbaddr);
  mac_hi = (*(adapter->crb_read))(adapter, (ulong )(crbaddr + 4U));
  }
  if (pci_func & 1) {
    *mac = (unsigned long long )(mac_lo >> 16) | ((unsigned long long )mac_hi << 16);
  } else {
    *mac = (unsigned long long )mac_lo | ((unsigned long long )mac_hi << 32);
  }
  return (0);
}
}
static void netxen_nic_pci_set_crbwindow_128M(struct netxen_adapter *adapter , u32 window )
{
  void *offset ;
  int count ;
  u8 func ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  count = 10;
  func = adapter->ahw.pci_func;
  if (adapter->ahw.crb_win == window) {
    return;
  } else {
  }
  {
  offset = adapter->ahw.pci_base1 + ((unsigned long )((unsigned int )func <= 3U ? (int )func * 32 + 66064 : ((int )func + -4) * 16 + 66220) + 1048576UL);
  writel(window, (void volatile *)offset);
  }
  ldv_50639:
  {
  tmp = readl((void const volatile *)offset);
  }
  if (window == tmp) {
    goto ldv_50637;
  } else {
  }
  {
  tmp___0 = __printk_ratelimit("netxen_nic_pci_set_crbwindow_128M");
  }
  if (tmp___0 != 0) {
    {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "failed to set CRB window to %d\n",
             window == 33554432U);
    }
  } else {
  }
  {
  __const_udelay(4295UL);
  count = count - 1;
  }
  if (count > 0) {
    goto ldv_50639;
  } else {
  }
  ldv_50637: ;
  if (count > 0) {
    adapter->ahw.crb_win = window;
  } else {
  }
  return;
}
}
static int netxen_nic_pci_get_crb_addr_2M(struct netxen_adapter *adapter , ulong off ,
                                          void **addr )
{
  crb_128M_2M_sub_block_map_t *m ;
  {
  if (off - 100663296UL > 67108863UL) {
    return (-22);
  } else {
  }
  off = off - 100663296UL;
  m = (crb_128M_2M_sub_block_map_t *)(& crb_128M_2M_map[(off >> 20) & 63UL].sub_block) + ((off >> 16) & 15UL);
  if ((m->valid != 0U && (ulong )m->start_128M <= off) && (ulong )m->end_128M > off) {
    *addr = adapter->ahw.pci_base0 + ((unsigned long )m->start_2M + (off - (ulong )m->start_128M));
    return (0);
  } else {
  }
  *addr = adapter->ahw.pci_base0 + ((off & 65535UL) + 1966080UL);
  return (1);
}
}
static void netxen_nic_pci_set_crbwindow_2M(struct netxen_adapter *adapter , ulong off )
{
  u32 window ;
  void *addr ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  {
  addr = adapter->ahw.pci_base0 + 1245280UL;
  off = off - 100663296UL;
  window = (crb_hub_agt[(off >> 20) & 63UL] << 20) | ((u32 )off & 983040U);
  writel(window, (void volatile *)addr);
  tmp___0 = readl((void const volatile *)addr);
  }
  if (tmp___0 != window) {
    {
    tmp = __printk_ratelimit("netxen_nic_pci_set_crbwindow_2M");
    }
    if (tmp != 0) {
      {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "failed to set CRB window to %d off 0x%lx\n",
               window, off);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void *netxen_nic_map_indirect_address_128M(struct netxen_adapter *adapter ,
                                                  ulong win_off , void **mem_ptr )
{
  ulong off ;
  void *addr ;
  resource_size_t mem_base ;
  {
  off = win_off;
  if (win_off - 134217729UL <= 33554430UL) {
    off = win_off - 33554432UL;
  } else {
  }
  {
  addr = pci_base_offset(adapter, off);
  }
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    return (addr);
  } else {
  }
  if (adapter->ahw.pci_len0 == 0UL) {
    off = off - 100663296UL;
  } else {
  }
  {
  mem_base = (adapter->pdev)->resource[0].start;
  *mem_ptr = ioremap(mem_base + ((unsigned long long )off & 0xfffffffffffff000ULL),
                     4096UL);
  }
  if ((unsigned long )*mem_ptr != (unsigned long )((void *)0)) {
    addr = *mem_ptr + (off & 4095UL);
  } else {
  }
  return (addr);
}
}
static int netxen_nic_hw_write_wx_128M(struct netxen_adapter *adapter , ulong off ,
                                       u32 data )
{
  unsigned long flags ;
  void *addr ;
  void *mem_ptr ;
  {
  {
  mem_ptr = (void *)0;
  addr = netxen_nic_map_indirect_address_128M(adapter, off, & mem_ptr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    return (-5);
  } else {
  }
  if (off - 134217729UL <= 33554430UL) {
    {
    netxen_nic_io_write_128M(adapter, addr, data);
    }
  } else {
    {
    flags = _raw_write_lock_irqsave(& adapter->ahw.crb_lock);
    netxen_nic_pci_set_crbwindow_128M(adapter, 0U);
    writel(data, (void volatile *)addr);
    netxen_nic_pci_set_crbwindow_128M(adapter, 33554432U);
    _raw_write_unlock_irqrestore(& adapter->ahw.crb_lock, flags);
    }
  }
  if ((unsigned long )mem_ptr != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)mem_ptr);
    }
  } else {
  }
  return (0);
}
}
static u32 netxen_nic_hw_read_wx_128M(struct netxen_adapter *adapter , ulong off )
{
  unsigned long flags ;
  void *addr ;
  void *mem_ptr ;
  u32 data ;
  {
  {
  mem_ptr = (void *)0;
  addr = netxen_nic_map_indirect_address_128M(adapter, off, & mem_ptr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    return (4294967291U);
  } else {
  }
  if (off - 134217729UL <= 33554430UL) {
    {
    data = netxen_nic_io_read_128M(adapter, addr);
    }
  } else {
    {
    flags = _raw_write_lock_irqsave(& adapter->ahw.crb_lock);
    netxen_nic_pci_set_crbwindow_128M(adapter, 0U);
    data = readl((void const volatile *)addr);
    netxen_nic_pci_set_crbwindow_128M(adapter, 33554432U);
    _raw_write_unlock_irqrestore(& adapter->ahw.crb_lock, flags);
    }
  }
  if ((unsigned long )mem_ptr != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)mem_ptr);
    }
  } else {
  }
  return (data);
}
}
static int netxen_nic_hw_write_wx_2M(struct netxen_adapter *adapter , ulong off ,
                                     u32 data )
{
  unsigned long flags ;
  int rv ;
  void *addr ;
  {
  {
  addr = (void *)0;
  rv = netxen_nic_pci_get_crb_addr_2M(adapter, off, & addr);
  }
  if (rv == 0) {
    {
    writel(data, (void volatile *)addr);
    }
    return (0);
  } else {
  }
  if (rv > 0) {
    {
    flags = _raw_write_lock_irqsave(& adapter->ahw.crb_lock);
    netxen_pcie_sem_lock(adapter, 7, 136323364U);
    netxen_nic_pci_set_crbwindow_2M(adapter, off);
    writel(data, (void volatile *)addr);
    netxen_pcie_sem_unlock(adapter, 7);
    _raw_write_unlock_irqrestore(& adapter->ahw.crb_lock, flags);
    }
    return (0);
  } else {
  }
  {
  dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: invalid offset: 0x%016lx\n",
          "netxen_nic_hw_write_wx_2M", off);
  dump_stack();
  }
  return (-5);
}
}
static u32 netxen_nic_hw_read_wx_2M(struct netxen_adapter *adapter , ulong off )
{
  unsigned long flags ;
  int rv ;
  u32 data ;
  void *addr ;
  unsigned int tmp ;
  {
  {
  addr = (void *)0;
  rv = netxen_nic_pci_get_crb_addr_2M(adapter, off, & addr);
  }
  if (rv == 0) {
    {
    tmp = readl((void const volatile *)addr);
    }
    return (tmp);
  } else {
  }
  if (rv > 0) {
    {
    flags = _raw_write_lock_irqsave(& adapter->ahw.crb_lock);
    netxen_pcie_sem_lock(adapter, 7, 136323364U);
    netxen_nic_pci_set_crbwindow_2M(adapter, off);
    data = readl((void const volatile *)addr);
    netxen_pcie_sem_unlock(adapter, 7);
    _raw_write_unlock_irqrestore(& adapter->ahw.crb_lock, flags);
    }
    return (data);
  } else {
  }
  {
  dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: invalid offset: 0x%016lx\n",
          "netxen_nic_hw_read_wx_2M", off);
  dump_stack();
  }
  return (4294967295U);
}
}
static void netxen_nic_io_write_128M(struct netxen_adapter *adapter , void *addr ,
                                     u32 data )
{
  {
  {
  _raw_read_lock(& adapter->ahw.crb_lock);
  writel(data, (void volatile *)addr);
  _raw_read_unlock(& adapter->ahw.crb_lock);
  }
  return;
}
}
static u32 netxen_nic_io_read_128M(struct netxen_adapter *adapter , void *addr )
{
  u32 val ;
  {
  {
  _raw_read_lock(& adapter->ahw.crb_lock);
  val = readl((void const volatile *)addr);
  _raw_read_unlock(& adapter->ahw.crb_lock);
  }
  return (val);
}
}
static void netxen_nic_io_write_2M(struct netxen_adapter *adapter , void *addr , u32 data )
{
  {
  {
  writel(data, (void volatile *)addr);
  }
  return;
}
}
static u32 netxen_nic_io_read_2M(struct netxen_adapter *adapter , void *addr )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)addr);
  }
  return (tmp);
}
}
void *netxen_get_ioaddr(struct netxen_adapter *adapter , u32 offset )
{
  void *addr ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  addr = (void *)0;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    if (offset - 100663297U <= 33554430U) {
      addr = adapter->ahw.pci_base1 + ((unsigned long )offset + 0xfffffffffa000000UL);
    } else {
      {
      addr = pci_base_offset(adapter, (unsigned long )offset - 33554432UL);
      }
    }
  } else {
    {
    tmp = netxen_nic_pci_get_crb_addr_2M(adapter, (ulong )offset, & addr);
    __ret_warn_on = tmp != 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/qlogic/netxen/netxen_nic_hw.c", 1367);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (addr);
}
}
static int netxen_nic_pci_set_window_128M(struct netxen_adapter *adapter , u64 addr ,
                                          u32 *start )
{
  {
  if (addr - 8589934592ULL <= 1048574ULL) {
    *start = (u32 )addr - 4211081216U;
    return (0);
  } else
  if (addr - 8594128896ULL <= 1048574ULL) {
    *start = (u32 )addr - 4214226944U;
    return (0);
  } else {
  }
  return (-5);
}
}
static int netxen_nic_pci_set_window_2M(struct netxen_adapter *adapter , u64 addr ,
                                        u32 *start )
{
  u32 window ;
  {
  {
  window = (u32 )((addr & 33488896ULL) >> 1) | ((u32 )(addr >> 25) & 1023U);
  writel(window, (void volatile *)adapter->ahw.ocm_win_crb);
  readl((void const volatile *)adapter->ahw.ocm_win_crb);
  adapter->ahw.ocm_win = window;
  *start = ((u32 )addr & 262143U) + 786432U;
  }
  return (0);
}
}
static int netxen_nic_pci_mem_access_direct(struct netxen_adapter *adapter , u64 off ,
                                            u64 *data , int op )
{
  void *addr ;
  void *mem_ptr ;
  resource_size_t mem_base ;
  int ret ;
  u32 start ;
  unsigned long tmp ;
  {
  {
  mem_ptr = (void *)0;
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  ret = (*(adapter->pci_set_window))(adapter, off, & start);
  }
  if (ret != 0) {
    goto unlock;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    addr = adapter->ahw.pci_base0 + (unsigned long )start;
  } else {
    {
    addr = pci_base_offset(adapter, (unsigned long )start);
    }
    if ((unsigned long )addr != (unsigned long )((void *)0)) {
      goto noremap;
    } else {
    }
    {
    mem_base = (adapter->pdev)->resource[0].start + ((unsigned long long )start & 0xfffffffffffff000ULL);
    mem_ptr = ioremap(mem_base, 4096UL);
    }
    if ((unsigned long )mem_ptr == (unsigned long )((void *)0)) {
      ret = -5;
      goto unlock;
    } else {
    }
    addr = mem_ptr + ((unsigned long )start & 4095UL);
  }
  noremap: ;
  if (op == 0) {
    {
    tmp = readq((void const volatile *)addr);
    *data = (u64 )tmp;
    }
  } else {
    {
    writeq((unsigned long )*data, (void volatile *)addr);
    }
  }
  unlock:
  {
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  if ((unsigned long )mem_ptr != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)mem_ptr);
    }
  } else {
  }
  return (ret);
}
}
void netxen_pci_camqm_read_2M(struct netxen_adapter *adapter , u64 off , u64 *data )
{
  void *addr ;
  unsigned long tmp ;
  {
  {
  addr = adapter->ahw.pci_base0 + ((unsigned long )off + 0xfffffffffb8ff800UL);
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  tmp = readq((void const volatile *)addr);
  *data = (u64 )tmp;
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return;
}
}
void netxen_pci_camqm_write_2M(struct netxen_adapter *adapter , u64 off , u64 data )
{
  void *addr ;
  {
  {
  addr = adapter->ahw.pci_base0 + ((unsigned long )off + 0xfffffffffb8ff800UL);
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  writeq((unsigned long )data, (void volatile *)addr);
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return;
}
}
static int netxen_nic_pci_mem_write_128M(struct netxen_adapter *adapter , u64 off ,
                                         u64 data )
{
  int j ;
  int ret ;
  u32 temp ;
  u32 off_lo ;
  u32 off_hi ;
  u32 addr_hi ;
  u32 data_hi ;
  u32 data_lo ;
  void *mem_crb ;
  int tmp ;
  int tmp___0 ;
  {
  if ((off & 7ULL) != 0ULL) {
    return (-5);
  } else {
  }
  if (off - 12884901888ULL <= 4194302ULL) {
    {
    mem_crb = pci_base_offset(adapter, 131072096UL);
    addr_hi = 24U;
    data_lo = 8U;
    data_hi = 12U;
    off_lo = (u32 )off & 4194296U;
    off_hi = (u32 )(off >> 22);
    }
    goto correct;
  } else {
  }
  if (off <= 268435454ULL) {
    {
    mem_crb = pci_base_offset(adapter, 102760592UL);
    addr_hi = 8U;
    data_lo = 16U;
    data_hi = 20U;
    off_lo = (u32 )off & 4294967288U;
    off_hi = 0U;
    }
    goto correct;
  } else {
  }
  if (off - 8589934592ULL <= 1048574ULL || off - 8594128896ULL <= 1048574ULL) {
    if (adapter->ahw.pci_len0 != 0UL) {
      {
      tmp = netxen_nic_pci_mem_access_direct(adapter, off, & data, 1);
      }
      return (tmp);
    } else {
    }
  } else {
  }
  return (-5);
  correct:
  {
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  netxen_nic_pci_set_crbwindow_128M(adapter, 0U);
  writel(off_lo, (void volatile *)mem_crb + 4U);
  writel(off_hi, (void volatile *)mem_crb + (unsigned long )addr_hi);
  writel((unsigned int )data, (void volatile *)mem_crb + (unsigned long )data_lo);
  writel((unsigned int )(data >> 32), (void volatile *)mem_crb + (unsigned long )data_hi);
  writel(6U, (void volatile *)mem_crb);
  writel(7U, (void volatile *)mem_crb);
  j = 0;
  }
  goto ldv_50798;
  ldv_50797:
  {
  temp = readl((void const volatile *)mem_crb);
  }
  if ((temp & 8U) == 0U) {
    goto ldv_50796;
  } else {
  }
  j = j + 1;
  ldv_50798: ;
  if (j <= 999) {
    goto ldv_50797;
  } else {
  }
  ldv_50796: ;
  if (j > 999) {
    {
    tmp___0 = __printk_ratelimit("netxen_nic_pci_mem_write_128M");
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "failed to write through agent\n");
      }
    } else {
    }
    ret = -5;
  } else {
    ret = 0;
  }
  {
  netxen_nic_pci_set_crbwindow_128M(adapter, 33554432U);
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return (ret);
}
}
static int netxen_nic_pci_mem_read_128M(struct netxen_adapter *adapter , u64 off ,
                                        u64 *data )
{
  int j ;
  int ret ;
  u32 temp ;
  u32 off_lo ;
  u32 off_hi ;
  u32 addr_hi ;
  u32 data_hi ;
  u32 data_lo ;
  u64 val ;
  void *mem_crb ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((off & 7ULL) != 0ULL) {
    return (-5);
  } else {
  }
  if (off - 12884901888ULL <= 4194302ULL) {
    {
    mem_crb = pci_base_offset(adapter, 131072096UL);
    addr_hi = 24U;
    data_lo = 16U;
    data_hi = 20U;
    off_lo = (u32 )off & 4194296U;
    off_hi = (u32 )(off >> 22);
    }
    goto correct;
  } else {
  }
  if (off <= 268435454ULL) {
    {
    mem_crb = pci_base_offset(adapter, 102760592UL);
    addr_hi = 8U;
    data_lo = 24U;
    data_hi = 28U;
    off_lo = (u32 )off & 4294967288U;
    off_hi = 0U;
    }
    goto correct;
  } else {
  }
  if (off - 8589934592ULL <= 1048574ULL || off - 8594128896ULL <= 1048574ULL) {
    if (adapter->ahw.pci_len0 != 0UL) {
      {
      tmp = netxen_nic_pci_mem_access_direct(adapter, off, data, 0);
      }
      return (tmp);
    } else {
    }
  } else {
  }
  return (-5);
  correct:
  {
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  netxen_nic_pci_set_crbwindow_128M(adapter, 0U);
  writel(off_lo, (void volatile *)mem_crb + 4U);
  writel(off_hi, (void volatile *)mem_crb + (unsigned long )addr_hi);
  writel(2U, (void volatile *)mem_crb);
  writel(3U, (void volatile *)mem_crb);
  j = 0;
  }
  goto ldv_50818;
  ldv_50817:
  {
  temp = readl((void const volatile *)mem_crb);
  }
  if ((temp & 8U) == 0U) {
    goto ldv_50816;
  } else {
  }
  j = j + 1;
  ldv_50818: ;
  if (j <= 999) {
    goto ldv_50817;
  } else {
  }
  ldv_50816: ;
  if (j > 999) {
    {
    tmp___0 = __printk_ratelimit("netxen_nic_pci_mem_read_128M");
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "failed to read through agent\n");
      }
    } else {
    }
    ret = -5;
  } else {
    {
    temp = readl((void const volatile *)mem_crb + (unsigned long )data_hi);
    val = (unsigned long long )temp << 32;
    tmp___1 = readl((void const volatile *)mem_crb + (unsigned long )data_lo);
    val = val | (u64 )tmp___1;
    *data = val;
    ret = 0;
    }
  }
  {
  netxen_nic_pci_set_crbwindow_128M(adapter, 33554432U);
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return (ret);
}
}
static int netxen_nic_pci_mem_write_2M(struct netxen_adapter *adapter , u64 off ,
                                       u64 data )
{
  int j ;
  int ret ;
  u32 temp ;
  u32 off8 ;
  void *mem_crb ;
  int tmp ;
  int tmp___0 ;
  {
  if ((off & 7ULL) != 0ULL) {
    return (-5);
  } else {
  }
  if (off - 12884901888ULL <= 67108862ULL) {
    {
    mem_crb = netxen_get_ioaddr(adapter, 131072144U);
    }
    goto correct;
  } else {
  }
  if (off <= 268435454ULL) {
    {
    mem_crb = netxen_get_ioaddr(adapter, 102760592U);
    }
    goto correct;
  } else {
  }
  if (off - 8589934592ULL <= 1048574ULL) {
    {
    tmp = netxen_nic_pci_mem_access_direct(adapter, off, & data, 1);
    }
    return (tmp);
  } else {
  }
  return (-5);
  correct:
  {
  off8 = (u32 )off & 4294967288U;
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  writel(off8, (void volatile *)mem_crb + 4U);
  writel(0U, (void volatile *)mem_crb + 8U);
  writel((unsigned int )data, (void volatile *)mem_crb + 16U);
  writel((unsigned int )(data >> 32), (void volatile *)mem_crb + 20U);
  writel(6U, (void volatile *)mem_crb);
  writel(7U, (void volatile *)mem_crb);
  j = 0;
  }
  goto ldv_50833;
  ldv_50832:
  {
  temp = readl((void const volatile *)mem_crb);
  }
  if ((temp & 8U) == 0U) {
    goto ldv_50831;
  } else {
  }
  j = j + 1;
  ldv_50833: ;
  if (j <= 999) {
    goto ldv_50832;
  } else {
  }
  ldv_50831: ;
  if (j > 999) {
    {
    tmp___0 = __printk_ratelimit("netxen_nic_pci_mem_write_2M");
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "failed to write through agent\n");
      }
    } else {
    }
    ret = -5;
  } else {
    ret = 0;
  }
  {
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return (ret);
}
}
static int netxen_nic_pci_mem_read_2M(struct netxen_adapter *adapter , u64 off , u64 *data )
{
  int j ;
  int ret ;
  u32 temp ;
  u32 off8 ;
  u64 val ;
  void *mem_crb ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  if ((off & 7ULL) != 0ULL) {
    return (-5);
  } else {
  }
  if (off - 12884901888ULL <= 67108862ULL) {
    {
    mem_crb = netxen_get_ioaddr(adapter, 131072144U);
    }
    goto correct;
  } else {
  }
  if (off <= 268435454ULL) {
    {
    mem_crb = netxen_get_ioaddr(adapter, 102760592U);
    }
    goto correct;
  } else {
  }
  if (off - 8589934592ULL <= 1048574ULL) {
    {
    tmp = netxen_nic_pci_mem_access_direct(adapter, off, data, 0);
    }
    return (tmp);
  } else {
  }
  return (-5);
  correct:
  {
  off8 = (u32 )off & 4294967288U;
  ldv_spin_lock_77(& adapter->ahw.mem_lock);
  writel(off8, (void volatile *)mem_crb + 4U);
  writel(0U, (void volatile *)mem_crb + 8U);
  writel(2U, (void volatile *)mem_crb);
  writel(3U, (void volatile *)mem_crb);
  j = 0;
  }
  goto ldv_50849;
  ldv_50848:
  {
  temp = readl((void const volatile *)mem_crb);
  }
  if ((temp & 8U) == 0U) {
    goto ldv_50847;
  } else {
  }
  j = j + 1;
  ldv_50849: ;
  if (j <= 999) {
    goto ldv_50848;
  } else {
  }
  ldv_50847: ;
  if (j > 999) {
    {
    tmp___0 = __printk_ratelimit("netxen_nic_pci_mem_read_2M");
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "failed to read through agent\n");
      }
    } else {
    }
    ret = -5;
  } else {
    {
    tmp___1 = readl((void const volatile *)mem_crb + 28U);
    val = (unsigned long long )tmp___1 << 32;
    tmp___2 = readl((void const volatile *)mem_crb + 24U);
    val = val | (u64 )tmp___2;
    *data = val;
    ret = 0;
    }
  }
  {
  ldv_spin_unlock_78(& adapter->ahw.mem_lock);
  }
  return (ret);
}
}
void netxen_setup_hwops(struct netxen_adapter *adapter )
{
  {
  adapter->init_port = & netxen_niu_xg_init_port;
  adapter->stop_port = & netxen_niu_disable_xg_port;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    adapter->crb_read = & netxen_nic_hw_read_wx_128M;
    adapter->crb_write = & netxen_nic_hw_write_wx_128M;
    adapter->pci_set_window = & netxen_nic_pci_set_window_128M;
    adapter->pci_mem_read = & netxen_nic_pci_mem_read_128M;
    adapter->pci_mem_write = & netxen_nic_pci_mem_write_128M;
    adapter->io_read = & netxen_nic_io_read_128M;
    adapter->io_write = & netxen_nic_io_write_128M;
    adapter->macaddr_set = & netxen_p2_nic_set_mac_addr;
    adapter->set_multi = & netxen_p2_nic_set_multi;
    adapter->set_mtu = & netxen_nic_set_mtu_xgb;
    adapter->set_promisc = & netxen_p2_nic_set_promisc;
  } else {
    adapter->crb_read = & netxen_nic_hw_read_wx_2M;
    adapter->crb_write = & netxen_nic_hw_write_wx_2M;
    adapter->pci_set_window = & netxen_nic_pci_set_window_2M;
    adapter->pci_mem_read = & netxen_nic_pci_mem_read_2M;
    adapter->pci_mem_write = & netxen_nic_pci_mem_write_2M;
    adapter->io_read = & netxen_nic_io_read_2M;
    adapter->io_write = & netxen_nic_io_write_2M;
    adapter->set_mtu = & nx_fw_cmd_set_mtu;
    adapter->set_promisc = & netxen_p3_nic_set_promisc;
    adapter->macaddr_set = & netxen_p3_nic_set_mac_addr;
    adapter->set_multi = & netxen_p3_nic_set_multi;
    adapter->phy_read = & nx_fw_cmd_query_phy;
    adapter->phy_write = & nx_fw_cmd_set_phy;
  }
  return;
}
}
int netxen_nic_get_board_info(struct netxen_adapter *adapter )
{
  int offset ;
  int board_type ;
  int magic ;
  struct pci_dev *pdev ;
  int tmp ;
  int tmp___0 ;
  u32 gpio ;
  u32 tmp___1 ;
  {
  {
  pdev = adapter->pdev;
  offset = 16680;
  tmp = netxen_rom_fast_read(adapter, offset, & magic);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  if (magic != 305419896) {
    {
    dev_err((struct device const *)(& pdev->dev), "invalid board config, magic=%08x\n",
            magic);
    }
    return (-5);
  } else {
  }
  {
  offset = 16392;
  tmp___0 = netxen_rom_fast_read(adapter, offset, & board_type);
  }
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  if (board_type == 41) {
    {
    tmp___1 = (*(adapter->crb_read))(adapter, 154140684UL);
    gpio = tmp___1;
    }
    if ((gpio & 32768U) == 0U) {
      board_type = 128;
    } else {
    }
  } else {
  }
  adapter->ahw.board_type = (u16 )board_type;
  {
  if (board_type == 10) {
    goto case_10;
  } else {
  }
  if (board_type == 11) {
    goto case_11;
  } else {
  }
  if (board_type == 13) {
    goto case_13;
  } else {
  }
  if (board_type == 14) {
    goto case_14;
  } else {
  }
  if (board_type == 15) {
    goto case_15;
  } else {
  }
  if (board_type == 34) {
    goto case_34;
  } else {
  }
  if (board_type == 40) {
    goto case_40;
  } else {
  }
  if (board_type == 49) {
    goto case_49;
  } else {
  }
  if (board_type == 35) {
    goto case_35;
  } else {
  }
  if (board_type == 37) {
    goto case_37;
  } else {
  }
  if (board_type == 38) {
    goto case_38;
  } else {
  }
  if (board_type == 42) {
    goto case_42;
  } else {
  }
  if (board_type == 43) {
    goto case_43;
  } else {
  }
  if (board_type == 50) {
    goto case_50;
  } else {
  }
  if (board_type == 39) {
    goto case_39;
  } else {
  }
  if (board_type == 0) {
    goto case_0;
  } else {
  }
  if (board_type == 1) {
    goto case_1;
  } else {
  }
  if (board_type == 2) {
    goto case_2;
  } else {
  }
  if (board_type == 3) {
    goto case_3;
  } else {
  }
  if (board_type == 33) {
    goto case_33;
  } else {
  }
  if (board_type == 36) {
    goto case_36;
  } else {
  }
  if (board_type == 41) {
    goto case_41;
  } else {
  }
  if (board_type == 128) {
    goto case_128;
  } else {
  }
  goto switch_default;
  case_10:
  adapter->ahw.port_type = 1U;
  goto ldv_50863;
  case_11: ;
  case_13: ;
  case_14: ;
  case_15: ;
  case_34: ;
  case_40: ;
  case_49: ;
  case_35: ;
  case_37: ;
  case_38: ;
  case_42: ;
  case_43: ;
  case_50: ;
  case_39:
  adapter->ahw.port_type = 2U;
  goto ldv_50863;
  case_0: ;
  case_1: ;
  case_2: ;
  case_3: ;
  case_33: ;
  case_36: ;
  case_41:
  adapter->ahw.port_type = 1U;
  goto ldv_50863;
  case_128:
  adapter->ahw.port_type = (unsigned int )adapter->portnum <= 1U ? 2U : 1U;
  goto ldv_50863;
  switch_default:
  {
  dev_err((struct device const *)(& pdev->dev), "unknown board type %x\n", board_type);
  adapter->ahw.port_type = 2U;
  }
  goto ldv_50863;
  switch_break: ;
  }
  ldv_50863: ;
  return (0);
}
}
static int netxen_nic_set_mtu_xgb(struct netxen_adapter *adapter , int new_mtu )
{
  {
  new_mtu = new_mtu + 100;
  if ((unsigned int )adapter->physical_port == 0U) {
    {
    (*(adapter->crb_write))(adapter, 107413532UL, (u32 )new_mtu);
    }
  } else {
    {
    (*(adapter->crb_write))(adapter, 107479068UL, (u32 )new_mtu);
    }
  }
  return (0);
}
}
void netxen_nic_set_link_parameters(struct netxen_adapter *adapter )
{
  __u32 status ;
  __u32 autoneg ;
  __u32 port_mode___0 ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netif_carrier_ok((struct net_device const *)adapter->netdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    adapter->link_speed = 0U;
    adapter->link_duplex = 65535U;
    adapter->link_autoneg = 1U;
    return;
  } else {
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    {
    port_mode___0 = (*(adapter->crb_read))(adapter, 136323108UL);
    }
    if (port_mode___0 == 3U) {
      adapter->link_speed = 1000U;
      adapter->link_duplex = 1U;
      adapter->link_autoneg = 0U;
      return;
    } else {
    }
    if ((unsigned long )adapter->phy_read != (unsigned long )((int (*)(struct netxen_adapter * ,
                                                                       u32 , u32 * ))0)) {
      {
      tmp___2 = (*(adapter->phy_read))(adapter, 17U, & status);
      }
      if (tmp___2 == 0) {
        if ((status & 1024U) != 0U) {
          {
          if (((status >> 14) & 3U) == 0U) {
            goto case_0;
          } else {
          }
          if (((status >> 14) & 3U) == 1U) {
            goto case_1;
          } else {
          }
          if (((status >> 14) & 3U) == 2U) {
            goto case_2;
          } else {
          }
          goto switch_default;
          case_0:
          adapter->link_speed = 10U;
          goto ldv_50898;
          case_1:
          adapter->link_speed = 100U;
          goto ldv_50898;
          case_2:
          adapter->link_speed = 1000U;
          goto ldv_50898;
          switch_default:
          adapter->link_speed = 0U;
          goto ldv_50898;
          switch_break: ;
          }
          ldv_50898: ;
          {
          if (((status >> 13) & 1U) == 0U) {
            goto case_0___0;
          } else {
          }
          if (((status >> 13) & 1U) == 1U) {
            goto case_1___0;
          } else {
          }
          goto switch_default___0;
          case_0___0:
          adapter->link_duplex = 0U;
          goto ldv_50903;
          case_1___0:
          adapter->link_duplex = 1U;
          goto ldv_50903;
          switch_default___0:
          adapter->link_duplex = 65535U;
          goto ldv_50903;
          switch_break___0: ;
          }
          ldv_50903: ;
          if ((unsigned long )adapter->phy_read != (unsigned long )((int (*)(struct netxen_adapter * ,
                                                                             u32 ,
                                                                             u32 * ))0)) {
            {
            tmp___1 = (*(adapter->phy_read))(adapter, 4U, & autoneg);
            }
            if (tmp___1 != 0) {
              adapter->link_autoneg = (u16 )autoneg;
            } else {
            }
          } else {
          }
        } else {
          goto link_down;
        }
      } else {
        goto link_down;
      }
    } else {
      link_down:
      adapter->link_speed = 0U;
      adapter->link_duplex = 65535U;
    }
  } else {
  }
  return;
}
}
int netxen_nic_wol_supported(struct netxen_adapter *adapter )
{
  u32 wol_cfg ;
  {
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (0);
  } else {
  }
  {
  wol_cfg = (*(adapter->crb_read))(adapter, 136323460UL);
  }
  if ((int )((unsigned long )wol_cfg >> (int )adapter->portnum) & 1) {
    {
    wol_cfg = (*(adapter->crb_read))(adapter, 136323464UL);
    }
    if ((wol_cfg & (u32 )(1 << (int )adapter->portnum)) != 0U) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static u32 netxen_md_cntrl(struct netxen_adapter *adapter , struct netxen_minidump_template_hdr *template_hdr ,
                           struct netxen_minidump_entry_crb *crtEntry )
{
  int loop_cnt ;
  int i ;
  int rv ;
  int timeout_flag ;
  u32 op_count ;
  u32 stride ;
  u32 opcode ;
  u32 read_value ;
  u32 addr ;
  unsigned long timeout ;
  unsigned long timeout_jiffies ;
  unsigned long tmp ;
  {
  rv = 0;
  addr = crtEntry->addr;
  op_count = crtEntry->op_count;
  stride = (u32 )crtEntry->__annonCompField103.__annonCompField102.addr_stride;
  loop_cnt = 0;
  goto ldv_50951;
  ldv_50950:
  i = 0;
  goto ldv_50948;
  ldv_50947:
  opcode = (u32 )((int )crtEntry->__annonCompField105.__annonCompField104.opcode & (1 << i));
  if (opcode != 0U) {
    {
    if (opcode == 1U) {
      goto case_1;
    } else {
    }
    if (opcode == 2U) {
      goto case_2;
    } else {
    }
    if (opcode == 4U) {
      goto case_4;
    } else {
    }
    if (opcode == 8U) {
      goto case_8;
    } else {
    }
    if (opcode == 16U) {
      goto case_16;
    } else {
    }
    if (opcode == 32U) {
      goto case_32;
    } else {
    }
    if (opcode == 64U) {
      goto case_64;
    } else {
    }
    if (opcode == 128U) {
      goto case_128;
    } else {
    }
    goto switch_default;
    case_1:
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel(crtEntry->value_1, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    goto ldv_50928;
    case_2:
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel(read_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    goto ldv_50928;
    case_4:
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    read_value = read_value & crtEntry->value_2;
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel(read_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    goto ldv_50928;
    case_8:
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    read_value = read_value | crtEntry->value_3;
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel(read_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    goto ldv_50928;
    case_16:
    {
    timeout = (unsigned long )crtEntry->__annonCompField103.__annonCompField102.poll_timeout;
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    tmp = msecs_to_jiffies((unsigned int const )timeout);
    timeout_jiffies = tmp + (unsigned long )jiffies;
    timeout_flag = 0;
    }
    goto ldv_50940;
    ldv_50939: ;
    if ((long )(timeout_jiffies - (unsigned long )jiffies) < 0L) {
      timeout_flag = 1;
    } else {
    }
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    ldv_50940: ;
    if (timeout_flag == 0 && (read_value & crtEntry->value_2) != crtEntry->value_1) {
      goto ldv_50939;
    } else {
    }
    if (timeout_flag != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "%s : Timeout in poll_crb control operation.\n",
              "netxen_md_cntrl");
      }
      return (4294967295U);
    } else {
    }
    goto ldv_50928;
    case_32: ;
    if ((unsigned int )crtEntry->__annonCompField103.__annonCompField102.state_index_a != 0U) {
      addr = template_hdr->saved_state_array[(int )crtEntry->__annonCompField103.__annonCompField102.state_index_a];
    } else {
    }
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    template_hdr->saved_state_array[(int )crtEntry->__annonCompField105.__annonCompField104.state_index_v] = read_value;
    }
    goto ldv_50928;
    case_64: ;
    if ((unsigned int )crtEntry->__annonCompField105.__annonCompField104.state_index_v != 0U) {
      read_value = template_hdr->saved_state_array[(int )crtEntry->__annonCompField105.__annonCompField104.state_index_v];
    } else {
      read_value = crtEntry->value_1;
    }
    if ((unsigned int )crtEntry->__annonCompField103.__annonCompField102.state_index_a != 0U) {
      addr = template_hdr->saved_state_array[(int )crtEntry->__annonCompField103.__annonCompField102.state_index_a];
    } else {
    }
    {
    writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel(read_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
    }
    goto ldv_50928;
    case_128:
    read_value = template_hdr->saved_state_array[(int )crtEntry->__annonCompField105.__annonCompField104.state_index_v];
    read_value = read_value << (int )crtEntry->__annonCompField105.__annonCompField104.shl;
    read_value = read_value >> (int )crtEntry->__annonCompField105.__annonCompField104.shr;
    if (crtEntry->value_2 != 0U) {
      read_value = read_value & crtEntry->value_2;
    } else {
    }
    read_value = read_value | crtEntry->value_3;
    read_value = read_value + crtEntry->value_1;
    template_hdr->saved_state_array[(int )crtEntry->__annonCompField105.__annonCompField104.state_index_v] = read_value;
    goto ldv_50928;
    switch_default:
    rv = 1;
    goto ldv_50928;
    switch_break: ;
    }
    ldv_50928: ;
  } else {
  }
  i = i + 1;
  ldv_50948: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_50947;
  } else {
  }
  addr = addr + stride;
  loop_cnt = loop_cnt + 1;
  ldv_50951: ;
  if ((u32 )loop_cnt < op_count) {
    goto ldv_50950;
  } else {
  }
  return ((u32 )rv);
}
}
static u32 netxen_md_rdmem(struct netxen_adapter *adapter , struct netxen_minidump_entry_rdmem *memEntry ,
                           u64 *data_buff )
{
  u64 addr ;
  u64 value ;
  int i ;
  int loop_cnt ;
  int tmp ;
  u64 *tmp___0 ;
  {
  value = 0ULL;
  i = 0;
  addr = (unsigned long long )memEntry->read_addr;
  loop_cnt = (int )memEntry->read_data_size;
  loop_cnt = (int )((unsigned long )loop_cnt / 8UL);
  i = 0;
  goto ldv_50964;
  ldv_50963:
  {
  tmp = netxen_nic_pci_mem_read_2M(adapter, addr, & value);
  }
  if (tmp != 0) {
    goto out;
  } else {
  }
  tmp___0 = data_buff;
  data_buff = data_buff + 1;
  *tmp___0 = value;
  addr = addr + 8ULL;
  i = i + 1;
  ldv_50964: ;
  if (i < loop_cnt) {
    goto ldv_50963;
  } else {
  }
  out: ;
  return ((u32 )((unsigned long )i) * 8U);
}
}
static u32 netxen_md_rd_crb(struct netxen_adapter *adapter , struct netxen_minidump_entry_crb *crbEntry ,
                            u32 *data_buff )
{
  int loop_cnt ;
  u32 op_count ;
  u32 addr ;
  u32 stride ;
  u32 value ;
  u32 *tmp ;
  u32 *tmp___0 ;
  {
  addr = crbEntry->addr;
  op_count = crbEntry->op_count;
  stride = (u32 )crbEntry->__annonCompField103.__annonCompField102.addr_stride;
  loop_cnt = 0;
  goto ldv_50977;
  ldv_50976:
  {
  writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = addr;
  tmp___0 = data_buff;
  data_buff = data_buff + 1;
  *tmp___0 = value;
  addr = addr + stride;
  loop_cnt = loop_cnt + 1;
  }
  ldv_50977: ;
  if ((u32 )loop_cnt < op_count) {
    goto ldv_50976;
  } else {
  }
  return ((u32 )((unsigned long )loop_cnt) * 8U);
}
}
static u32 netxen_md_rdrom(struct netxen_adapter *adapter , struct netxen_minidump_entry_rdrom *romEntry ,
                           __le32 *data_buff )
{
  int i ;
  int count ;
  u32 size ;
  u32 lck_val ;
  u32 val ;
  u32 fl_addr ;
  u32 waddr ;
  u32 raddr ;
  __le32 *tmp ;
  {
  count = 0;
  fl_addr = romEntry->read_addr;
  size = romEntry->read_data_size / 4U;
  lock_try:
  {
  lck_val = readl((void const volatile *)adapter->ahw.pci_base0 + 1294352U);
  }
  if (lck_val == 0U && count <= 999) {
    {
    msleep(20U);
    count = count + 1;
    }
    goto lock_try;
  } else {
  }
  {
  writel((unsigned int )adapter->ahw.pci_func, (void volatile *)adapter->ahw.pci_base0 + 1777920U);
  i = 0;
  }
  goto ldv_50994;
  ldv_50993:
  {
  waddr = fl_addr & 4294901760U;
  writel(1108410368U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel(waddr, (void volatile *)adapter->ahw.pci_base0 + 1966128U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1966128U);
  raddr = (fl_addr & 65535U) + 1108672512U;
  writel(raddr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  val = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )raddr) + 1966080UL)));
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = val;
  fl_addr = fl_addr + 4U;
  i = i + 1;
  }
  ldv_50994: ;
  if ((u32 )i < size) {
    goto ldv_50993;
  } else {
  }
  {
  readl((void const volatile *)adapter->ahw.pci_base0 + 1294356U);
  }
  return (romEntry->read_data_size);
}
}
static u32 netxen_md_L2Cache(struct netxen_adapter *adapter , struct netxen_minidump_entry_cache *cacheEntry ,
                             u32 *data_buff )
{
  int loop_cnt ;
  int i ;
  int k ;
  int timeout_flag ;
  u32 addr ;
  u32 read_addr ;
  u32 read_value ;
  u32 cntrl_addr ;
  u32 tag_reg_addr ;
  u32 tag_value ;
  u32 read_cnt ;
  u8 cntl_value_w ;
  u8 cntl_value_r ;
  unsigned long timeout ;
  unsigned long timeout_jiffies ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  u32 *tmp___2 ;
  {
  timeout_flag = 0;
  loop_cnt = (int )cacheEntry->op_count;
  read_addr = cacheEntry->read_addr;
  cntrl_addr = cacheEntry->control_addr;
  cntl_value_w = (u8 )cacheEntry->__annonCompField121.__annonCompField120.write_value;
  tag_reg_addr = cacheEntry->tag_reg_addr;
  tag_value = (u32 )cacheEntry->__annonCompField119.__annonCompField118.init_tag_value;
  read_cnt = (u32 )cacheEntry->__annonCompField123.__annonCompField122.read_addr_cnt;
  i = 0;
  goto ldv_51029;
  ldv_51028:
  {
  writel(tag_reg_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel(tag_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )tag_reg_addr) + 1966080UL)));
  readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )tag_reg_addr) + 1966080UL)));
  }
  if ((unsigned int )cntl_value_w != 0U) {
    {
    writel(cntrl_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    writel((unsigned int )cntl_value_w, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
    readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
    }
  } else {
  }
  if ((unsigned int )cacheEntry->__annonCompField121.__annonCompField120.poll_mask != 0U) {
    {
    timeout = (unsigned long )cacheEntry->__annonCompField121.__annonCompField120.poll_wait;
    writel(cntrl_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    tmp = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
    cntl_value_r = (u8 )tmp;
    tmp___0 = msecs_to_jiffies((unsigned int const )timeout);
    timeout_jiffies = tmp___0 + (unsigned long )jiffies;
    timeout_flag = 0;
    }
    goto ldv_51023;
    ldv_51022: ;
    if ((long )(timeout_jiffies - (unsigned long )jiffies) < 0L) {
      timeout_flag = 1;
    } else {
    }
    {
    writel(cntrl_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
    readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
    tmp___1 = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
    cntl_value_r = (u8 )tmp___1;
    }
    ldv_51023: ;
    if (timeout_flag == 0 && (unsigned int )((int )cntl_value_r & (int )cacheEntry->__annonCompField121.__annonCompField120.poll_mask) != 0U) {
      goto ldv_51022;
    } else {
    }
    if (timeout_flag != 0) {
      {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Timeout in processing L2 Tag poll.\n");
      }
      return (4294967295U);
    } else {
    }
  } else {
  }
  addr = read_addr;
  k = 0;
  goto ldv_51026;
  ldv_51025:
  {
  writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
  tmp___2 = data_buff;
  data_buff = data_buff + 1;
  *tmp___2 = read_value;
  addr = addr + (u32 )cacheEntry->__annonCompField123.__annonCompField122.read_addr_stride;
  k = k + 1;
  }
  ldv_51026: ;
  if ((u32 )k < read_cnt) {
    goto ldv_51025;
  } else {
  }
  tag_value = tag_value + (u32 )cacheEntry->__annonCompField119.__annonCompField118.tag_value_stride;
  i = i + 1;
  ldv_51029: ;
  if (i < loop_cnt) {
    goto ldv_51028;
  } else {
  }
  return ((read_cnt * (u32 )loop_cnt) * 4U);
}
}
static u32 netxen_md_L1Cache(struct netxen_adapter *adapter , struct netxen_minidump_entry_cache *cacheEntry ,
                             u32 *data_buff )
{
  int i ;
  int k ;
  int loop_cnt ;
  u32 addr ;
  u32 read_addr ;
  u32 read_value ;
  u32 cntrl_addr ;
  u32 tag_reg_addr ;
  u32 tag_value ;
  u32 read_cnt ;
  u8 cntl_value_w ;
  u32 *tmp ;
  {
  loop_cnt = (int )cacheEntry->op_count;
  read_addr = cacheEntry->read_addr;
  cntrl_addr = cacheEntry->control_addr;
  cntl_value_w = (u8 )cacheEntry->__annonCompField121.__annonCompField120.write_value;
  tag_reg_addr = cacheEntry->tag_reg_addr;
  tag_value = (u32 )cacheEntry->__annonCompField119.__annonCompField118.init_tag_value;
  read_cnt = (u32 )cacheEntry->__annonCompField123.__annonCompField122.read_addr_cnt;
  i = 0;
  goto ldv_51051;
  ldv_51050:
  {
  writel(tag_reg_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel(tag_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )tag_reg_addr) + 1966080UL)));
  readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )tag_reg_addr) + 1966080UL)));
  writel(cntrl_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel((unsigned int )cntl_value_w, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
  readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )cntrl_addr) + 1966080UL)));
  addr = read_addr;
  k = 0;
  }
  goto ldv_51048;
  ldv_51047:
  {
  writel(addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )addr) + 1966080UL)));
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = read_value;
  addr = addr + (u32 )cacheEntry->__annonCompField123.__annonCompField122.read_addr_stride;
  k = k + 1;
  }
  ldv_51048: ;
  if ((u32 )k < read_cnt) {
    goto ldv_51047;
  } else {
  }
  tag_value = tag_value + (u32 )cacheEntry->__annonCompField119.__annonCompField118.tag_value_stride;
  i = i + 1;
  ldv_51051: ;
  if (i < loop_cnt) {
    goto ldv_51050;
  } else {
  }
  return ((read_cnt * (u32 )loop_cnt) * 4U);
}
}
static u32 netxen_md_rdocm(struct netxen_adapter *adapter , struct netxen_minidump_entry_rdocm *ocmEntry ,
                           u32 *data_buff )
{
  int i ;
  int loop_cnt ;
  u32 value ;
  void *addr ;
  u32 *tmp ;
  {
  addr = adapter->ahw.pci_base0 + (unsigned long )ocmEntry->read_addr;
  loop_cnt = (int )ocmEntry->op_count;
  i = 0;
  goto ldv_51063;
  ldv_51062:
  {
  value = readl((void const volatile *)addr);
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = value;
  addr = addr + (unsigned long )ocmEntry->__annonCompField127.__annonCompField126.read_addr_stride;
  i = i + 1;
  }
  ldv_51063: ;
  if (i < loop_cnt) {
    goto ldv_51062;
  } else {
  }
  return ((u32 )((unsigned long )i) * 4U);
}
}
static u32 netxen_md_rdmux(struct netxen_adapter *adapter , struct netxen_minidump_entry_mux *muxEntry ,
                           u32 *data_buff )
{
  int loop_cnt ;
  u32 read_addr ;
  u32 read_value ;
  u32 select_addr ;
  u32 sel_value ;
  u32 *tmp ;
  u32 *tmp___0 ;
  {
  loop_cnt = 0;
  read_addr = muxEntry->read_addr;
  sel_value = muxEntry->select_value;
  select_addr = muxEntry->select_addr;
  loop_cnt = 0;
  goto ldv_51076;
  ldv_51075:
  {
  writel(select_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel(sel_value, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )select_addr) + 1966080UL)));
  readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )select_addr) + 1966080UL)));
  writel(read_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )read_addr) + 1966080UL)));
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = sel_value;
  tmp___0 = data_buff;
  data_buff = data_buff + 1;
  *tmp___0 = read_value;
  sel_value = sel_value + muxEntry->select_value_stride;
  loop_cnt = loop_cnt + 1;
  }
  ldv_51076: ;
  if ((u32 )loop_cnt < muxEntry->op_count) {
    goto ldv_51075;
  } else {
  }
  return ((u32 )((unsigned long )loop_cnt) * 8U);
}
}
static u32 netxen_md_rdqueue(struct netxen_adapter *adapter , struct netxen_minidump_entry_queue *queueEntry ,
                             u32 *data_buff )
{
  int loop_cnt ;
  int k ;
  u32 queue_id ;
  u32 read_addr ;
  u32 read_value ;
  u32 read_stride ;
  u32 select_addr ;
  u32 read_cnt ;
  u32 *tmp ;
  {
  read_cnt = (u32 )queueEntry->__annonCompField133.__annonCompField132.read_addr_cnt;
  read_stride = (u32 )queueEntry->__annonCompField133.__annonCompField132.read_addr_stride;
  select_addr = queueEntry->select_addr;
  loop_cnt = 0;
  queue_id = 0U;
  goto ldv_51095;
  ldv_51094:
  {
  writel(select_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  writel(queue_id, (void volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )select_addr) + 1966080UL)));
  readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )select_addr) + 1966080UL)));
  read_addr = queueEntry->read_addr;
  k = 0;
  }
  goto ldv_51092;
  ldv_51091:
  {
  writel(read_addr & 4294901760U, (void volatile *)adapter->ahw.pci_base0 + 1245280U);
  readl((void const volatile *)adapter->ahw.pci_base0 + 1245280U);
  read_value = readl((void const volatile *)(adapter->ahw.pci_base0 + ((unsigned long )((unsigned short )read_addr) + 1966080UL)));
  tmp = data_buff;
  data_buff = data_buff + 1;
  *tmp = read_value;
  read_addr = read_addr + read_stride;
  k = k - 1;
  }
  ldv_51092: ;
  if ((u32 )k < read_cnt) {
    goto ldv_51091;
  } else {
  }
  queue_id = queue_id + (u32 )queueEntry->__annonCompField131.__annonCompField130.queue_id_stride;
  loop_cnt = loop_cnt + 1;
  ldv_51095: ;
  if ((u32 )loop_cnt < queueEntry->op_count) {
    goto ldv_51094;
  } else {
  }
  return (((u32 )((unsigned long )loop_cnt) * read_cnt) * 4U);
}
}
static int netxen_md_entry_err_chk(struct netxen_adapter *adapter , struct netxen_minidump_entry *entry ,
                                   int esize )
{
  {
  if (esize < 0) {
    entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
    return (esize);
  } else {
  }
  if ((u32 )esize != entry->hdr.entry_capture_size) {
    {
    entry->hdr.entry_capture_size = (u32 )esize;
    entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 64U);
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Invalidate dump, Type:%d\tMask:%d\tSize:%dCap_size:%d\n",
              entry->hdr.entry_type, (int )entry->hdr.__annonCompField89.__annonCompField88.entry_capture_mask,
              esize, entry->hdr.entry_capture_size);
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Aborting further dump capture\n");
    }
  } else {
  }
  return (0);
}
}
static int netxen_parse_md_template(struct netxen_adapter *adapter )
{
  int num_of_entries ;
  int buff_level ;
  int e_cnt ;
  int esize ;
  int end_cnt ;
  int rv ;
  int sane_start ;
  int sane_end ;
  char *dbuff ;
  void *template_buff ;
  char *dump_buff ;
  int capture_mask ;
  struct netxen_minidump_template_hdr *template_hdr ;
  struct netxen_minidump_entry *entry ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  {
  end_cnt = 0;
  rv = 0;
  sane_start = 0;
  sane_end = 0;
  template_buff = adapter->mdump.md_template;
  dump_buff = (char *)adapter->mdump.md_capture_buff;
  capture_mask = (int )adapter->mdump.md_capture_mask;
  if ((capture_mask & 3) != 3) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Capture mask %02x below minimum needed for valid firmware dump\n",
            capture_mask);
    }
    return (-22);
  } else {
  }
  {
  template_hdr = (struct netxen_minidump_template_hdr *)template_buff;
  num_of_entries = (int )template_hdr->num_of_entries;
  entry = (struct netxen_minidump_entry *)template_buff + (unsigned long )template_hdr->first_entry_offset;
  memcpy((void *)dump_buff, (void const *)template_buff, (size_t )adapter->mdump.md_template_size);
  dump_buff = dump_buff + (unsigned long )adapter->mdump.md_template_size;
  }
  if (template_hdr->entry_type == 99U) {
    sane_start = 1;
  } else {
  }
  e_cnt = 0;
  buff_level = 0;
  goto ldv_51140;
  ldv_51139: ;
  if (((int )entry->hdr.__annonCompField89.__annonCompField88.entry_capture_mask & capture_mask) == 0) {
    entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
    entry = entry + (unsigned long )entry->hdr.entry_size;
    goto ldv_51119;
  } else {
  }
  {
  if (entry->hdr.entry_type == 0U) {
    goto case_0;
  } else {
  }
  if (entry->hdr.entry_type == 255U) {
    goto case_255;
  } else {
  }
  if (entry->hdr.entry_type == 98U) {
    goto case_98;
  } else {
  }
  if (entry->hdr.entry_type == 1U) {
    goto case_1;
  } else {
  }
  if (entry->hdr.entry_type == 73U) {
    goto case_73;
  } else {
  }
  if (entry->hdr.entry_type == 72U) {
    goto case_72;
  } else {
  }
  if (entry->hdr.entry_type == 4U) {
    goto case_4;
  } else {
  }
  if (entry->hdr.entry_type == 71U) {
    goto case_71;
  } else {
  }
  if (entry->hdr.entry_type == 22U) {
    goto case_22;
  } else {
  }
  if (entry->hdr.entry_type == 21U) {
    goto case_21;
  } else {
  }
  if (entry->hdr.entry_type == 23U) {
    goto case_23;
  } else {
  }
  if (entry->hdr.entry_type == 24U) {
    goto case_24;
  } else {
  }
  if (entry->hdr.entry_type == 11U) {
    goto case_11;
  } else {
  }
  if (entry->hdr.entry_type == 12U) {
    goto case_12;
  } else {
  }
  if (entry->hdr.entry_type == 6U) {
    goto case_6;
  } else {
  }
  if (entry->hdr.entry_type == 2U) {
    goto case_2;
  } else {
  }
  if (entry->hdr.entry_type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
  goto ldv_51121;
  case_255:
  entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
  if (sane_end == 0) {
    end_cnt = e_cnt;
  } else {
  }
  sane_end = sane_end + 1;
  goto ldv_51121;
  case_98:
  {
  tmp = netxen_md_cntrl(adapter, template_hdr, (struct netxen_minidump_entry_crb *)entry);
  rv = (int )tmp;
  }
  if (rv != 0) {
    entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
  } else {
  }
  goto ldv_51121;
  case_1:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___0 = netxen_md_rd_crb(adapter, (struct netxen_minidump_entry_crb *)entry, (u32 *)dbuff);
  esize = (int )tmp___0;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_73: ;
  case_72:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___1 = netxen_md_rdmem(adapter, (struct netxen_minidump_entry_rdmem *)entry,
                            (u64 *)dbuff);
  esize = (int )tmp___1;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_4: ;
  case_71:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___2 = netxen_md_rdrom(adapter, (struct netxen_minidump_entry_rdrom *)entry,
                            (__le32 *)dbuff);
  esize = (int )tmp___2;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_22: ;
  case_21: ;
  case_23: ;
  case_24:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___3 = netxen_md_L2Cache(adapter, (struct netxen_minidump_entry_cache *)entry,
                              (u32 *)dbuff);
  esize = (int )tmp___3;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_11: ;
  case_12:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___4 = netxen_md_L1Cache(adapter, (struct netxen_minidump_entry_cache *)entry,
                              (u32 *)dbuff);
  esize = (int )tmp___4;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_6:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___5 = netxen_md_rdocm(adapter, (struct netxen_minidump_entry_rdocm *)entry,
                            (u32 *)dbuff);
  esize = (int )tmp___5;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_2:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___6 = netxen_md_rdmux(adapter, (struct netxen_minidump_entry_mux *)entry, (u32 *)dbuff);
  esize = (int )tmp___6;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  case_3:
  {
  dbuff = dump_buff + (unsigned long )buff_level;
  tmp___7 = netxen_md_rdqueue(adapter, (struct netxen_minidump_entry_queue *)entry,
                              (u32 *)dbuff);
  esize = (int )tmp___7;
  rv = netxen_md_entry_err_chk(adapter, entry, esize);
  }
  if (rv < 0) {
    goto ldv_51121;
  } else {
  }
  buff_level = buff_level + esize;
  goto ldv_51121;
  switch_default:
  entry->hdr.__annonCompField89.__annonCompField88.driver_flags = (u8 )((unsigned int )entry->hdr.__annonCompField89.__annonCompField88.driver_flags | 128U);
  goto ldv_51121;
  switch_break: ;
  }
  ldv_51121:
  entry = entry + (unsigned long )entry->hdr.entry_size;
  ldv_51119:
  e_cnt = e_cnt + 1;
  ldv_51140: ;
  if (e_cnt < num_of_entries) {
    goto ldv_51139;
  } else {
  }
  if (sane_start == 0 || sane_end > 1) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware minidump template configuration error.\n");
    }
  } else {
  }
  return (0);
}
}
static int netxen_collect_minidump(struct netxen_adapter *adapter )
{
  int ret ;
  struct netxen_minidump_template_hdr *hdr ;
  struct timespec val ;
  {
  {
  ret = 0;
  hdr = (struct netxen_minidump_template_hdr *)adapter->mdump.md_template;
  hdr->driver_capture_mask = (u32 )adapter->mdump.md_capture_mask;
  jiffies_to_timespec(jiffies, & val);
  hdr->driver_timestamp = (unsigned int )val.tv_sec;
  hdr->driver_info_word2 = adapter->fw_version;
  hdr->driver_info_word3 = (*(adapter->crb_read))(adapter, 136324256UL);
  ret = netxen_parse_md_template(adapter);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
void netxen_dump_fw(struct netxen_adapter *adapter )
{
  struct netxen_minidump_template_hdr *hdr ;
  int i ;
  int k ;
  int data_size ;
  u32 capture_mask ;
  int tmp ;
  {
  data_size = 0;
  hdr = (struct netxen_minidump_template_hdr *)adapter->mdump.md_template;
  capture_mask = (u32 )adapter->mdump.md_capture_mask;
  i = 2;
  k = 1;
  goto ldv_51157;
  ldv_51156: ;
  if (((u32 )i & capture_mask) != 0U) {
    data_size = (int )((u32 )data_size + hdr->capture_size_array[k]);
  } else {
  }
  i = i << 1;
  k = k + 1;
  ldv_51157: ;
  if ((i & 255) != 0) {
    goto ldv_51156;
  } else {
  }
  if (data_size == 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Invalid cap sizes for capture_mask=0x%x\n",
            (int )adapter->mdump.md_capture_mask);
    }
    return;
  } else {
  }
  adapter->mdump.md_capture_size = (u32 )data_size;
  adapter->mdump.md_dump_size = adapter->mdump.md_template_size + adapter->mdump.md_capture_size;
  if ((unsigned long )adapter->mdump.md_capture_buff == (unsigned long )((void *)0)) {
    {
    adapter->mdump.md_capture_buff = vzalloc((unsigned long )adapter->mdump.md_dump_size);
    }
    if ((unsigned long )adapter->mdump.md_capture_buff == (unsigned long )((void *)0)) {
      return;
    } else {
    }
    {
    tmp = netxen_collect_minidump(adapter);
    }
    if (tmp != 0) {
      {
      adapter->mdump.has_valid_dump = 0U;
      adapter->mdump.md_dump_size = 0U;
      vfree((void const *)adapter->mdump.md_capture_buff);
      adapter->mdump.md_capture_buff = (void *)0;
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Error in collecting firmware minidump.\n");
      }
    } else {
      {
      adapter->mdump.md_timestamp = (u64 )jiffies;
      adapter->mdump.has_valid_dump = 1U;
      adapter->fw_mdump_rdy = 1;
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s Successfully collected fw dump.\n",
                (char *)(& (adapter->netdev)->name));
      }
    }
  } else {
    {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Cannot overwrite previously collected firmware minidump.\n");
    adapter->fw_mdump_rdy = 1;
    }
    return;
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
__inline static void ldv_spin_lock_bh_47(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock__xmit_lock_of_netdev_queue();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_50(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock__xmit_lock_of_netdev_queue();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_77(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_mem_lock_of_netxen_hardware_context();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_78(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_mem_lock_of_netxen_hardware_context();
  spin_unlock(lock);
  }
  return;
}
}
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern struct module __this_module ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern void __might_sleep(char const * , int , int ) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  }
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern char *strcpy(char * , char const * ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  {
  tmp___0 = __bitmap_weight(src, nbits);
  }
  return (tmp___0);
}
}
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  }
  return ((unsigned int )tmp);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
void ldv_spin_lock_tx_clean_lock_of_netxen_adapter(void) ;
void ldv_spin_unlock_tx_clean_lock_of_netxen_adapter(void) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6629;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6629;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6629;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6629;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6629: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6641;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6641;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6641;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6641;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6641: ;
  return;
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void ldv_spin_lock_46(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_79___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_49(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_80___0(spinlock_t *lock ) ;
__inline static void __rcu_read_lock(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  {
  lock_acquire(map, 0U, 0, 2, 1, (struct lockdep_map *)0, (unsigned long )((void *)0));
  }
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  }
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = rcu_is_watching();
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  {
  tmp___2 = rcu_lockdep_current_cpu_online();
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  {
  tmp___4 = lock_is_held(& rcu_lock_map);
  }
  return (tmp___4);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 812, "rcu_read_lock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 833, "rcu_read_unlock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  {
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  }
  return;
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
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
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
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
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  }
  return (tmp);
}
}
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern int device_create_bin_file(struct device * , struct bin_attribute const * ) ;
extern void device_remove_bin_file(struct device * , struct bin_attribute const * ) ;
static void *ldv_dev_get_drvdata_58(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_86(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_87(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_88(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_89(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_90(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_91(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_92(struct device const *dev ) ;
static int ldv_dev_set_drvdata_59(struct device *dev , void *data ) ;
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
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
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
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
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
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
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
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  }
  return;
}
}
__inline static void skb_copy_from_linear_data_offset(struct sk_buff const *skb ,
                                                      int const offset , void *to ,
                                                      unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data + (unsigned long )offset, (size_t )len);
  }
  return;
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer(skb);
  }
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
extern struct net init_net ;
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
    tmp___1 = test_and_clear_bit(0L, (unsigned long volatile *)(& n->state));
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
  goto ldv_38283;
  ldv_38282:
  {
  msleep(1U);
  }
  ldv_38283:
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_38282;
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
__inline static void napi_synchronize(struct napi_struct const *n )
{
  int tmp ;
  {
  goto ldv_38292;
  ldv_38291:
  {
  msleep(1U);
  }
  ldv_38292:
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_38291;
  } else {
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
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int register_netdevice_notifier(struct notifier_block * ) ;
static int ldv_register_netdevice_notifier_93(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_netdevice_notifier(struct notifier_block * ) ;
static int ldv_unregister_netdevice_notifier_98(struct notifier_block *ldv_func_arg1 ) ;
__inline static struct net_device *netdev_notifier_info_to_dev(struct netdev_notifier_info const *info )
{
  {
  return ((struct net_device *)info->dev);
}
}
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_83(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_85(struct net_device *ldv_func_arg1 ) ;
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
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  {
  ldv_spin_lock_46(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  }
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  {
  txq->xmit_lock_owner = -1;
  ldv_spin_unlock_49(& txq->_xmit_lock);
  }
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  {
  local_bh_disable();
  __vpp_verify = (void const *)0;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1: ;
  {
  if (4UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39745;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39745;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39745;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39745;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_39745:
  pscr_ret__ = pfo_ret__;
  goto ldv_39751;
  case_2___0: ;
  {
  if (4UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39755;
  case_2___1:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39755;
  case_4___0:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39755;
  case_8___0:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39755;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_39755:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39751;
  case_4___1: ;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39764;
  case_2___2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39764;
  case_4___2:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39764;
  case_8___1:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39764;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_39764:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39751;
  case_8___2: ;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39773;
  case_2___3:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39773;
  case_4___3:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39773;
  case_8___3:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39773;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_39773:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39751;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_39751;
  switch_break: ;
  }
  ldv_39751:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_39783;
  ldv_39782:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  }
  ldv_39783: ;
  if (i < dev->num_tx_queues) {
    goto ldv_39782;
  } else {
  }
  {
  local_bh_enable();
  }
  return;
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_81(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_84(struct net_device *ldv_func_arg1 ) ;
extern struct net_device *netdev_master_upper_dev_get_rcu(struct net_device * ) ;
__inline static bool netif_is_bond_master(struct net_device *dev )
{
  {
  return (*((unsigned long *)dev + 63UL) == 137438954496UL);
}
}
__inline static bool netif_is_bond_slave(struct net_device *dev )
{
  {
  return (*((unsigned long *)dev + 63UL) == 137438955520UL);
}
}
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_find_ext_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  }
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_95(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_96(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  }
  return (tmp);
}
}
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
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_58((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_59(& pdev->dev, data);
  }
  return;
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
__inline static u16 pcie_caps_reg(struct pci_dev const *dev )
{
  {
  return ((u16 )dev->pcie_flags_reg);
}
}
__inline static int pci_pcie_type(struct pci_dev const *dev )
{
  u16 tmp ;
  {
  {
  tmp = pcie_caps_reg(dev);
  }
  return (((int )tmp & 240) >> 4);
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
__inline static int ldv_request_irq_77(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_78(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_82(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
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
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  {
  tmp = tcp_hdr(skb);
  }
  return ((unsigned int )((int )tmp->doff * 4));
}
}
char netxen_nic_driver_name[11U] ;
int netxen_init_dummy_dma(struct netxen_adapter *adapter ) ;
void netxen_free_dummy_dma(struct netxen_adapter *adapter ) ;
int netxen_check_flash_fw_compatibility(struct netxen_adapter *adapter ) ;
int netxen_phantom_init(struct netxen_adapter *adapter , int pegtune_val ) ;
int netxen_load_firmware(struct netxen_adapter *adapter ) ;
int netxen_need_fw_reset(struct netxen_adapter *adapter ) ;
void netxen_request_firmware(struct netxen_adapter *adapter ) ;
void netxen_release_firmware(struct netxen_adapter *adapter ) ;
int netxen_pinit_from_rom(struct netxen_adapter *adapter ) ;
int netxen_alloc_sw_resources(struct netxen_adapter *adapter ) ;
void netxen_free_sw_resources(struct netxen_adapter *adapter ) ;
int netxen_alloc_hw_resources(struct netxen_adapter *adapter ) ;
void netxen_free_hw_resources(struct netxen_adapter *adapter ) ;
void netxen_release_rx_buffers(struct netxen_adapter *adapter ) ;
void netxen_release_tx_buffers(struct netxen_adapter *adapter ) ;
int netxen_init_firmware(struct netxen_adapter *adapter ) ;
void netxen_nic_clear_stats(struct netxen_adapter *adapter ) ;
void netxen_post_rx_buffers(struct netxen_adapter *adapter , u32 ringid , struct nx_host_rds_ring *rds_ring ) ;
int netxen_process_cmd_ring(struct netxen_adapter *adapter ) ;
int netxen_process_rcv_ring(struct nx_host_sds_ring *sds_ring , int max ) ;
void netxen_advert_link_change(struct netxen_adapter *adapter , int linkup ) ;
int netxen_setup_minidump(struct netxen_adapter *adapter ) ;
int netxen_nic_reset_context(struct netxen_adapter *adapter ) ;
int nx_dev_request_reset(struct netxen_adapter *adapter ) ;
static struct netxen_brdinfo const netxen_boards[19U] =
  { {15, 1L, {'X', 'G', 'b', ' ', 'C', 'X', '4', '\000'}},
        {14, 1L, {'X', 'G', 'b', ' ', 'H', 'M', 'E', 'Z', '\000'}},
        {13, 2L, {'X', 'G', 'b', ' ', 'I', 'M', 'E', 'Z', '\000'}},
        {11, 1L, {'X', 'G', 'b', ' ', 'X', 'F', 'P', '\000'}},
        {10, 4L, {'Q', 'u', 'a', 'd', ' ', 'G', 'b', '\000'}},
        {12, 2L, {'D', 'u', 'a', 'l', ' ', 'G', 'b', '\000'}},
        {33, 4L, {'R', 'e', 'f', 'e', 'r', 'e', 'n', 'c', 'e', ' ', 'Q', 'u', 'a', 'd',
               ' ', 'G', 'i', 'g', ' ', '\000'}},
        {34, 2L, {'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b', ' ', 'H', 'M', 'E', 'Z', '\000'}},
        {35,
      2L, {'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b', ' ', 'C', 'X', '4', ' ', 'L', 'P',
           '\000'}},
        {36, 4L, {'Q', 'u', 'a', 'd', ' ', 'G', 'i', 'g', ' ', 'L', 'P', '\000'}},
        {37, 2L, {'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b', ' ', 'I', 'M', 'E', 'Z', '\000'}},
        {38,
      2L, {'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b', ' ', 'S', 'F', 'P', '+', ' ', 'L',
           'P', '\000'}},
        {39, 1L, {'X', 'G', 'B', ' ', '1', '0', 'G', ' ', 'B', 'a', 's', 'e', 'T', ' ',
               'L', 'P', '\000'}},
        {40, 2L, {'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b', ' ', 'L', 'O', 'M', '\000'}},
        {41,
      4L, {'N', 'X', '3', '0', '3', '1', ' ', 'G', 'i', 'g', 'a', 'b', 'i', 't', ' ',
           'E', 't', 'h', 'e', 'r', 'n', 'e', 't', '\000'}},
        {42, 2L, {'N', 'X', '3', '0', '3', '1', ' ', '1', '0', ' ', 'G', 'i', 'g', 'a',
               'b', 'i', 't', ' ', 'E', 't', 'h', 'e', 'r', 'n', 'e', 't', '\000'}},
        {43,
      2L, {'Q', 'u', 'a', 'n', 't', 'a', ' ', 'D', 'u', 'a', 'l', ' ', 'X', 'G', 'b',
           ' ', 'S', 'F', 'P', '+', '\000'}},
        {49, 2L, {'R', 'e', 'f', 'e', 'r', 'e', 'n', 'c', 'e', ' ', 'D', 'u', 'a', 'l',
               ' ', 'C', 'X', '4', ' ', 'O', 'p', 't', 'i', 'o', 'n', '\000'}},
        {50, 1L, {'R', 'e', 'f', 'e', 'r', 'e', 'n', 'c', 'e', ' ', 'S', 'i', 'n', 'g',
               'l', 'e', ' ', 'X', 'F', 'P', ' ', 'O', 'p', 't', 'i', 'o', 'n', '\000'}}};
__inline static int netxen_nic_get_brd_name_by_type(u32 type , char *name )
{
  int i ;
  int found ;
  {
  found = 0;
  i = 0;
  goto ldv_48785;
  ldv_48784: ;
  if ((u32 )netxen_boards[i].brdtype == type) {
    {
    strcpy(name, (char const *)(& netxen_boards[i].short_name));
    found = 1;
    }
    goto ldv_48783;
  } else {
  }
  i = i + 1;
  ldv_48785: ;
  if ((unsigned int )i <= 18U) {
    goto ldv_48784;
  } else {
  }
  ldv_48783: ;
  if (found == 0) {
    {
    strcpy(name, "Unknown");
    }
    return (-22);
  } else {
  }
  return (0);
}
}
struct ethtool_ops const netxen_nic_ethtool_ops ;
extern struct net_device *vlan_dev_real_dev(struct net_device const * ) ;
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct ipv6hdr *)tmp);
}
}
extern int register_inetaddr_notifier(struct notifier_block * ) ;
static int ldv_register_inetaddr_notifier_94(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_inetaddr_notifier(struct notifier_block * ) ;
static int ldv_unregister_inetaddr_notifier_97(struct notifier_block *ldv_func_arg1 ) ;
__inline static struct in_device *__in_dev_get_rcu(struct net_device const *dev )
{
  struct in_device *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  {
  _________p1 = *((struct in_device * const volatile *)(& dev->ip_ptr));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_read_lock_held();
    }
    if (tmp___0 == 0) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/inetdevice.h", 202, "suspicious rcu_dereference_check() usage");
      }
    } else {
    }
  } else {
  }
  return (_________p1);
}
}
__inline static struct in_device *in_dev_get(struct net_device const *dev )
{
  struct in_device *in_dev ;
  {
  {
  rcu_read_lock();
  in_dev = __in_dev_get_rcu(dev);
  }
  if ((unsigned long )in_dev != (unsigned long )((struct in_device *)0)) {
    {
    atomic_inc(& in_dev->refcnt);
    }
  } else {
  }
  {
  rcu_read_unlock();
  }
  return (in_dev);
}
}
extern void in_dev_finish_destroy(struct in_device * ) ;
__inline static void in_dev_put(struct in_device *idev )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& idev->refcnt);
  }
  if (tmp != 0) {
    {
    in_dev_finish_destroy(idev);
    }
  } else {
  }
  return;
}
}
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
char netxen_nic_driver_name[11U] =
  { 'n', 'e', 't', 'x',
        'e', 'n', '_', 'n',
        'i', 'c', '\000'};
static char netxen_nic_driver_string[37U] =
  { 'Q', 'L', 'o', 'g',
        'i', 'c', '/', 'N',
        'e', 't', 'X', 'e',
        'n', ' ', 'N', 'e',
        't', 'w', 'o', 'r',
        'k', ' ', 'D', 'r',
        'i', 'v', 'e', 'r',
        ' ', 'v', '4', '.',
        '0', '.', '8', '2',
        '\000'};
static int port_mode = 4;
static int wol_port_mode = 5;
static int use_msi = 1;
static int use_msi_x = 1;
static int auto_fw_reset = -284119278;
static int netxen_nic_probe(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static void netxen_nic_remove(struct pci_dev *pdev ) ;
static int netxen_nic_open(struct net_device *netdev ) ;
static int netxen_nic_close(struct net_device *netdev ) ;
static netdev_tx_t netxen_nic_xmit_frame(struct sk_buff *skb , struct net_device *netdev ) ;
static void netxen_tx_timeout(struct net_device *netdev ) ;
static void netxen_tx_timeout_task(struct work_struct *work ) ;
static void netxen_fw_poll_work(struct work_struct *work ) ;
static void netxen_schedule_work(struct netxen_adapter *adapter , void (*func)(struct work_struct * ) ,
                                 int delay ) ;
static void netxen_cancel_fw_work(struct netxen_adapter *adapter ) ;
static int netxen_nic_poll(struct napi_struct *napi , int budget ) ;
static void netxen_nic_poll_controller(struct net_device *netdev ) ;
static void netxen_create_sysfs_entries(struct netxen_adapter *adapter ) ;
static void netxen_remove_sysfs_entries(struct netxen_adapter *adapter ) ;
static void netxen_create_diag_entries(struct netxen_adapter *adapter ) ;
static void netxen_remove_diag_entries(struct netxen_adapter *adapter ) ;
static int nx_dev_request_aer(struct netxen_adapter *adapter ) ;
static int nx_decr_dev_ref_cnt(struct netxen_adapter *adapter ) ;
static int netxen_can_start_firmware(struct netxen_adapter *adapter ) ;
static irqreturn_t netxen_intr(int irq , void *data ) ;
static irqreturn_t netxen_msi_intr(int irq , void *data ) ;
static irqreturn_t netxen_msix_intr(int irq , void *data ) ;
static void netxen_free_ip_list(struct netxen_adapter *adapter , bool master ) ;
static void netxen_restore_indev_addr(struct net_device *netdev , unsigned long event ) ;
static struct rtnl_link_stats64 *netxen_nic_get_stats(struct net_device *netdev ,
                                                      struct rtnl_link_stats64 *stats ) ;
static int netxen_nic_set_mac(struct net_device *netdev , void *p ) ;
static struct pci_device_id const netxen_pci_tbl[9U] =
  { {16448U, 1U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 2U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 3U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 4U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 5U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 36U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 37U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {16448U, 256U, 4294967295U, 4294967295U, 131072U, 4294967295U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static uint32_t crb_cmd_producer[4U] = { 136323592U, 136324012U, 136324024U, 136324048U};
void netxen_nic_update_cmd_producer(struct netxen_adapter *adapter , struct nx_host_tx_ring *tx_ring )
{
  {
  {
  (*(adapter->io_write))(adapter, tx_ring->crb_cmd_producer, tx_ring->producer);
  }
  return;
}
}
static uint32_t crb_cmd_consumer[4U] = { 136323596U, 136324016U, 136324028U, 136324052U};
__inline static void netxen_nic_update_cmd_consumer(struct netxen_adapter *adapter ,
                                                    struct nx_host_tx_ring *tx_ring )
{
  {
  {
  (*(adapter->io_write))(adapter, tx_ring->crb_cmd_consumer, tx_ring->sw_consumer);
  }
  return;
}
}
static uint32_t msi_tgt_status[8U] =
  { 101777688U, 101777760U, 101777764U, 101777768U,
        101778272U, 101778276U, 101778280U, 101778284U};
static struct netxen_legacy_intr_set legacy_intr[8U] =
  { {128U, 101777688U, 101777704U, 101789696U},
        {256U, 101777760U, 101777776U, 101789700U},
        {512U, 101777764U, 101777780U, 101789704U},
        {1024U, 101777768U, 101777784U, 101789708U},
        {2048U, 101778272U, 101778288U, 101789712U},
        {4096U, 101778276U, 101778292U, 101789716U},
        {8192U, 101778280U, 101778296U, 101789720U},
        {16384U, 101778284U, 101778300U, 101789724U}};
__inline static void netxen_nic_disable_int(struct nx_host_sds_ring *sds_ring )
{
  struct netxen_adapter *adapter ;
  {
  {
  adapter = sds_ring->adapter;
  (*(adapter->io_write))(adapter, sds_ring->crb_intr_mask, 0U);
  }
  return;
}
}
__inline static void netxen_nic_enable_int(struct nx_host_sds_ring *sds_ring )
{
  struct netxen_adapter *adapter ;
  {
  {
  adapter = sds_ring->adapter;
  (*(adapter->io_write))(adapter, sds_ring->crb_intr_mask, 1U);
  }
  if ((adapter->flags & 6U) == 0U) {
    {
    (*(adapter->io_write))(adapter, adapter->tgt_mask_reg, 64511U);
    }
  } else {
  }
  return;
}
}
static int netxen_alloc_sds_rings(struct netxen_recv_context *recv_ctx , int count )
{
  int size ;
  void *tmp ;
  {
  {
  size = (int )((unsigned int )count * 312U);
  tmp = kzalloc((size_t )size, 208U);
  recv_ctx->sds_rings = (struct nx_host_sds_ring *)tmp;
  }
  return ((unsigned long )recv_ctx->sds_rings == (unsigned long )((struct nx_host_sds_ring *)0));
}
}
static void netxen_free_sds_rings(struct netxen_recv_context *recv_ctx )
{
  {
  if ((unsigned long )recv_ctx->sds_rings != (unsigned long )((struct nx_host_sds_ring *)0)) {
    {
    kfree((void const *)recv_ctx->sds_rings);
    }
  } else {
  }
  recv_ctx->sds_rings = (struct nx_host_sds_ring *)0;
  return;
}
}
static int netxen_napi_add(struct netxen_adapter *adapter , struct net_device *netdev )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_recv_context *recv_ctx ;
  int tmp ;
  {
  {
  recv_ctx = & adapter->recv_ctx;
  tmp = netxen_alloc_sds_rings(recv_ctx, (int )adapter->max_sds_rings);
  }
  if (tmp != 0) {
    return (-12);
  } else {
  }
  ring = 0;
  goto ldv_51204;
  ldv_51203:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  netif_napi_add(netdev, & sds_ring->napi, & netxen_nic_poll, 64);
  ring = ring + 1;
  }
  ldv_51204: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51203;
  } else {
  }
  return (0);
}
}
static void netxen_napi_del(struct netxen_adapter *adapter )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_recv_context *recv_ctx ;
  {
  recv_ctx = & adapter->recv_ctx;
  ring = 0;
  goto ldv_51213;
  ldv_51212:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  netif_napi_del(& sds_ring->napi);
  ring = ring + 1;
  }
  ldv_51213: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51212;
  } else {
  }
  {
  netxen_free_sds_rings(& adapter->recv_ctx);
  }
  return;
}
}
static void netxen_napi_enable(struct netxen_adapter *adapter )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_recv_context *recv_ctx ;
  {
  recv_ctx = & adapter->recv_ctx;
  ring = 0;
  goto ldv_51222;
  ldv_51221:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  napi_enable(& sds_ring->napi);
  netxen_nic_enable_int(sds_ring);
  ring = ring + 1;
  }
  ldv_51222: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51221;
  } else {
  }
  return;
}
}
static void netxen_napi_disable(struct netxen_adapter *adapter )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_recv_context *recv_ctx ;
  {
  recv_ctx = & adapter->recv_ctx;
  ring = 0;
  goto ldv_51231;
  ldv_51230:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  netxen_nic_disable_int(sds_ring);
  napi_synchronize((struct napi_struct const *)(& sds_ring->napi));
  napi_disable(& sds_ring->napi);
  ring = ring + 1;
  }
  ldv_51231: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51230;
  } else {
  }
  return;
}
}
static int nx_set_dma_mask(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  uint64_t mask ;
  uint64_t cmask ;
  int tmp ;
  int tmp___0 ;
  {
  pdev = adapter->pdev;
  adapter->pci_using_dac = 0U;
  mask = 4294967295ULL;
  cmask = 4294967295ULL;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    mask = 34359738367ULL;
  } else {
    mask = 549755813887ULL;
    cmask = mask;
  }
  {
  tmp = pci_set_dma_mask(pdev, mask);
  }
  if (tmp == 0) {
    {
    tmp___0 = pci_set_consistent_dma_mask(pdev, cmask);
    }
    if (tmp___0 == 0) {
      adapter->pci_using_dac = 1U;
      return (0);
    } else {
    }
  } else {
  }
  return (-5);
}
}
static int nx_update_dma_mask(struct netxen_adapter *adapter )
{
  int change ;
  int shift ;
  int err ;
  uint64_t mask ;
  uint64_t old_mask ;
  uint64_t old_cmask ;
  struct pci_dev *pdev ;
  u32 tmp ;
  {
  {
  pdev = adapter->pdev;
  change = 0;
  tmp = (*(adapter->crb_read))(adapter, 136323788UL);
  shift = (int )tmp;
  }
  if (shift > 32) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U && shift > 9) {
    change = 1;
  } else
  if ((unsigned int )adapter->ahw.revision_id == 37U && shift <= 4) {
    change = 1;
  } else {
  }
  if (change != 0) {
    {
    old_mask = pdev->dma_mask;
    old_cmask = pdev->dev.coherent_dma_mask;
    mask = shift != 32 ? (1ULL << (shift + 32)) - 1ULL : 0xffffffffffffffffULL;
    err = pci_set_dma_mask(pdev, mask);
    }
    if (err != 0) {
      goto err_out;
    } else {
    }
    if ((unsigned int )adapter->ahw.revision_id > 47U) {
      {
      err = pci_set_consistent_dma_mask(pdev, mask);
      }
      if (err != 0) {
        goto err_out;
      } else {
      }
    } else {
    }
    {
    _dev_info((struct device const *)(& pdev->dev), "using %d-bit dma mask\n", shift + 32);
    }
  } else {
  }
  return (0);
  err_out:
  {
  pci_set_dma_mask(pdev, old_mask);
  pci_set_consistent_dma_mask(pdev, old_cmask);
  }
  return (err);
}
}
static int netxen_check_hw_init(struct netxen_adapter *adapter , int first_boot )
{
  u32 val ;
  u32 timeout ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  if (first_boot == 1431655765) {
    {
    (*(adapter->crb_write))(adapter, 136323580UL, 305419896U);
    }
    if ((unsigned int )adapter->ahw.revision_id > 37U) {
      return (0);
    } else {
    }
    {
    tmp = (*(adapter->crb_read))(adapter, 101711876UL);
    first_boot = (int )tmp;
    }
    if ((first_boot & 4) == 0) {
      {
      first_boot = first_boot | 4;
      (*(adapter->crb_write))(adapter, 101711876UL, (u32 )first_boot);
      (*(adapter->crb_read))(adapter, 101711876UL);
      }
    } else {
    }
    {
    tmp___0 = (*(adapter->crb_read))(adapter, 154140680UL);
    first_boot = (int )tmp___0;
    }
    if (first_boot != 8388623) {
      {
      (*(adapter->crb_write))(adapter, 136323580UL, 0U);
      }
      return (-5);
    } else {
    }
    {
    val = (*(adapter->crb_read))(adapter, 154140764UL);
    (*(adapter->crb_write))(adapter, 154140764UL, val | 1U);
    timeout = 0U;
    }
    ldv_51256:
    {
    msleep(1U);
    val = (*(adapter->crb_read))(adapter, 136323580UL);
    timeout = timeout + 1U;
    }
    if (timeout > 5000U) {
      return (-5);
    } else {
    }
    if (val == 305419896U) {
      goto ldv_51256;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void netxen_set_port_mode(struct netxen_adapter *adapter )
{
  u32 val ;
  u32 data ;
  {
  val = (u32 )adapter->ahw.board_type;
  if (val == 34U || val == 40U) {
    if (port_mode == 3) {
      {
      data = 3U;
      (*(adapter->crb_write))(adapter, 136323108UL, data);
      }
    } else
    if (port_mode == 1) {
      {
      data = 1U;
      (*(adapter->crb_write))(adapter, 136323108UL, data);
      }
    } else
    if (port_mode == 5) {
      {
      data = 5U;
      (*(adapter->crb_write))(adapter, 136323108UL, data);
      }
    } else
    if (port_mode == 6) {
      {
      data = 6U;
      (*(adapter->crb_write))(adapter, 136323108UL, data);
      }
    } else {
      {
      data = 4U;
      (*(adapter->crb_write))(adapter, 136323108UL, data);
      }
    }
    if (((wol_port_mode != 3 && wol_port_mode != 1) && wol_port_mode != 5) && wol_port_mode != 6) {
      wol_port_mode = 4;
    } else {
    }
    {
    (*(adapter->crb_write))(adapter, 136323480UL, (u32 )wol_port_mode);
    }
  } else {
  }
  return;
}
}
static void netxen_pcie_strap_init(struct netxen_adapter *adapter )
{
  u32 pdevfuncsave ;
  u32 c8c9value ;
  u32 chicken ;
  u32 control ;
  int i ;
  int pos ;
  struct pci_dev *pdev ;
  {
  {
  c8c9value = 0U;
  chicken = 0U;
  control = 0U;
  pdev = adapter->pdev;
  chicken = (*(adapter->crb_read))(adapter, 101785800UL);
  chicken = chicken & 4244635647U;
  pos = pci_find_capability(pdev, 16);
  }
  if (pos == 192) {
    {
    pci_read_config_dword((struct pci_dev const *)pdev, pos + 16, & control);
    }
    if ((control & 983040U) != 131072U) {
      chicken = chicken | 16777216U;
    } else {
    }
    {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Gen2 strapping detected\n");
    c8c9value = 987136U;
    }
  } else {
    {
    chicken = chicken | 16777216U;
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Gen1 strapping detected\n");
    }
    if ((unsigned int )adapter->ahw.revision_id == 64U) {
      c8c9value = 987168U;
    } else {
      c8c9value = 0U;
    }
  }
  {
  (*(adapter->crb_write))(adapter, 101785800UL, chicken);
  }
  if (c8c9value == 0U) {
    return;
  } else {
  }
  pdevfuncsave = pdev->devfn;
  if ((pdevfuncsave & 7U) != 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_51274;
  ldv_51273:
  {
  pci_read_config_dword((struct pci_dev const *)pdev, pos + 8, & control);
  pci_read_config_dword((struct pci_dev const *)pdev, pos + 8, & control);
  pci_write_config_dword((struct pci_dev const *)pdev, pos + 8, c8c9value);
  pdev->devfn = pdev->devfn + 1U;
  i = i + 1;
  }
  ldv_51274: ;
  if (i <= 7) {
    goto ldv_51273;
  } else {
  }
  pdev->devfn = pdevfuncsave;
  return;
}
}
static void netxen_set_msix_bit(struct pci_dev *pdev , int enable )
{
  u32 control ;
  {
  if ((unsigned int )pdev->msix_cap != 0U) {
    {
    pci_read_config_dword((struct pci_dev const *)pdev, (int )pdev->msix_cap, & control);
    }
    if (enable != 0) {
      control = control | 32768U;
    } else {
      control = 0U;
    }
    {
    pci_write_config_dword((struct pci_dev const *)pdev, (int )pdev->msix_cap, control);
    }
  } else {
  }
  return;
}
}
static void netxen_init_msix_entries(struct netxen_adapter *adapter , int count )
{
  int i ;
  {
  i = 0;
  goto ldv_51287;
  ldv_51286:
  adapter->msix_entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_51287: ;
  if (i < count) {
    goto ldv_51286;
  } else {
  }
  return;
}
}
static int netxen_read_mac_addr(struct netxen_adapter *adapter )
{
  int i ;
  unsigned char *p ;
  u64 mac_addr ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    tmp = netxen_p3_get_mac_addr(adapter, & mac_addr);
    }
    if (tmp != 0) {
      return (-5);
    } else {
    }
  } else {
    {
    tmp___0 = netxen_get_flash_mac_addr(adapter, & mac_addr);
    }
    if (tmp___0 != 0) {
      return (-5);
    } else {
    }
  }
  p = (unsigned char *)(& mac_addr);
  i = 0;
  goto ldv_51298;
  ldv_51297:
  *(netdev->dev_addr + (unsigned long )i) = *(p + (5UL - (unsigned long )i));
  i = i + 1;
  ldv_51298: ;
  if (i <= 5) {
    goto ldv_51297;
  } else {
  }
  {
  memcpy((void *)(& adapter->mac_addr), (void const *)netdev->dev_addr, (size_t )netdev->addr_len);
  tmp___1 = is_valid_ether_addr((u8 const *)netdev->dev_addr);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    {
    dev_warn((struct device const *)(& pdev->dev), "Bad MAC address %pM.\n", netdev->dev_addr);
    }
  } else {
  }
  return (0);
}
}
static int netxen_nic_set_mac(struct net_device *netdev , void *p )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
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
  tmp___2 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___2) {
    {
    netif_device_detach(netdev);
    netxen_napi_disable(adapter);
    }
  } else {
  }
  {
  memcpy((void *)(& adapter->mac_addr), (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  (*(adapter->macaddr_set))(adapter, (u8 *)(& addr->sa_data));
  tmp___3 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___3) {
    {
    netif_device_attach(netdev);
    netxen_napi_enable(adapter);
    }
  } else {
  }
  return (0);
}
}
static void netxen_set_multicast_list(struct net_device *dev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  (*(adapter->set_multi))(dev);
  }
  return;
}
}
static netdev_features_t netxen_fix_features(struct net_device *dev , netdev_features_t features )
{
  {
  if ((features & 4294967296ULL) == 0ULL) {
    {
    netdev_info((struct net_device const *)dev, "disabling LRO as RXCSUM is off\n");
    features = features & 0xffffffffffff7fffULL;
    }
  } else {
  }
  return (features);
}
}
static int netxen_set_features(struct net_device *dev , netdev_features_t features )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int hw_lro ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if (((dev->features ^ features) & 32768ULL) == 0ULL) {
    return (0);
  } else {
  }
  {
  hw_lro = (features & 32768ULL) != 0ULL ? 8 : 0;
  tmp___0 = netxen_config_hw_lro(adapter, hw_lro);
  }
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  if ((features & 32768ULL) == 0ULL) {
    {
    tmp___1 = netxen_send_lro_cleanup(adapter);
    }
    if (tmp___1 != 0) {
      return (-5);
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct net_device_ops const netxen_netdev_ops =
     {0, 0, & netxen_nic_open, & netxen_nic_close, & netxen_nic_xmit_frame, 0, 0, & netxen_set_multicast_list,
    & netxen_nic_set_mac, & eth_validate_addr, 0, 0, & netxen_nic_change_mtu, 0, & netxen_tx_timeout,
    & netxen_nic_get_stats, 0, 0, 0, & netxen_nic_poll_controller, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & netxen_fix_features, & netxen_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
__inline static bool netxen_function_zero(struct pci_dev *pdev )
{
  {
  return ((pdev->devfn & 7U) == 0U);
}
}
__inline static void netxen_set_interrupt_mode(struct netxen_adapter *adapter , u32 mode )
{
  {
  {
  (*(adapter->crb_write))(adapter, 136323652UL, mode);
  }
  return;
}
}
__inline static u32 netxen_get_interrupt_mode(struct netxen_adapter *adapter )
{
  u32 tmp ;
  {
  {
  tmp = (*(adapter->crb_read))(adapter, 136323652UL);
  }
  return (tmp);
}
}
static void netxen_initialize_interrupt_registers(struct netxen_adapter *adapter )
{
  struct netxen_legacy_intr_set *legacy_intrp ;
  u32 tgt_status_reg ;
  u32 int_state_reg ;
  {
  if ((unsigned int )adapter->ahw.revision_id > 63U) {
    legacy_intrp = (struct netxen_legacy_intr_set *)(& legacy_intr) + (unsigned long )adapter->ahw.pci_func;
  } else {
    legacy_intrp = (struct netxen_legacy_intr_set *)(& legacy_intr);
  }
  {
  tgt_status_reg = legacy_intrp->tgt_status_reg;
  int_state_reg = 101785708U;
  adapter->int_vec_bit = legacy_intrp->int_vec_bit;
  adapter->tgt_status_reg = netxen_get_ioaddr(adapter, tgt_status_reg);
  adapter->tgt_mask_reg = netxen_get_ioaddr(adapter, legacy_intrp->tgt_mask_reg);
  adapter->pci_int_reg = netxen_get_ioaddr(adapter, legacy_intrp->pci_int_reg);
  adapter->isr_int_vec = netxen_get_ioaddr(adapter, 101777664U);
  }
  if ((unsigned int )adapter->ahw.revision_id > 64U) {
    {
    adapter->crb_int_state_reg = netxen_get_ioaddr(adapter, int_state_reg);
    }
  } else {
    {
    adapter->crb_int_state_reg = netxen_get_ioaddr(adapter, 136323796U);
    }
  }
  return;
}
}
static int netxen_setup_msi_interrupts(struct netxen_adapter *adapter , int num_msix )
{
  struct pci_dev *pdev ;
  u32 value ;
  int err ;
  int tmp ;
  {
  pdev = adapter->pdev;
  if ((unsigned int )adapter->msix_supported != 0U) {
    {
    netxen_init_msix_entries(adapter, num_msix);
    err = pci_enable_msix(pdev, (struct msix_entry *)(& adapter->msix_entries), num_msix);
    }
    if (err == 0) {
      {
      adapter->flags = adapter->flags | 4U;
      netxen_set_msix_bit(pdev, 1);
      }
      if ((unsigned int )adapter->rss_supported != 0U) {
        adapter->max_sds_rings = (u8 )num_msix;
      } else {
      }
      {
      _dev_info((struct device const *)(& pdev->dev), "using msi-x interrupts\n");
      }
      return (0);
    } else {
    }
  } else {
  }
  if (use_msi != 0) {
    {
    tmp = pci_enable_msi_block(pdev, 1);
    }
    if (tmp == 0) {
      {
      value = msi_tgt_status[(int )adapter->ahw.pci_func];
      adapter->flags = adapter->flags | 2U;
      adapter->tgt_status_reg = netxen_get_ioaddr(adapter, value);
      adapter->msix_entries[0].vector = pdev->irq;
      _dev_info((struct device const *)(& pdev->dev), "using msi interrupts\n");
      }
      return (0);
    } else {
    }
  } else {
  }
  {
  dev_err((struct device const *)(& pdev->dev), "Failed to acquire MSI-X/MSI interrupt vector\n");
  }
  return (-5);
}
}
static int netxen_setup_intr(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  int num_msix ;
  unsigned int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  pdev = adapter->pdev;
  if ((unsigned int )adapter->rss_supported != 0U) {
    {
    tmp = cpumask_weight(cpu_online_mask);
    num_msix = tmp > 3U ? 4 : 2;
    }
  } else {
    num_msix = 1;
  }
  {
  adapter->max_sds_rings = 1U;
  adapter->flags = adapter->flags & 4294967289U;
  netxen_initialize_interrupt_registers(adapter);
  netxen_set_msix_bit(pdev, 0);
  tmp___3 = netxen_function_zero(pdev);
  }
  if ((int )tmp___3) {
    {
    tmp___0 = netxen_setup_msi_interrupts(adapter, num_msix);
    }
    if (tmp___0 == 0) {
      {
      netxen_set_interrupt_mode(adapter, 1U);
      }
    } else {
      {
      netxen_set_interrupt_mode(adapter, 2U);
      }
    }
  } else {
    {
    tmp___1 = netxen_get_interrupt_mode(adapter);
    }
    if (tmp___1 == 1U) {
      {
      tmp___2 = netxen_setup_msi_interrupts(adapter, num_msix);
      }
      if (tmp___2 != 0) {
        {
        dev_err((struct device const *)(& pdev->dev), "Co-existence of MSI-X/MSI and INTx interrupts is not supported\n");
        }
        return (-5);
      } else {
      }
    } else {
    }
  }
  if ((adapter->flags & 6U) == 0U) {
    {
    adapter->msix_entries[0].vector = pdev->irq;
    _dev_info((struct device const *)(& pdev->dev), "using legacy interrupts\n");
    }
  } else {
  }
  return (0);
}
}
static void netxen_teardown_intr(struct netxen_adapter *adapter )
{
  {
  if ((adapter->flags & 4U) != 0U) {
    {
    pci_disable_msix(adapter->pdev);
    }
  } else {
  }
  if ((adapter->flags & 2U) != 0U) {
    {
    pci_disable_msi(adapter->pdev);
    }
  } else {
  }
  return;
}
}
static void netxen_cleanup_pci_map(struct netxen_adapter *adapter )
{
  {
  if ((unsigned long )adapter->ahw.db_base != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)adapter->ahw.db_base);
    }
  } else {
  }
  if ((unsigned long )adapter->ahw.pci_base0 != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)adapter->ahw.pci_base0);
    }
  } else {
  }
  if ((unsigned long )adapter->ahw.pci_base1 != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)adapter->ahw.pci_base1);
    }
  } else {
  }
  if ((unsigned long )adapter->ahw.pci_base2 != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)adapter->ahw.pci_base2);
    }
  } else {
  }
  return;
}
}
static int netxen_setup_pci_map(struct netxen_adapter *adapter )
{
  void *db_ptr ;
  resource_size_t mem_base ;
  resource_size_t db_base ;
  unsigned long mem_len ;
  unsigned long db_len ;
  struct pci_dev *pdev ;
  int pci_func ;
  struct netxen_hardware_context *ahw ;
  int err ;
  {
  db_ptr = (void *)0;
  db_len = 0UL;
  pdev = adapter->pdev;
  pci_func = (int )adapter->ahw.pci_func;
  ahw = & adapter->ahw;
  err = 0;
  adapter->ahw.crb_win = 4294967295U;
  adapter->ahw.ocm_win = 4294967295U;
  mem_base = pdev->resource[0].start;
  mem_len = pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (unsigned long )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) : 0UL;
  if (mem_len == 134217728UL) {
    {
    ahw->pci_base0 = ioremap(mem_base, 1048576UL);
    ahw->pci_base1 = ioremap(mem_base + 100663296ULL, 9158656UL);
    ahw->pci_base2 = ioremap(mem_base + 118374400ULL, 15843328UL);
    }
    if (((unsigned long )ahw->pci_base0 == (unsigned long )((void *)0) || (unsigned long )ahw->pci_base1 == (unsigned long )((void *)0)) || (unsigned long )ahw->pci_base2 == (unsigned long )((void *)0)) {
      {
      dev_err((struct device const *)(& pdev->dev), "failed to map PCI bar 0\n");
      err = -5;
      }
      goto err_out;
    } else {
    }
    ahw->pci_len0 = 1048576UL;
  } else
  if (mem_len == 33554432UL) {
    {
    ahw->pci_base1 = ioremap(mem_base, 9158656UL);
    ahw->pci_base2 = ioremap(mem_base + 17711104ULL, 15843328UL);
    }
    if ((unsigned long )ahw->pci_base1 == (unsigned long )((void *)0) || (unsigned long )ahw->pci_base2 == (unsigned long )((void *)0)) {
      {
      dev_err((struct device const *)(& pdev->dev), "failed to map PCI bar 0\n");
      err = -5;
      }
      goto err_out;
    } else {
    }
  } else
  if (mem_len == 2097152UL) {
    {
    ahw->pci_base0 = pci_ioremap_bar(pdev, 0);
    }
    if ((unsigned long )ahw->pci_base0 == (unsigned long )((void *)0)) {
      {
      dev_err((struct device const *)(& pdev->dev), "failed to map PCI bar 0\n");
      }
      return (-5);
    } else {
    }
    ahw->pci_len0 = mem_len;
  } else {
    return (-5);
  }
  {
  netxen_setup_hwops(adapter);
  _dev_info((struct device const *)(& pdev->dev), "%dMB memory map\n", (int )(mem_len >> 20));
  }
  if ((unsigned int )adapter->ahw.revision_id > 79U) {
    {
    adapter->ahw.ocm_win_crb = netxen_get_ioaddr(adapter, ((u32 )pci_func + 3180608U) * 32U);
    }
  } else
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    adapter->ahw.ocm_win_crb = netxen_get_ioaddr(adapter, pci_func <= 3 ? ((u32 )pci_func + 3180560U) * 32U : ((u32 )pci_func + 6361126U) * 16U);
    }
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    goto skip_doorbell;
  } else {
  }
  db_base = pdev->resource[4].start;
  db_len = pdev->resource[4].start != 0ULL || pdev->resource[4].end != pdev->resource[4].start ? (unsigned long )((pdev->resource[4].end - pdev->resource[4].start) + 1ULL) : 0UL;
  if (db_len == 0UL) {
    {
    printk("\v%s: doorbell is disabled\n", (char *)(& netxen_nic_driver_name));
    err = -5;
    }
    goto err_out;
  } else {
  }
  {
  db_ptr = ioremap(db_base, 4096UL);
  }
  if ((unsigned long )db_ptr == (unsigned long )((void *)0)) {
    {
    printk("\v%s: Failed to allocate doorbell map.", (char *)(& netxen_nic_driver_name));
    err = -5;
    }
    goto err_out;
  } else {
  }
  skip_doorbell:
  adapter->ahw.db_base = db_ptr;
  adapter->ahw.db_len = db_len;
  return (0);
  err_out:
  {
  netxen_cleanup_pci_map(adapter);
  }
  return (err);
}
}
static void netxen_check_options(struct netxen_adapter *adapter )
{
  u32 fw_major ;
  u32 fw_minor ;
  u32 fw_build ;
  u32 prev_fw_version ;
  char brd_name[32U] ;
  char serial_num[32U] ;
  int i ;
  int offset ;
  int val ;
  int err ;
  __le32 *ptr32 ;
  struct pci_dev *pdev ;
  int tmp ;
  int tmp___0 ;
  struct module *__mod ;
  u32 tmp___1 ;
  u32 flashed_ver ;
  {
  pdev = adapter->pdev;
  adapter->driver_mismatch = 0U;
  ptr32 = (__le32 *)(& serial_num);
  offset = 4098076;
  i = 0;
  goto ldv_51385;
  ldv_51384:
  {
  tmp = netxen_rom_fast_read(adapter, offset, & val);
  }
  if (tmp == -1) {
    {
    dev_err((struct device const *)(& pdev->dev), "error reading board info\n");
    adapter->driver_mismatch = 1U;
    }
    return;
  } else {
  }
  *(ptr32 + (unsigned long )i) = (unsigned int )val;
  offset = (int )((unsigned int )offset + 4U);
  i = i + 1;
  ldv_51385: ;
  if (i <= 7) {
    goto ldv_51384;
  } else {
  }
  {
  fw_major = (*(adapter->crb_read))(adapter, 136323408UL);
  fw_minor = (*(adapter->crb_read))(adapter, 136323412UL);
  fw_build = (*(adapter->crb_read))(adapter, 136323416UL);
  prev_fw_version = adapter->fw_version;
  adapter->fw_version = ((fw_major << 24) + (fw_minor << 16)) + fw_build;
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    if ((unsigned long )adapter->mdump.md_template == (unsigned long )((void *)0) || adapter->fw_version > prev_fw_version) {
      {
      kfree((void const *)adapter->mdump.md_template);
      adapter->mdump.md_template = (void *)0;
      err = netxen_setup_minidump(adapter);
      }
      if (err != 0) {
        {
        dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to setup minidump rcode = %d\n",
                err);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )adapter->portnum == 0U) {
    {
    tmp___0 = netxen_nic_get_brd_name_by_type((u32 )adapter->ahw.board_type, (char *)(& brd_name));
    }
    if (tmp___0 != 0) {
      {
      strcpy((char *)(& serial_num), "Unknown");
      }
    } else {
    }
    {
    __mod = & __this_module;
    printk("\016%s: %s Board S/N %s  Chip rev 0x%x\n", (unsigned long )__mod != (unsigned long )((struct module *)0) ? (char *)(& __mod->name) : (char *)"kernel",
           (char *)(& brd_name), (char *)(& serial_num), (int )adapter->ahw.revision_id);
    }
  } else {
  }
  if (adapter->fw_version <= 50594007U) {
    {
    adapter->driver_mismatch = 1U;
    dev_warn((struct device const *)(& pdev->dev), "firmware version %d.%d.%d unsupported\n",
             fw_major, fw_minor, fw_build);
    }
    return;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    tmp___1 = (*(adapter->crb_read))(adapter, 105906220UL);
    i = (int )tmp___1;
    adapter->ahw.cut_through = (i & 32768) != 0;
    }
  } else {
  }
  {
  _dev_info((struct device const *)(& pdev->dev), "Driver v%s, firmware v%d.%d.%d [%s]\n",
            (char *)"4.0.82", fw_major, fw_minor, fw_build, (unsigned int )adapter->ahw.cut_through != 0U ? (char *)"cut-through" : (char *)"legacy");
  }
  if (adapter->fw_version > 67109085U) {
    {
    adapter->capabilities = (*(adapter->crb_read))(adapter, 136323368UL);
    }
  } else {
  }
  if ((unsigned int )adapter->ahw.port_type == 2U) {
    adapter->num_rxd = 4096U;
    adapter->num_jumbo_rxd = 1024U;
  } else
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    adapter->num_rxd = 2048U;
    adapter->num_jumbo_rxd = 512U;
  } else {
  }
  adapter->msix_supported = 0U;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    adapter->msix_supported = use_msi_x != 0;
    adapter->rss_supported = use_msi_x != 0;
  } else {
    {
    flashed_ver = 0U;
    netxen_rom_fast_read(adapter, 4097032, (int *)(& flashed_ver));
    flashed_ver = ((flashed_ver << 24) + (((flashed_ver >> 8) & 255U) << 16)) + (flashed_ver >> 16);
    }
    if (flashed_ver > 50594127U) {
      {
      if ((int )adapter->ahw.board_type == 11) {
        goto case_11;
      } else {
      }
      if ((int )adapter->ahw.board_type == 15) {
        goto case_15;
      } else {
      }
      goto switch_default;
      case_11: ;
      case_15:
      adapter->msix_supported = use_msi_x != 0;
      adapter->rss_supported = use_msi_x != 0;
      goto ldv_51392;
      switch_default: ;
      goto ldv_51392;
      switch_break: ;
      }
      ldv_51392: ;
    } else {
    }
  }
  adapter->num_txd = 1024U;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    adapter->num_lro_rxd = 8U;
    adapter->max_rds_rings = 3U;
  } else {
    adapter->num_lro_rxd = 0U;
    adapter->max_rds_rings = 2U;
  }
  return;
}
}
static int netxen_start_firmware(struct netxen_adapter *adapter )
{
  int val ;
  int err ;
  int first_boot ;
  struct pci_dev *pdev ;
  u32 tmp ;
  {
  {
  pdev = adapter->pdev;
  err = nx_set_dma_mask(adapter);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = netxen_can_start_firmware(adapter);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if (err == 0) {
    goto wait_init;
  } else {
  }
  {
  tmp = (*(adapter->crb_read))(adapter, 136323580UL);
  first_boot = (int )tmp;
  err = netxen_check_hw_init(adapter, first_boot);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "error in init HW init sequence\n");
    }
    return (err);
  } else {
  }
  {
  netxen_request_firmware(adapter);
  err = netxen_need_fw_reset(adapter);
  }
  if (err < 0) {
    goto err_out;
  } else {
  }
  if (err == 0) {
    goto pcie_strap_init;
  } else {
  }
  if (first_boot != 1431655765) {
    {
    (*(adapter->crb_write))(adapter, 136323664UL, 0U);
    netxen_pinit_from_rom(adapter);
    msleep(1U);
    }
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323788UL, 1431655765U);
  (*(adapter->crb_write))(adapter, 136323240UL, 0U);
  (*(adapter->crb_write))(adapter, 136323244UL, 0U);
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    netxen_set_port_mode(adapter);
    }
  } else {
  }
  {
  err = netxen_load_firmware(adapter);
  }
  if (err != 0) {
    goto err_out;
  } else {
  }
  {
  netxen_release_firmware(adapter);
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    val = 30292;
    if ((unsigned int )adapter->ahw.port_type == 2U) {
      val = val | 251658240;
    } else {
    }
    {
    (*(adapter->crb_write))(adapter, 106958848UL, (u32 )val);
    }
  } else {
  }
  {
  err = netxen_init_dummy_dma(adapter);
  }
  if (err != 0) {
    goto err_out;
  } else {
  }
  {
  val = 262226;
  (*(adapter->crb_write))(adapter, 136324256UL, (u32 )val);
  }
  pcie_strap_init: ;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    netxen_pcie_strap_init(adapter);
    }
  } else {
  }
  wait_init:
  {
  err = netxen_phantom_init(adapter, 0);
  }
  if (err != 0) {
    {
    netxen_free_dummy_dma(adapter);
    }
    goto err_out;
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323392UL, 3U);
  nx_update_dma_mask(adapter);
  netxen_check_options(adapter);
  adapter->need_fw_reset = 0U;
  }
  err_out:
  {
  netxen_release_firmware(adapter);
  }
  return (err);
}
}
static int netxen_nic_request_irq(struct netxen_adapter *adapter )
{
  irqreturn_t (*handler)(int , void * ) ;
  struct nx_host_sds_ring *sds_ring ;
  int err ;
  int ring ;
  unsigned long flags ;
  struct net_device *netdev ;
  struct netxen_recv_context *recv_ctx ;
  {
  flags = 0UL;
  netdev = adapter->netdev;
  recv_ctx = & adapter->recv_ctx;
  if ((adapter->flags & 4U) != 0U) {
    handler = & netxen_msix_intr;
  } else
  if ((adapter->flags & 2U) != 0U) {
    handler = & netxen_msi_intr;
  } else {
    flags = flags | 128UL;
    handler = & netxen_intr;
  }
  adapter->irq = (u32 )netdev->irq;
  ring = 0;
  goto ldv_51415;
  ldv_51414:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  sprintf((char *)(& sds_ring->name), "%s[%d]", (char *)(& netdev->name), ring);
  err = ldv_request_irq_77((unsigned int )sds_ring->irq, handler, flags, (char const *)(& sds_ring->name),
                           (void *)sds_ring);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  ring = ring + 1;
  ldv_51415: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51414;
  } else {
  }
  return (0);
}
}
static void netxen_nic_free_irq(struct netxen_adapter *adapter )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_recv_context *recv_ctx ;
  {
  recv_ctx = & adapter->recv_ctx;
  ring = 0;
  goto ldv_51424;
  ldv_51423:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  ldv_free_irq_78((unsigned int )sds_ring->irq, (void *)sds_ring);
  ring = ring + 1;
  }
  ldv_51424: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51423;
  } else {
  }
  return;
}
}
static void netxen_nic_init_coalesce_defaults(struct netxen_adapter *adapter )
{
  {
  adapter->coal.flags = 4U;
  adapter->coal.normal.data.rx_time_us = 3U;
  adapter->coal.normal.data.rx_packets = 256U;
  adapter->coal.normal.data.tx_time_us = 4U;
  adapter->coal.normal.data.tx_packets = 64U;
  return;
}
}
static int __netxen_nic_up(struct netxen_adapter *adapter , struct net_device *netdev )
{
  int err ;
  {
  if ((unsigned int )adapter->is_up != 777U) {
    return (-5);
  } else {
  }
  {
  err = (*(adapter->init_port))(adapter, (int )adapter->physical_port);
  }
  if (err != 0) {
    {
    printk("\v%s: Failed to initialize port %d\n", (char *)(& netxen_nic_driver_name),
           (int )adapter->portnum);
    }
    return (err);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    (*(adapter->macaddr_set))(adapter, (u8 *)(& adapter->mac_addr));
    }
  } else {
  }
  {
  (*(adapter->set_multi))(netdev);
  (*(adapter->set_mtu))(adapter, (int )netdev->mtu);
  adapter->ahw.linkup = 0U;
  }
  if ((unsigned int )adapter->max_sds_rings > 1U) {
    {
    netxen_config_rss(adapter, 1);
    }
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    netxen_config_intr_coalesce(adapter);
    }
  } else {
  }
  if ((netdev->features & 32768ULL) != 0ULL) {
    {
    netxen_config_hw_lro(adapter, 8);
    }
  } else {
  }
  {
  netxen_napi_enable(adapter);
  }
  if ((adapter->capabilities & 32U) != 0U) {
    {
    netxen_linkevent_request(adapter, 1);
    }
  } else {
    {
    netxen_nic_set_link_parameters(adapter);
    }
  }
  {
  set_bit(1L, (unsigned long volatile *)(& adapter->state));
  }
  return (0);
}
}
__inline static int netxen_nic_up(struct netxen_adapter *adapter , struct net_device *netdev )
{
  int err ;
  bool tmp ;
  {
  {
  err = 0;
  rtnl_lock();
  tmp = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp) {
    {
    err = __netxen_nic_up(adapter, netdev);
    }
  } else {
  }
  {
  rtnl_unlock();
  }
  return (err);
}
}
static void __netxen_nic_down(struct netxen_adapter *adapter , struct net_device *netdev )
{
  int tmp ;
  {
  if ((unsigned int )adapter->is_up != 777U) {
    return;
  } else {
  }
  {
  tmp = test_and_clear_bit(1L, (unsigned long volatile *)(& adapter->state));
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  __asm__ volatile ("mfence": : : "memory");
  ldv_spin_lock_79___0(& adapter->tx_clean_lock);
  netif_carrier_off(netdev);
  netif_tx_disable(netdev);
  }
  if ((adapter->capabilities & 32U) != 0U) {
    {
    netxen_linkevent_request(adapter, 0);
    }
  } else {
  }
  if ((unsigned long )adapter->stop_port != (unsigned long )((int (*)(struct netxen_adapter * ))0)) {
    {
    (*(adapter->stop_port))(adapter);
    }
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    netxen_p3_free_mac_list(adapter);
    }
  } else {
  }
  {
  (*(adapter->set_promisc))(adapter, 0U);
  netxen_napi_disable(adapter);
  netxen_release_tx_buffers(adapter);
  ldv_spin_unlock_80___0(& adapter->tx_clean_lock);
  }
  return;
}
}
__inline static void netxen_nic_down(struct netxen_adapter *adapter , struct net_device *netdev )
{
  bool tmp ;
  {
  {
  rtnl_lock();
  tmp = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp) {
    {
    __netxen_nic_down(adapter, netdev);
    }
  } else {
  }
  {
  rtnl_unlock();
  }
  return;
}
}
static int netxen_nic_attach(struct netxen_adapter *adapter )
{
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  int err ;
  int ring ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  u32 capab2 ;
  {
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  if ((unsigned int )adapter->is_up == 777U) {
    return (0);
  } else {
  }
  {
  err = netxen_init_firmware(adapter);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  adapter->flags = adapter->flags & 4294967167U;
  if ((int )adapter->capabilities < 0) {
    {
    capab2 = (*(adapter->crb_read))(adapter, 136323372UL);
    }
    if ((capab2 & 4U) != 0U) {
      adapter->flags = adapter->flags | 128U;
    } else {
    }
  } else {
  }
  {
  err = netxen_napi_add(adapter, netdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = netxen_alloc_sw_resources(adapter);
  }
  if (err != 0) {
    {
    printk("\v%s: Error in setting sw resources\n", (char *)(& netdev->name));
    }
    return (err);
  } else {
  }
  {
  err = netxen_alloc_hw_resources(adapter);
  }
  if (err != 0) {
    {
    printk("\v%s: Error in setting hw resources\n", (char *)(& netdev->name));
    }
    goto err_out_free_sw;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    tx_ring = adapter->tx_ring;
    tx_ring->crb_cmd_producer = netxen_get_ioaddr(adapter, crb_cmd_producer[(int )adapter->portnum]);
    tx_ring->crb_cmd_consumer = netxen_get_ioaddr(adapter, crb_cmd_consumer[(int )adapter->portnum]);
    tx_ring->producer = 0U;
    tx_ring->sw_consumer = 0U;
    netxen_nic_update_cmd_producer(adapter, tx_ring);
    netxen_nic_update_cmd_consumer(adapter, tx_ring);
    }
  } else {
  }
  ring = 0;
  goto ldv_51459;
  ldv_51458:
  {
  rds_ring = adapter->recv_ctx.rds_rings + (unsigned long )ring;
  netxen_post_rx_buffers(adapter, (u32 )ring, rds_ring);
  ring = ring + 1;
  }
  ldv_51459: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_51458;
  } else {
  }
  {
  err = netxen_nic_request_irq(adapter);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: failed to setup interrupt\n",
            (char *)(& netdev->name));
    }
    goto err_out_free_rxbuf;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    netxen_nic_init_coalesce_defaults(adapter);
    }
  } else {
  }
  {
  netxen_create_sysfs_entries(adapter);
  adapter->is_up = 777U;
  }
  return (0);
  err_out_free_rxbuf:
  {
  netxen_release_rx_buffers(adapter);
  netxen_free_hw_resources(adapter);
  }
  err_out_free_sw:
  {
  netxen_free_sw_resources(adapter);
  }
  return (err);
}
}
static void netxen_nic_detach(struct netxen_adapter *adapter )
{
  {
  if ((unsigned int )adapter->is_up != 777U) {
    return;
  } else {
  }
  {
  netxen_remove_sysfs_entries(adapter);
  netxen_free_hw_resources(adapter);
  netxen_release_rx_buffers(adapter);
  netxen_nic_free_irq(adapter);
  netxen_napi_del(adapter);
  netxen_free_sw_resources(adapter);
  adapter->is_up = 0U;
  }
  return;
}
}
int netxen_nic_reset_context(struct netxen_adapter *adapter )
{
  int err ;
  struct net_device *netdev ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  {
  err = 0;
  netdev = adapter->netdev;
  tmp = test_and_clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  if (tmp != 0) {
    return (-16);
  } else {
  }
  if ((unsigned int )adapter->is_up == 777U) {
    {
    netif_device_detach(netdev);
    tmp___0 = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp___0) {
      {
      __netxen_nic_down(adapter, netdev);
      }
    } else {
    }
    {
    netxen_nic_detach(adapter);
    tmp___1 = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp___1) {
      {
      err = netxen_nic_attach(adapter);
      }
      if (err == 0) {
        {
        err = __netxen_nic_up(adapter, netdev);
        }
      } else {
      }
      if (err != 0) {
        goto done;
      } else {
      }
    } else {
    }
    {
    netif_device_attach(netdev);
    }
  } else {
  }
  done:
  {
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  return (err);
}
}
static int netxen_setup_netdev(struct netxen_adapter *adapter , struct net_device *netdev )
{
  int err ;
  struct pci_dev *pdev ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  int tmp ;
  {
  err = 0;
  pdev = adapter->pdev;
  adapter->mc_enabled = 0U;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    adapter->max_mc_count = 38U;
  } else {
    adapter->max_mc_count = 16U;
  }
  {
  netdev->netdev_ops = & netxen_netdev_ops;
  netdev->watchdog_timeo = 1250;
  netxen_nic_change_mtu(netdev, (int )netdev->mtu);
  netdev->ethtool_ops = & netxen_nic_ethtool_ops;
  netdev->hw_features = 4295032835ULL;
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    netdev->hw_features = netdev->hw_features | 1048592ULL;
  } else {
  }
  netdev->vlan_features = netdev->vlan_features | netdev->hw_features;
  if ((unsigned int )adapter->pci_using_dac != 0U) {
    netdev->features = netdev->features | 32ULL;
    netdev->vlan_features = netdev->vlan_features | 32ULL;
  } else {
  }
  if ((adapter->capabilities & 512U) != 0U) {
    netdev->hw_features = netdev->hw_features | 128ULL;
  } else {
  }
  if ((adapter->capabilities & 1024U) != 0U) {
    netdev->hw_features = netdev->hw_features | 32768ULL;
  } else {
  }
  {
  netdev->features = netdev->features | netdev->hw_features;
  netdev->irq = (int )adapter->msix_entries[0].vector;
  __init_work(& adapter->tx_timeout_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->tx_timeout_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->tx_timeout_task.lockdep_map, "(&adapter->tx_timeout_task)",
                   & __key, 0);
  INIT_LIST_HEAD(& adapter->tx_timeout_task.entry);
  adapter->tx_timeout_task.func = & netxen_tx_timeout_task;
  tmp = netxen_read_mac_addr(adapter);
  }
  if (tmp != 0) {
    {
    dev_warn((struct device const *)(& pdev->dev), "failed to read mac addr\n");
    }
  } else {
  }
  {
  netif_carrier_off(netdev);
  err = ldv_register_netdev_81(netdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to register net device\n");
    }
    return (err);
  } else {
  }
  return (0);
}
}
static void netxen_read_ula_info(struct netxen_adapter *adapter )
{
  u32 temp ;
  {
  if ((unsigned int )adapter->portnum != 0U) {
    return;
  } else {
  }
  {
  temp = (*(adapter->crb_read))(adapter, 136323448UL);
  }
  {
  if (temp == 3671960833U) {
    goto case_3671960833;
  } else {
  }
  if (temp == 3671960832U) {
    goto case_3671960832;
  } else {
  }
  goto switch_default;
  case_3671960833:
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "ULA adapter");
  }
  goto ldv_51484;
  case_3671960832:
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "non ULA adapter");
  }
  goto ldv_51484;
  switch_default: ;
  goto ldv_51484;
  switch_break: ;
  }
  ldv_51484: ;
  return;
}
}
static void netxen_mask_aer_correctable(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct pci_dev *root ;
  u32 aer_pos ;
  int tmp ;
  int tmp___0 ;
  {
  pdev = adapter->pdev;
  root = (pdev->bus)->self;
  if ((unsigned long )root == (unsigned long )((struct pci_dev *)0)) {
    return;
  } else {
  }
  if ((unsigned int )adapter->ahw.board_type != 41U && (unsigned int )adapter->ahw.board_type != 128U) {
    return;
  } else {
  }
  {
  tmp = pci_pcie_type((struct pci_dev const *)root);
  }
  if (tmp != 4) {
    return;
  } else {
  }
  {
  tmp___0 = pci_find_ext_capability(root, 1);
  aer_pos = (u32 )tmp___0;
  }
  if (aer_pos == 0U) {
    return;
  } else {
  }
  {
  pci_write_config_dword((struct pci_dev const *)root, (int )(aer_pos + 20U), 65535U);
  }
  return;
}
}
static int netxen_nic_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct netxen_adapter *adapter ;
  int i ;
  int err ;
  int pci_func_id ;
  uint8_t revision_id ;
  u32 val ;
  struct module *__mod ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  u32 tmp___0 ;
  {
  netdev = (struct net_device *)0;
  adapter = (struct netxen_adapter *)0;
  i = 0;
  pci_func_id = (int )pdev->devfn & 7;
  if ((unsigned int )pdev->revision - 48U <= 17U) {
    {
    __mod = & __this_module;
    printk("\f%s: chip revisions between 0x%x-0x%x will not be enabled.\n", (unsigned long )__mod != (unsigned long )((struct module *)0) ? (char *)(& __mod->name) : (char *)"kernel",
           48, 65);
    }
    return (-19);
  } else {
  }
  {
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((pdev->resource[0].flags & 512UL) == 0UL) {
    err = -19;
    goto err_out_disable_pdev;
  } else {
  }
  {
  err = pci_request_regions(pdev, (char const *)(& netxen_nic_driver_name));
  }
  if (err != 0) {
    goto err_out_disable_pdev;
  } else {
  }
  if ((unsigned int )pdev->revision > 47U) {
    {
    pci_enable_pcie_error_reporting(pdev);
    }
  } else {
  }
  {
  pci_set_master(pdev);
  netdev = ldv_alloc_etherdev_mqs_82(1168, 1U, 1U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_out_free_res;
  } else {
  }
  {
  netdev->dev.parent = & pdev->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  adapter->netdev = netdev;
  adapter->pdev = pdev;
  adapter->ahw.pci_func = (u8 )pci_func_id;
  revision_id = pdev->revision;
  adapter->ahw.revision_id = revision_id;
  __rwlock_init(& adapter->ahw.crb_lock, "&adapter->ahw.crb_lock", & __key);
  spinlock_check(& adapter->ahw.mem_lock);
  __raw_spin_lock_init(& adapter->ahw.mem_lock.__annonCompField19.rlock, "&(&adapter->ahw.mem_lock)->rlock",
                       & __key___0);
  spinlock_check(& adapter->tx_clean_lock);
  __raw_spin_lock_init(& adapter->tx_clean_lock.__annonCompField19.rlock, "&(&adapter->tx_clean_lock)->rlock",
                       & __key___1);
  INIT_LIST_HEAD(& adapter->mac_list);
  INIT_LIST_HEAD(& adapter->ip_list);
  err = netxen_setup_pci_map(adapter);
  }
  if (err != 0) {
    goto err_out_free_netdev;
  } else {
  }
  {
  adapter->portnum = (u8 )pci_func_id;
  err = netxen_nic_get_board_info(adapter);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Error getting board config info.\n");
    }
    goto err_out_iounmap;
  } else {
  }
  {
  netxen_mask_aer_correctable(adapter);
  }
  {
  if ((int )adapter->ahw.board_type == 13) {
    goto case_13;
  } else {
  }
  if ((int )adapter->ahw.board_type == 14) {
    goto case_14;
  } else {
  }
  goto switch_default;
  case_13: ;
  case_14: ;
  if (pci_func_id > 1) {
    adapter->portnum = (unsigned int )((u8 )pci_func_id) + 254U;
  } else {
  }
  goto ldv_51515;
  switch_default: ;
  goto ldv_51515;
  switch_break: ;
  }
  ldv_51515:
  {
  err = netxen_check_flash_fw_compatibility(adapter);
  }
  if (err != 0) {
    goto err_out_iounmap;
  } else {
  }
  if ((unsigned int )adapter->portnum == 0U) {
    {
    val = (*(adapter->crb_read))(adapter, 136323384UL);
    }
    if (val - 1U <= 4294967293U) {
      {
      (*(adapter->crb_write))(adapter, 136323384UL, 0U);
      adapter->need_fw_reset = 1U;
      }
    } else {
    }
  } else {
  }
  {
  err = netxen_start_firmware(adapter);
  }
  if (err != 0) {
    goto err_out_decr_ref;
  } else {
  }
  adapter->physical_port = adapter->portnum;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    tmp___0 = (*(adapter->crb_read))(adapter, (unsigned long )((int )adapter->portnum * 4) + 136324240UL);
    i = (int )tmp___0;
    }
    if (i != 1431655765) {
      adapter->physical_port = (u8 )i;
    } else {
    }
  } else {
  }
  {
  netxen_nic_clear_stats(adapter);
  err = netxen_setup_intr(adapter);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to setup interrupts, error = %d\n",
            err);
    }
    goto err_out_disable_msi;
  } else {
  }
  {
  netxen_read_ula_info(adapter);
  err = netxen_setup_netdev(adapter, netdev);
  }
  if (err != 0) {
    goto err_out_disable_msi;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)adapter);
  netxen_schedule_work(adapter, & netxen_fw_poll_work, 500);
  }
  {
  if ((int )adapter->ahw.port_type == 1) {
    goto case_1;
  } else {
  }
  if ((int )adapter->ahw.port_type == 2) {
    goto case_2;
  } else {
  }
  goto switch_break___0;
  case_1:
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s: GbE port initialized\n",
            (char *)(& (adapter->netdev)->name));
  }
  goto ldv_51520;
  case_2:
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s: XGbE port initialized\n",
            (char *)(& (adapter->netdev)->name));
  }
  goto ldv_51520;
  switch_break___0: ;
  }
  ldv_51520:
  {
  netxen_create_diag_entries(adapter);
  }
  return (0);
  err_out_disable_msi:
  {
  netxen_teardown_intr(adapter);
  netxen_free_dummy_dma(adapter);
  }
  err_out_decr_ref:
  {
  nx_decr_dev_ref_cnt(adapter);
  }
  err_out_iounmap:
  {
  netxen_cleanup_pci_map(adapter);
  }
  err_out_free_netdev:
  {
  ldv_free_netdev_83(netdev);
  }
  err_out_free_res:
  {
  pci_release_regions(pdev);
  }
  err_out_disable_pdev:
  {
  pci_disable_device(pdev);
  }
  return (err);
}
}
static void netxen_cleanup_minidump(struct netxen_adapter *adapter )
{
  {
  {
  kfree((void const *)adapter->mdump.md_template);
  adapter->mdump.md_template = (void *)0;
  }
  if ((unsigned long )adapter->mdump.md_capture_buff != (unsigned long )((void *)0)) {
    {
    vfree((void const *)adapter->mdump.md_capture_buff);
    adapter->mdump.md_capture_buff = (void *)0;
    }
  } else {
  }
  return;
}
}
static void netxen_nic_remove(struct pci_dev *pdev )
{
  struct netxen_adapter *adapter ;
  struct net_device *netdev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if ((unsigned long )adapter == (unsigned long )((struct netxen_adapter *)0)) {
    return;
  } else {
  }
  {
  netdev = adapter->netdev;
  netxen_cancel_fw_work(adapter);
  ldv_unregister_netdev_84(netdev);
  cancel_work_sync(& adapter->tx_timeout_task);
  netxen_free_ip_list(adapter, 0);
  netxen_nic_detach(adapter);
  nx_decr_dev_ref_cnt(adapter);
  }
  if ((unsigned int )adapter->portnum == 0U) {
    {
    netxen_free_dummy_dma(adapter);
    }
  } else {
  }
  {
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  netxen_teardown_intr(adapter);
  netxen_set_interrupt_mode(adapter, 0U);
  netxen_remove_diag_entries(adapter);
  netxen_cleanup_pci_map(adapter);
  netxen_release_firmware(adapter);
  }
  if ((unsigned int )pdev->revision > 47U) {
    {
    netxen_cleanup_minidump(adapter);
    pci_disable_pcie_error_reporting(pdev);
    }
  } else {
  }
  {
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_85(netdev);
  }
  return;
}
}
static void netxen_nic_detach_func(struct netxen_adapter *adapter )
{
  struct net_device *netdev ;
  bool tmp ;
  {
  {
  netdev = adapter->netdev;
  netif_device_detach(netdev);
  netxen_cancel_fw_work(adapter);
  tmp = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp) {
    {
    netxen_nic_down(adapter, netdev);
    }
  } else {
  }
  {
  cancel_work_sync(& adapter->tx_timeout_task);
  netxen_nic_detach(adapter);
  }
  if ((unsigned int )adapter->portnum == 0U) {
    {
    netxen_free_dummy_dma(adapter);
    }
  } else {
  }
  {
  nx_decr_dev_ref_cnt(adapter);
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  return;
}
}
static int netxen_nic_attach_func(struct pci_dev *pdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  int err ;
  bool tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct netxen_adapter *)tmp;
  netdev = adapter->netdev;
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  pci_set_power_state(pdev, 0);
  pci_set_master(pdev);
  pci_restore_state(pdev);
  adapter->ahw.crb_win = 4294967295U;
  adapter->ahw.ocm_win = 4294967295U;
  err = netxen_start_firmware(adapter);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to start firmware\n");
    }
    return (err);
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___0) {
    {
    err = netxen_nic_attach(adapter);
    }
    if (err != 0) {
      goto err_out;
    } else {
    }
    {
    err = netxen_nic_up(adapter, netdev);
    }
    if (err != 0) {
      goto err_out_detach;
    } else {
    }
    {
    netxen_restore_indev_addr(netdev, 1UL);
    }
  } else {
  }
  {
  netif_device_attach(netdev);
  netxen_schedule_work(adapter, & netxen_fw_poll_work, 500);
  }
  return (0);
  err_out_detach:
  {
  netxen_nic_detach(adapter);
  }
  err_out:
  {
  nx_decr_dev_ref_cnt(adapter);
  }
  return (err);
}
}
static pci_ers_result_t netxen_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if (state == 3U) {
    return (4U);
  } else {
  }
  {
  tmp___0 = nx_dev_request_aer(adapter);
  }
  if (tmp___0 != 0) {
    return (5U);
  } else {
  }
  {
  netxen_nic_detach_func(adapter);
  pci_disable_device(pdev);
  }
  return (3U);
}
}
static pci_ers_result_t netxen_io_slot_reset(struct pci_dev *pdev )
{
  int err ;
  {
  {
  err = 0;
  err = netxen_nic_attach_func(pdev);
  }
  return (err != 0 ? 4U : 5U);
}
}
static void netxen_io_resume(struct pci_dev *pdev )
{
  {
  {
  pci_cleanup_aer_uncorrect_error_status(pdev);
  }
  return;
}
}
static void netxen_nic_shutdown(struct pci_dev *pdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct netxen_adapter *)tmp;
  netxen_nic_detach_func(adapter);
  tmp___0 = pci_save_state(pdev);
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  tmp___1 = netxen_nic_wol_supported(adapter);
  }
  if (tmp___1 != 0) {
    {
    pci_enable_wake(pdev, 4, 1);
    pci_enable_wake(pdev, 3, 1);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  }
  return;
}
}
static int netxen_nic_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int retval ;
  int tmp___0 ;
  pci_power_t tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct netxen_adapter *)tmp;
  netxen_nic_detach_func(adapter);
  retval = pci_save_state(pdev);
  }
  if (retval != 0) {
    return (retval);
  } else {
  }
  {
  tmp___0 = netxen_nic_wol_supported(adapter);
  }
  if (tmp___0 != 0) {
    {
    pci_enable_wake(pdev, 4, 1);
    pci_enable_wake(pdev, 3, 1);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  tmp___1 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___1);
  }
  return (0);
}
}
static int netxen_nic_resume(struct pci_dev *pdev )
{
  int tmp ;
  {
  {
  tmp = netxen_nic_attach_func(pdev);
  }
  return (tmp);
}
}
static int netxen_nic_open(struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  err = 0;
  }
  if ((unsigned int )adapter->driver_mismatch != 0U) {
    return (-5);
  } else {
  }
  {
  err = netxen_nic_attach(adapter);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = __netxen_nic_up(adapter, netdev);
  }
  if (err != 0) {
    goto err_out;
  } else {
  }
  {
  netif_start_queue(netdev);
  }
  return (0);
  err_out:
  {
  netxen_nic_detach(adapter);
  }
  return (err);
}
}
static int netxen_nic_close(struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  __netxen_nic_down(adapter, netdev);
  }
  return (0);
}
}
static void netxen_tso_check(struct net_device *netdev , struct nx_host_tx_ring *tx_ring ,
                             struct cmd_desc_type0 *first_desc , struct sk_buff *skb )
{
  u8 opcode ;
  __be16 protocol ;
  u16 flags ;
  u16 vid ;
  u32 producer ;
  int copied ;
  int offset ;
  int copy_len ;
  int hdr_len ;
  int tso ;
  int vlan_oob ;
  struct cmd_desc_type0 *hwdesc ;
  struct vlan_ethhdr *vh ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned char *tmp___1 ;
  u8 l4proto ;
  struct iphdr *tmp___2 ;
  struct ipv6hdr *tmp___3 ;
  unsigned char *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int _min1 ;
  int _min2 ;
  __u16 tmp___7 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  opcode = 1U;
  protocol = skb->protocol;
  flags = 0U;
  vid = 0U;
  hdr_len = 0;
  tso = 0;
  vlan_oob = 0;
  if ((unsigned int )protocol == 129U) {
    vh = (struct vlan_ethhdr *)skb->data;
    protocol = vh->h_vlan_encapsulated_proto;
    flags = 16U;
  } else
  if (((int )skb->vlan_tci & 4096) != 0) {
    flags = 64U;
    vid = (unsigned int )skb->vlan_tci & 61439U;
    first_desc->vlan_TCI = vid;
    vlan_oob = 1;
  } else {
  }
  if ((netdev->features & 1114112ULL) != 0ULL) {
    {
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    }
    if ((unsigned int )((struct skb_shared_info *)tmp___4)->gso_size != 0U) {
      {
      tmp = skb_transport_offset((struct sk_buff const *)skb);
      tmp___0 = tcp_hdrlen((struct sk_buff const *)skb);
      hdr_len = (int )((unsigned int )tmp + tmp___0);
      tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
      first_desc->mss = ((struct skb_shared_info *)tmp___1)->gso_size;
      first_desc->total_hdr_length = (u8 )hdr_len;
      }
      if (vlan_oob != 0) {
        first_desc->total_hdr_length = (unsigned int )first_desc->total_hdr_length + 4U;
        first_desc->tcp_hdr_offset = 4U;
        first_desc->ip_hdr_offset = 4U;
        flags = (u16 )((unsigned int )flags | 16U);
      } else {
      }
      opcode = (unsigned int )protocol == 56710U ? 6U : 5U;
      tso = 1;
    } else {
      goto _L;
    }
  } else
  _L:
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    if ((unsigned int )protocol == 8U) {
      {
      tmp___2 = ip_hdr((struct sk_buff const *)skb);
      l4proto = tmp___2->protocol;
      }
      if ((unsigned int )l4proto == 6U) {
        opcode = 2U;
      } else
      if ((unsigned int )l4proto == 17U) {
        opcode = 3U;
      } else {
      }
    } else
    if ((unsigned int )protocol == 56710U) {
      {
      tmp___3 = ipv6_hdr((struct sk_buff const *)skb);
      l4proto = tmp___3->nexthdr;
      }
      if ((unsigned int )l4proto == 6U) {
        opcode = 11U;
      } else
      if ((unsigned int )l4proto == 17U) {
        opcode = 12U;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___5 = skb_transport_offset((struct sk_buff const *)skb);
  first_desc->tcp_hdr_offset = (int )first_desc->tcp_hdr_offset + (int )((u8 )tmp___5);
  tmp___6 = skb_network_offset((struct sk_buff const *)skb);
  first_desc->ip_hdr_offset = (int )first_desc->ip_hdr_offset + (int )((u8 )tmp___6);
  first_desc->flags_opcode = (unsigned short )(((int )((short )flags) & 127) | (int )((short )(((int )opcode & 63) << 7)));
  }
  if (tso == 0) {
    return;
  } else {
  }
  producer = tx_ring->producer;
  copied = 0;
  offset = 2;
  if (vlan_oob != 0) {
    {
    hwdesc = tx_ring->desc_head + (unsigned long )producer;
    (tx_ring->cmd_buf_arr + (unsigned long )producer)->skb = (struct sk_buff *)0;
    _min1 = 64 - offset;
    _min2 = hdr_len + 4;
    copy_len = _min1 < _min2 ? _min1 : _min2;
    vh = (struct vlan_ethhdr *)hwdesc + 2U;
    skb_copy_from_linear_data((struct sk_buff const *)skb, (void *)vh, 12U);
    vh->h_vlan_proto = 129U;
    tmp___7 = __fswab16((int )vid);
    vh->h_vlan_TCI = tmp___7;
    skb_copy_from_linear_data_offset((struct sk_buff const *)skb, 12, (void *)vh + 16U,
                                     (unsigned int const )(copy_len + -16));
    copied = copy_len + -4;
    offset = 0;
    producer = (producer + 1U) & (tx_ring->num_desc - 1U);
    }
  } else {
  }
  goto ldv_51604;
  ldv_51603:
  {
  _min1___0 = 64 - offset;
  _min2___0 = hdr_len - copied;
  copy_len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  hwdesc = tx_ring->desc_head + (unsigned long )producer;
  (tx_ring->cmd_buf_arr + (unsigned long )producer)->skb = (struct sk_buff *)0;
  skb_copy_from_linear_data_offset((struct sk_buff const *)skb, copied, (void *)hwdesc + (unsigned long )offset,
                                   (unsigned int const )copy_len);
  copied = copied + copy_len;
  offset = 0;
  producer = (producer + 1U) & (tx_ring->num_desc - 1U);
  }
  ldv_51604: ;
  if (copied < hdr_len) {
    goto ldv_51603;
  } else {
  }
  tx_ring->producer = producer;
  __asm__ volatile ("": : : "memory");
  return;
}
}
static int netxen_map_tx_skb(struct pci_dev *pdev , struct sk_buff *skb , struct netxen_cmd_buffer *pbuf )
{
  struct netxen_skb_frag *nf ;
  struct skb_frag_struct *frag ;
  int i ;
  int nr_frags ;
  dma_addr_t map ;
  unsigned char *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (int )((struct skb_shared_info *)tmp)->nr_frags;
  nf = (struct netxen_skb_frag *)(& pbuf->frag_array);
  tmp___0 = skb_headlen((struct sk_buff const *)skb);
  map = pci_map_single(pdev, (void *)skb->data, (size_t )tmp___0, 1);
  tmp___1 = pci_dma_mapping_error(pdev, map);
  }
  if (tmp___1 != 0) {
    goto out_err;
  } else {
  }
  {
  nf->dma = map;
  tmp___2 = skb_headlen((struct sk_buff const *)skb);
  nf->length = (u64 )tmp___2;
  i = 0;
  }
  goto ldv_51619;
  ldv_51618:
  {
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___3)->frags) + (unsigned long )i;
  nf = (struct netxen_skb_frag *)(& pbuf->frag_array) + ((unsigned long )i + 1UL);
  tmp___4 = skb_frag_size((skb_frag_t const *)frag);
  map = skb_frag_dma_map(& pdev->dev, (skb_frag_t const *)frag, 0UL, (size_t )tmp___4,
                         1);
  tmp___5 = dma_mapping_error(& pdev->dev, map);
  }
  if (tmp___5 != 0) {
    goto unwind;
  } else {
  }
  {
  nf->dma = map;
  tmp___6 = skb_frag_size((skb_frag_t const *)frag);
  nf->length = (u64 )tmp___6;
  i = i + 1;
  }
  ldv_51619: ;
  if (i < nr_frags) {
    goto ldv_51618;
  } else {
  }
  return (0);
  unwind: ;
  goto ldv_51622;
  ldv_51621:
  {
  nf = (struct netxen_skb_frag *)(& pbuf->frag_array) + ((unsigned long )i + 1UL);
  pci_unmap_page(pdev, nf->dma, (size_t )nf->length, 1);
  nf->dma = 0ULL;
  }
  ldv_51622:
  i = i - 1;
  if (i >= 0) {
    goto ldv_51621;
  } else {
  }
  {
  nf = (struct netxen_skb_frag *)(& pbuf->frag_array);
  tmp___7 = skb_headlen((struct sk_buff const *)skb);
  pci_unmap_single(pdev, nf->dma, (size_t )tmp___7, 1);
  nf->dma = 0ULL;
  }
  out_err: ;
  return (-12);
}
}
__inline static void netxen_clear_cmddesc(u64 *desc )
{
  {
  *desc = 0ULL;
  *(desc + 2UL) = 0ULL;
  return;
}
}
static netdev_tx_t netxen_nic_xmit_frame(struct sk_buff *skb , struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct nx_host_tx_ring *tx_ring ;
  struct netxen_cmd_buffer *pbuf ;
  struct netxen_skb_frag *buffrag ;
  struct cmd_desc_type0 *hwdesc ;
  struct cmd_desc_type0 *first_desc ;
  struct pci_dev *pdev ;
  int i ;
  int k ;
  int delta ;
  struct skb_frag_struct *frag ;
  u32 producer ;
  int frag_count ;
  int no_of_desc ;
  u32 num_txd ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  tx_ring = adapter->tx_ring;
  delta = 0;
  num_txd = tx_ring->num_desc;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  frag_count = (int )((struct skb_shared_info *)tmp___0)->nr_frags + 1;
  tmp___5 = skb_is_gso((struct sk_buff const *)skb);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6 && frag_count > 14) {
    i = 0;
    goto ldv_51647;
    ldv_51646:
    {
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )i;
    tmp___2 = skb_frag_size((skb_frag_t const *)frag);
    delta = (int )((unsigned int )delta + tmp___2);
    i = i + 1;
    }
    ldv_51647: ;
    if (i < frag_count + -14) {
      goto ldv_51646;
    } else {
    }
    {
    tmp___3 = __pskb_pull_tail(skb, delta);
    }
    if ((unsigned long )tmp___3 == (unsigned long )((unsigned char *)0U)) {
      goto drop_packet;
    } else {
    }
    {
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    frag_count = (int )((struct skb_shared_info *)tmp___4)->nr_frags + 1;
    }
  } else {
  }
  {
  no_of_desc = (frag_count + 3) >> 2;
  tmp___8 = netxen_tx_avail(tx_ring);
  tmp___9 = ldv__builtin_expect(tmp___8 <= 10U, 0L);
  }
  if (tmp___9 != 0L) {
    {
    netif_stop_queue(netdev);
    __asm__ volatile ("mfence": : : "memory");
    tmp___7 = netxen_tx_avail(tx_ring);
    }
    if (tmp___7 > 10U) {
      {
      netif_start_queue(netdev);
      }
    } else {
      return (16);
    }
  } else {
  }
  {
  producer = tx_ring->producer;
  pbuf = tx_ring->cmd_buf_arr + (unsigned long )producer;
  pdev = adapter->pdev;
  tmp___10 = netxen_map_tx_skb(pdev, skb, pbuf);
  }
  if (tmp___10 != 0) {
    goto drop_packet;
  } else {
  }
  {
  pbuf->skb = skb;
  pbuf->frag_count = (u32 )frag_count;
  hwdesc = tx_ring->desc_head + (unsigned long )producer;
  first_desc = hwdesc;
  netxen_clear_cmddesc((u64 *)hwdesc);
  first_desc->nfrags__length = ((unsigned int )frag_count & 255U) | (skb->len << 8);
  first_desc->port_ctxid = (u8 )(((int )((signed char )adapter->portnum) & 15) | (int )((signed char )((int )adapter->portnum << 4)));
  i = 0;
  }
  goto ldv_51656;
  ldv_51655:
  k = i % 4;
  if (k == 0 && i > 0) {
    {
    producer = (producer + 1U) & (num_txd - 1U);
    hwdesc = tx_ring->desc_head + (unsigned long )producer;
    netxen_clear_cmddesc((u64 *)hwdesc);
    (tx_ring->cmd_buf_arr + (unsigned long )producer)->skb = (struct sk_buff *)0;
    }
  } else {
  }
  buffrag = (struct netxen_skb_frag *)(& pbuf->frag_array) + (unsigned long )i;
  hwdesc->buffer_length[k] = (unsigned short )buffrag->length;
  {
  if (k == 0) {
    goto case_0;
  } else {
  }
  if (k == 1) {
    goto case_1;
  } else {
  }
  if (k == 2) {
    goto case_2;
  } else {
  }
  if (k == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  hwdesc->addr_buffer1 = buffrag->dma;
  goto ldv_51651;
  case_1:
  hwdesc->addr_buffer2 = buffrag->dma;
  goto ldv_51651;
  case_2:
  hwdesc->addr_buffer3 = buffrag->dma;
  goto ldv_51651;
  case_3:
  hwdesc->addr_buffer4 = buffrag->dma;
  goto ldv_51651;
  switch_break: ;
  }
  ldv_51651:
  i = i + 1;
  ldv_51656: ;
  if (i < frag_count) {
    goto ldv_51655;
  } else {
  }
  {
  tx_ring->producer = (producer + 1U) & (num_txd - 1U);
  netxen_tso_check(netdev, tx_ring, first_desc, skb);
  adapter->stats.txbytes = adapter->stats.txbytes + (u64 )skb->len;
  adapter->stats.xmitcalled = adapter->stats.xmitcalled + 1ULL;
  netxen_nic_update_cmd_producer(adapter, tx_ring);
  }
  return (0);
  drop_packet:
  {
  adapter->stats.txdropped = adapter->stats.txdropped + 1ULL;
  dev_kfree_skb_any(skb);
  }
  return (0);
}
}
static int netxen_nic_check_temp(struct netxen_adapter *adapter )
{
  struct net_device *netdev ;
  uint32_t temp ;
  uint32_t temp_state ;
  uint32_t temp_val ;
  int rv ;
  {
  {
  netdev = adapter->netdev;
  rv = 0;
  temp = (*(adapter->crb_read))(adapter, 136324020UL);
  temp_state = temp & 65535U;
  temp_val = temp >> 16;
  }
  if (temp_state == 3U) {
    {
    printk("\t%s: Device temperature %d degrees C exceeds maximum allowed. Hardware has been shut down.\n",
           (char *)(& netdev->name), temp_val);
    rv = 1;
    }
  } else
  if (temp_state == 2U) {
    if (adapter->temp == 1U) {
      {
      printk("\t%s: Device temperature %d degrees C exceeds operating range. Immediate action needed.\n",
             (char *)(& netdev->name), temp_val);
      }
    } else {
    }
  } else
  if (adapter->temp == 2U) {
    {
    printk("\016%s: Device temperature is now %d degrees C in normal range.\n", (char *)(& netdev->name),
           temp_val);
    }
  } else {
  }
  adapter->temp = temp_state;
  return (rv);
}
}
void netxen_advert_link_change(struct netxen_adapter *adapter , int linkup )
{
  struct net_device *netdev ;
  bool tmp ;
  bool tmp___0 ;
  {
  netdev = adapter->netdev;
  if ((unsigned int )adapter->ahw.linkup != 0U && linkup == 0) {
    {
    printk("\016%s: %s NIC Link is down\n", (char *)(& netxen_nic_driver_name), (char *)(& netdev->name));
    adapter->ahw.linkup = 0U;
    tmp = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp) {
      {
      netif_carrier_off(netdev);
      netif_stop_queue(netdev);
      }
    } else {
    }
    adapter->link_changed = (unsigned int )adapter->has_link_events == 0U;
  } else
  if ((unsigned int )adapter->ahw.linkup == 0U && linkup != 0) {
    {
    printk("\016%s: %s NIC Link is up\n", (char *)(& netxen_nic_driver_name), (char *)(& netdev->name));
    adapter->ahw.linkup = 1U;
    tmp___0 = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp___0) {
      {
      netif_carrier_on(netdev);
      netif_wake_queue(netdev);
      }
    } else {
    }
    adapter->link_changed = (unsigned int )adapter->has_link_events == 0U;
  } else {
  }
  return;
}
}
static void netxen_nic_handle_phy_intr(struct netxen_adapter *adapter )
{
  u32 val ;
  u32 port ;
  u32 linkup ;
  {
  port = (u32 )adapter->physical_port;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    val = (*(adapter->crb_read))(adapter, 136323736UL);
    val = (val >> (int )adapter->ahw.pci_func * 4) & 15U;
    linkup = val == 1U;
    }
  } else {
    {
    val = (*(adapter->crb_read))(adapter, 136323732UL);
    val = (val >> (int )(port * 8U)) & 255U;
    linkup = val == 16U;
    }
  }
  {
  netxen_advert_link_change(adapter, (int )linkup);
  }
  return;
}
}
static void netxen_tx_timeout(struct net_device *netdev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  dev_err((struct device const *)(& netdev->dev), "transmit timeout, resetting.\n");
  schedule_work(& adapter->tx_timeout_task);
  }
  return;
}
}
static void netxen_tx_timeout_task(struct work_struct *work )
{
  struct netxen_adapter *adapter ;
  struct work_struct const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct netxen_adapter *)__mptr + 0xfffffffffffffc40UL;
  tmp = netif_running((struct net_device const *)adapter->netdev);
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
  tmp___1 = test_and_clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  if (tmp___1 != 0) {
    return;
  } else {
  }
  adapter->tx_timeo_cnt = (u8 )((int )adapter->tx_timeo_cnt + 1);
  if ((unsigned int )adapter->tx_timeo_cnt > 1U) {
    goto request_reset;
  } else {
  }
  {
  rtnl_lock();
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    netxen_napi_disable(adapter);
    netxen_napi_enable(adapter);
    netif_wake_queue(adapter->netdev);
    clear_bit(2L, (unsigned long volatile *)(& adapter->state));
    }
  } else {
    {
    clear_bit(2L, (unsigned long volatile *)(& adapter->state));
    tmp___2 = netxen_nic_reset_context(adapter);
    }
    if (tmp___2 != 0) {
      {
      rtnl_unlock();
      }
      goto request_reset;
    } else {
    }
  }
  {
  (adapter->netdev)->trans_start = jiffies;
  rtnl_unlock();
  }
  return;
  request_reset:
  {
  adapter->need_fw_reset = 1U;
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  return;
}
}
static struct rtnl_link_stats64 *netxen_nic_get_stats(struct net_device *netdev ,
                                                      struct rtnl_link_stats64 *stats )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  stats->rx_packets = adapter->stats.rx_pkts + adapter->stats.lro_pkts;
  stats->tx_packets = adapter->stats.xmitfinished;
  stats->rx_bytes = adapter->stats.rxbytes;
  stats->tx_bytes = adapter->stats.txbytes;
  stats->rx_dropped = adapter->stats.rxdropped;
  stats->tx_dropped = adapter->stats.txdropped;
  }
  return (stats);
}
}
static irqreturn_t netxen_intr(int irq , void *data )
{
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_adapter *adapter ;
  u32 status ;
  unsigned long our_int ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  sds_ring = (struct nx_host_sds_ring *)data;
  adapter = sds_ring->adapter;
  status = 0U;
  status = readl((void const volatile *)adapter->isr_int_vec);
  }
  if ((status & adapter->int_vec_bit) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    status = readl((void const volatile *)adapter->crb_int_state_reg);
    }
    if ((status & 768U) != 512U) {
      return (0);
    } else {
    }
  } else {
    {
    our_int = 0UL;
    tmp = readl((void const volatile *)adapter->crb_int_state_reg);
    our_int = (unsigned long )tmp;
    tmp___0 = test_and_clear_bit((long )((int )adapter->portnum + 7), (unsigned long volatile *)(& our_int));
    }
    if (tmp___0 == 0) {
      return (0);
    } else {
    }
    {
    writel((unsigned int )our_int, (void volatile *)adapter->crb_int_state_reg);
    netxen_nic_disable_int(sds_ring);
    }
  }
  {
  writel(4294967295U, (void volatile *)adapter->tgt_status_reg);
  readl((void const volatile *)adapter->isr_int_vec);
  readl((void const volatile *)adapter->isr_int_vec);
  napi_schedule(& sds_ring->napi);
  }
  return (1);
}
}
static irqreturn_t netxen_msi_intr(int irq , void *data )
{
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_adapter *adapter ;
  {
  {
  sds_ring = (struct nx_host_sds_ring *)data;
  adapter = sds_ring->adapter;
  writel(4294967295U, (void volatile *)adapter->tgt_status_reg);
  napi_schedule(& sds_ring->napi);
  }
  return (1);
}
}
static irqreturn_t netxen_msix_intr(int irq , void *data )
{
  struct nx_host_sds_ring *sds_ring ;
  {
  {
  sds_ring = (struct nx_host_sds_ring *)data;
  napi_schedule(& sds_ring->napi);
  }
  return (1);
}
}
static int netxen_nic_poll(struct napi_struct *napi , int budget )
{
  struct nx_host_sds_ring *sds_ring ;
  struct napi_struct const *__mptr ;
  struct netxen_adapter *adapter ;
  int tx_complete ;
  int work_done ;
  int tmp ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  sds_ring = (struct nx_host_sds_ring *)__mptr + 0xffffffffffffffd8UL;
  adapter = sds_ring->adapter;
  tx_complete = netxen_process_cmd_ring(adapter);
  work_done = netxen_process_rcv_ring(sds_ring, budget);
  }
  if (work_done < budget && tx_complete != 0) {
    {
    napi_complete(& sds_ring->napi);
    tmp = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->state));
    }
    if (tmp != 0) {
      {
      netxen_nic_enable_int(sds_ring);
      }
    } else {
    }
  } else {
  }
  return (work_done);
}
}
static void netxen_nic_poll_controller(struct net_device *netdev )
{
  int ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netxen_recv_context *recv_ctx ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  recv_ctx = & adapter->recv_ctx;
  disable_irq(adapter->irq);
  ring = 0;
  }
  goto ldv_51730;
  ldv_51729:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  netxen_intr((int )adapter->irq, (void *)sds_ring);
  ring = ring + 1;
  }
  ldv_51730: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_51729;
  } else {
  }
  {
  enable_irq(adapter->irq);
  }
  return;
}
}
static int nx_incr_dev_ref_cnt(struct netxen_adapter *adapter )
{
  int count ;
  int tmp ;
  u32 tmp___0 ;
  {
  {
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  {
  tmp___0 = (*(adapter->crb_read))(adapter, 136323384UL);
  count = (int )tmp___0;
  count = count + 1;
  (*(adapter->crb_write))(adapter, 136323384UL, (u32 )count);
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (count);
}
}
static int nx_decr_dev_ref_cnt(struct netxen_adapter *adapter )
{
  int count ;
  int state ;
  int tmp ;
  u32 tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  u32 tmp___2 ;
  {
  {
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  {
  tmp___0 = (*(adapter->crb_read))(adapter, 136323384UL);
  count = (int )tmp___0;
  __ret_warn_on = count == 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", 2442);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  count = count - 1;
  (*(adapter->crb_write))(adapter, 136323384UL, (u32 )count);
  tmp___2 = (*(adapter->crb_read))(adapter, 136323392UL);
  state = (int )tmp___2;
  }
  if (count == 0 && state != 7) {
    {
    (*(adapter->crb_write))(adapter, 136323392UL, 1U);
    }
  } else {
  }
  {
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (count);
}
}
static int nx_dev_request_aer(struct netxen_adapter *adapter )
{
  u32 state ;
  int ret ;
  int tmp ;
  {
  {
  ret = -22;
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    return (ret);
  } else {
  }
  {
  state = (*(adapter->crb_read))(adapter, 136323392UL);
  }
  if (state == 6U) {
    ret = 0;
  } else
  if (state == 3U) {
    {
    (*(adapter->crb_write))(adapter, 136323392UL, 6U);
    ret = 0;
    }
  } else {
  }
  {
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (ret);
}
}
int nx_dev_request_reset(struct netxen_adapter *adapter )
{
  u32 state ;
  int ret ;
  int tmp ;
  {
  {
  ret = -22;
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    return (ret);
  } else {
  }
  {
  state = (*(adapter->crb_read))(adapter, 136323392UL);
  }
  if (state == 4U || state == 7U) {
    ret = 0;
  } else
  if (state != 2U && state != 6U) {
    {
    (*(adapter->crb_write))(adapter, 136323392UL, 4U);
    adapter->flags = adapter->flags | 64U;
    ret = 0;
    }
  } else {
  }
  {
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (ret);
}
}
static int netxen_can_start_firmware(struct netxen_adapter *adapter )
{
  int count ;
  int can_start ;
  int tmp ;
  u32 tmp___0 ;
  {
  {
  can_start = 0;
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    {
    nx_incr_dev_ref_cnt(adapter);
    }
    return (-1);
  } else {
  }
  {
  tmp___0 = (*(adapter->crb_read))(adapter, 136323384UL);
  count = (int )tmp___0;
  }
  if ((unsigned int )count > 7U) {
    count = 0;
  } else {
  }
  if (count == 0) {
    {
    can_start = 1;
    (*(adapter->crb_write))(adapter, 136323392UL, 2U);
    }
  } else {
  }
  {
  count = count + 1;
  (*(adapter->crb_write))(adapter, 136323384UL, (u32 )count);
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (can_start);
}
}
static void netxen_schedule_work(struct netxen_adapter *adapter , void (*func)(struct work_struct * ) ,
                                 int delay )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  {
  __init_work(& adapter->fw_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->fw_work.work.data = __constr_expr_0;
  lockdep_init_map(& adapter->fw_work.work.lockdep_map, "(&(&adapter->fw_work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& adapter->fw_work.work.entry);
  adapter->fw_work.work.func = func;
  init_timer_key(& adapter->fw_work.timer, 2U, "(&(&adapter->fw_work)->timer)", & __key___0);
  adapter->fw_work.timer.function = & delayed_work_timer_fn;
  adapter->fw_work.timer.data = (unsigned long )(& adapter->fw_work);
  schedule_delayed_work(& adapter->fw_work, (unsigned long )delay);
  }
  return;
}
}
static void netxen_cancel_fw_work(struct netxen_adapter *adapter )
{
  int tmp ;
  {
  goto ldv_51770;
  ldv_51769:
  {
  msleep(10U);
  }
  ldv_51770:
  {
  tmp = test_and_clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  if (tmp != 0) {
    goto ldv_51769;
  } else {
  }
  {
  cancel_delayed_work_sync(& adapter->fw_work);
  }
  return;
}
}
static void netxen_attach_work(struct work_struct *work )
{
  struct netxen_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  int err ;
  bool tmp ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct netxen_adapter *)__mptr + 0xfffffffffffffd20UL;
  netdev = adapter->netdev;
  err = 0;
  tmp = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp) {
    {
    err = netxen_nic_attach(adapter);
    }
    if (err != 0) {
      goto done;
    } else {
    }
    {
    err = netxen_nic_up(adapter, netdev);
    }
    if (err != 0) {
      {
      netxen_nic_detach(adapter);
      }
      goto done;
    } else {
    }
    {
    netxen_restore_indev_addr(netdev, 1UL);
    }
  } else {
  }
  {
  netif_device_attach(netdev);
  }
  done:
  {
  adapter->fw_fail_cnt = 0U;
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  netxen_schedule_work(adapter, & netxen_fw_poll_work, 500);
  }
  return;
}
}
static void netxen_fwinit_work(struct work_struct *work )
{
  struct netxen_adapter *adapter ;
  struct work_struct const *__mptr ;
  int dev_state ;
  int count ;
  u32 tmp ;
  u32 tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct netxen_adapter *)__mptr + 0xfffffffffffffd20UL;
  tmp = (*(adapter->crb_read))(adapter, 136323392UL);
  dev_state = (int )tmp;
  }
  if ((adapter->flags & 64U) != 0U) {
    {
    tmp___0 = (*(adapter->crb_read))(adapter, 136323384UL);
    count = (int )tmp___0;
    __ret_warn_on = count == 0;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", 2585);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (count == 1) {
      if ((unsigned int )adapter->mdump.md_enabled != 0U) {
        {
        rtnl_lock();
        netxen_dump_fw(adapter);
        rtnl_unlock();
        }
      } else {
      }
      {
      adapter->flags = adapter->flags & 4294967231U;
      tmp___2 = netxen_pcie_sem_lock(adapter, 5, 0U);
      }
      if (tmp___2 != 0) {
        {
        clear_bit(2L, (unsigned long volatile *)(& adapter->state));
        (*(adapter->crb_write))(adapter, 136323392UL, 7U);
        }
        return;
      } else {
      }
      {
      tmp___3 = (*(adapter->crb_read))(adapter, 136323384UL);
      count = (int )tmp___3;
      count = count - 1;
      (*(adapter->crb_write))(adapter, 136323384UL, (u32 )count);
      (*(adapter->crb_write))(adapter, 136323392UL, 1U);
      dev_state = 1;
      netxen_pcie_sem_unlock(adapter, 5);
      }
    } else {
    }
  } else {
  }
  {
  if (dev_state == 1) {
    goto case_1;
  } else {
  }
  if (dev_state == 3) {
    goto case_3;
  } else {
  }
  if (dev_state == 4) {
    goto case_4;
  } else {
  }
  if (dev_state == 2) {
    goto case_2;
  } else {
  }
  if (dev_state == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_3:
  {
  tmp___4 = netxen_start_firmware(adapter);
  }
  if (tmp___4 == 0) {
    {
    netxen_schedule_work(adapter, & netxen_attach_work, 0);
    }
    return;
  } else {
  }
  goto ldv_51793;
  case_4: ;
  case_2:
  {
  netxen_schedule_work(adapter, & netxen_fwinit_work, 1000);
  }
  return;
  case_7: ;
  switch_default:
  {
  nx_incr_dev_ref_cnt(adapter);
  }
  goto ldv_51793;
  switch_break: ;
  }
  ldv_51793:
  {
  tmp___5 = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp___5 != 0) {
    {
    clear_bit(2L, (unsigned long volatile *)(& adapter->state));
    }
    return;
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323392UL, 7U);
  netxen_pcie_sem_unlock(adapter, 5);
  dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: Device initialization Failed\n",
          (char *)(& (adapter->netdev)->name));
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  return;
}
}
static void netxen_detach_work(struct work_struct *work )
{
  struct netxen_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  int ref_cnt ;
  int delay ;
  u32 status ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct netxen_adapter *)__mptr + 0xfffffffffffffd20UL;
  netdev = adapter->netdev;
  ref_cnt = 0;
  netif_device_detach(netdev);
  netxen_nic_down(adapter, netdev);
  rtnl_lock();
  netxen_nic_detach(adapter);
  rtnl_unlock();
  status = (*(adapter->crb_read))(adapter, 136323240UL);
  }
  if ((int )status < 0) {
    goto err_ret;
  } else {
  }
  if (adapter->temp == 3U) {
    goto err_ret;
  } else {
  }
  if ((adapter->flags & 64U) == 0U) {
    {
    ref_cnt = nx_decr_dev_ref_cnt(adapter);
    }
  } else {
  }
  if (ref_cnt == -5) {
    goto err_ret;
  } else {
  }
  {
  delay = ref_cnt == 0 ? 0 : 1000;
  adapter->fw_wait_cnt = 0U;
  netxen_schedule_work(adapter, & netxen_fwinit_work, delay);
  }
  return;
  err_ret:
  {
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  }
  return;
}
}
static int netxen_check_health(struct netxen_adapter *adapter )
{
  u32 state ;
  u32 heartbit ;
  u32 peg_status ;
  struct net_device *netdev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  {
  {
  netdev = adapter->netdev;
  state = (*(adapter->crb_read))(adapter, 136323392UL);
  }
  if (state == 6U) {
    return (0);
  } else {
  }
  {
  tmp = netxen_nic_check_temp(adapter);
  }
  if (tmp != 0) {
    goto detach;
  } else {
  }
  if ((unsigned int )adapter->need_fw_reset != 0U) {
    {
    tmp___0 = nx_dev_request_reset(adapter);
    }
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
    goto detach;
  } else {
  }
  if (state == 4U || state == 7U) {
    adapter->need_fw_reset = 1U;
    if ((unsigned int )adapter->ahw.revision_id <= 37U) {
      goto detach;
    } else {
    }
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (0);
  } else {
  }
  {
  heartbit = (*(adapter->crb_read))(adapter, 136323248UL);
  }
  if (heartbit != adapter->heartbit) {
    adapter->heartbit = heartbit;
    adapter->fw_fail_cnt = 0U;
    if ((unsigned int )adapter->need_fw_reset != 0U) {
      goto detach;
    } else {
    }
    return (0);
  } else {
  }
  adapter->fw_fail_cnt = (u8 )((int )adapter->fw_fail_cnt + 1);
  if ((unsigned int )adapter->fw_fail_cnt <= 2U) {
    return (0);
  } else {
  }
  {
  tmp___1 = nx_dev_request_reset(adapter);
  }
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  {
  clear_bit(0L, (unsigned long volatile *)(& adapter->state));
  dev_err((struct device const *)(& netdev->dev), "firmware hang detected\n");
  peg_status = (*(adapter->crb_read))(adapter, 136323240UL);
  tmp___2 = (*(adapter->crb_read))(adapter, 116391996UL);
  tmp___3 = (*(adapter->crb_read))(adapter, 121634876UL);
  tmp___4 = (*(adapter->crb_read))(adapter, 120586300UL);
  tmp___5 = (*(adapter->crb_read))(adapter, 119537724UL);
  tmp___6 = (*(adapter->crb_read))(adapter, 118489148UL);
  tmp___7 = (*(adapter->crb_read))(adapter, 136323244UL);
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Dumping hw/fw registers\nPEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\nPEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\nPEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\nPEG_NET_4_PC: 0x%x\n",
          peg_status, tmp___7, tmp___6, tmp___5, tmp___4, tmp___3, tmp___2);
  }
  if (((peg_status >> 8) & 2097151U) == 103U) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware aborted with error code 0x00006700. Device is being reset.\n");
    }
  } else {
  }
  detach: ;
  if (auto_fw_reset == -284119278) {
    {
    tmp___8 = test_and_clear_bit(2L, (unsigned long volatile *)(& adapter->state));
    }
    if (tmp___8 == 0) {
      {
      netxen_schedule_work(adapter, & netxen_detach_work, 0);
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
static void netxen_fw_poll_work(struct work_struct *work )
{
  struct netxen_adapter *adapter ;
  struct work_struct const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct netxen_adapter *)__mptr + 0xfffffffffffffd20UL;
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  }
  if (tmp != 0) {
    goto reschedule;
  } else {
  }
  {
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->state));
  }
  if (tmp___0 != 0) {
    if ((unsigned int )adapter->has_link_events == 0U) {
      {
      netxen_nic_handle_phy_intr(adapter);
      }
      if ((unsigned int )adapter->link_changed != 0U) {
        {
        netxen_nic_set_link_parameters(adapter);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___1 = netxen_check_health(adapter);
  }
  if (tmp___1 != 0) {
    return;
  } else {
  }
  reschedule:
  {
  netxen_schedule_work(adapter, & netxen_fw_poll_work, 500);
  }
  return;
}
}
static ssize_t netxen_store_bridged_mode(struct device *dev , struct device_attribute *attr ,
                                         char const *buf , size_t len )
{
  struct net_device *net ;
  struct device const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  unsigned long new ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct device const *)dev;
  net = (struct net_device *)__mptr + 0xfffffffffffffac8UL;
  tmp = netdev_priv((struct net_device const *)net);
  adapter = (struct netxen_adapter *)tmp;
  ret = -22;
  }
  if ((adapter->capabilities & 256U) == 0U) {
    goto err_out;
  } else {
  }
  if ((unsigned int )adapter->is_up != 777U) {
    goto err_out;
  } else {
  }
  {
  tmp___0 = kstrtoul(buf, 2U, & new);
  }
  if (tmp___0 != 0) {
    goto err_out;
  } else {
  }
  {
  tmp___1 = netxen_config_bridged_mode(adapter, new != 0UL);
  }
  if (tmp___1 == 0) {
    ret = (int )len;
  } else {
  }
  err_out: ;
  return ((ssize_t )ret);
}
}
static ssize_t netxen_show_bridged_mode(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct net_device *net ;
  struct device const *__mptr ;
  struct netxen_adapter *adapter ;
  int bridged_mode ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)dev;
  net = (struct net_device *)__mptr + 0xfffffffffffffac8UL;
  bridged_mode = 0;
  tmp = netdev_priv((struct net_device const *)net);
  adapter = (struct netxen_adapter *)tmp;
  }
  if ((adapter->capabilities & 256U) != 0U) {
    bridged_mode = (adapter->flags & 16U) != 0U;
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%d\n", bridged_mode);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_bridged_mode = {{"bridged_mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & netxen_show_bridged_mode, & netxen_store_bridged_mode};
static ssize_t netxen_store_diag_mode(struct device *dev , struct device_attribute *attr ,
                                      char const *buf , size_t len )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  unsigned long new ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_86((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  tmp___0 = kstrtoul(buf, 2U, & new);
  }
  if (tmp___0 != 0) {
    return (-22L);
  } else {
  }
  if ((new != 0UL) ^ ((adapter->flags & 32U) != 0U)) {
    adapter->flags = adapter->flags ^ 32U;
  } else {
  }
  return ((ssize_t )len);
}
}
static ssize_t netxen_show_diag_mode(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_87((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (adapter->flags & 32U) != 0U);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_diag_mode = {{"diag_mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & netxen_show_diag_mode, & netxen_store_diag_mode};
static int netxen_sysfs_validate_crb(struct netxen_adapter *adapter , loff_t offset ,
                                     size_t size )
{
  size_t crb_size ;
  {
  crb_size = 4UL;
  if ((adapter->flags & 32U) == 0U) {
    return (-5);
  } else {
  }
  if ((unsigned long long )offset <= 100663295ULL) {
    if ((unsigned int )adapter->ahw.revision_id <= 37U) {
      return (-22);
    } else {
    }
    if ((unsigned long )offset - 75497472UL <= 2047UL) {
      crb_size = 8UL;
    } else {
      return (-22);
    }
  } else {
  }
  if (size != crb_size || ((unsigned long long )offset & (unsigned long long )(crb_size - 1UL)) != 0ULL) {
    return (-22);
  } else {
  }
  return (0);
}
}
static ssize_t netxen_sysfs_read_crb(struct file *filp , struct kobject *kobj , struct bin_attribute *attr ,
                                     char *buf , loff_t offset , size_t size )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 data ;
  u64 qmdata ;
  int ret ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = ldv_dev_get_drvdata_88((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  ret = netxen_sysfs_validate_crb(adapter, offset, size);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U && (unsigned long )offset - 75497472UL <= 2047UL) {
    {
    netxen_pci_camqm_read_2M(adapter, (u64 )offset, & qmdata);
    memcpy((void *)buf, (void const *)(& qmdata), size);
    }
  } else {
    {
    data = (*(adapter->crb_read))(adapter, (ulong )offset);
    memcpy((void *)buf, (void const *)(& data), size);
    }
  }
  return ((ssize_t )size);
}
}
static ssize_t netxen_sysfs_write_crb(struct file *filp , struct kobject *kobj , struct bin_attribute *attr ,
                                      char *buf , loff_t offset , size_t size )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 data ;
  u64 qmdata ;
  int ret ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = ldv_dev_get_drvdata_89((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  ret = netxen_sysfs_validate_crb(adapter, offset, size);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U && (unsigned long )offset - 75497472UL <= 2047UL) {
    {
    memcpy((void *)(& qmdata), (void const *)buf, size);
    netxen_pci_camqm_write_2M(adapter, (u64 )offset, qmdata);
    }
  } else {
    {
    memcpy((void *)(& data), (void const *)buf, size);
    (*(adapter->crb_write))(adapter, (ulong )offset, data);
    }
  }
  return ((ssize_t )size);
}
}
static int netxen_sysfs_validate_mem(struct netxen_adapter *adapter , loff_t offset ,
                                     size_t size )
{
  {
  if ((adapter->flags & 32U) == 0U) {
    return (-5);
  } else {
  }
  if (size != 8UL || (offset & 7LL) != 0LL) {
    return (-5);
  } else {
  }
  return (0);
}
}
static ssize_t netxen_sysfs_read_mem(struct file *filp , struct kobject *kobj , struct bin_attribute *attr ,
                                     char *buf , loff_t offset , size_t size )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  u64 data ;
  int ret ;
  int tmp___0 ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = ldv_dev_get_drvdata_90((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  ret = netxen_sysfs_validate_mem(adapter, offset, size);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  tmp___0 = (*(adapter->pci_mem_read))(adapter, (u64 )offset, & data);
  }
  if (tmp___0 != 0) {
    return (-5L);
  } else {
  }
  {
  memcpy((void *)buf, (void const *)(& data), size);
  }
  return ((ssize_t )size);
}
}
static ssize_t netxen_sysfs_write_mem(struct file *filp , struct kobject *kobj , struct bin_attribute *attr ,
                                      char *buf , loff_t offset , size_t size )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  u64 data ;
  int ret ;
  int tmp___0 ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = ldv_dev_get_drvdata_91((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  ret = netxen_sysfs_validate_mem(adapter, offset, size);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  memcpy((void *)(& data), (void const *)buf, size);
  tmp___0 = (*(adapter->pci_mem_write))(adapter, (u64 )offset, data);
  }
  if (tmp___0 != 0) {
    return (-5L);
  } else {
  }
  return ((ssize_t )size);
}
}
static struct bin_attribute bin_attr_crb = {{"crb", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & netxen_sysfs_read_crb,
    & netxen_sysfs_write_crb, 0};
static struct bin_attribute bin_attr_mem = {{"mem", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & netxen_sysfs_read_mem,
    & netxen_sysfs_write_mem, 0};
static ssize_t netxen_sysfs_read_dimm(struct file *filp , struct kobject *kobj , struct bin_attribute *attr ,
                                      char *buf , loff_t offset , size_t size )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  struct netxen_dimm_cfg dimm ;
  u8 dw ;
  u8 rows ;
  u8 cols ;
  u8 banks ;
  u8 ranks ;
  u32 val ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = ldv_dev_get_drvdata_92((struct device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  netdev = adapter->netdev;
  }
  if (size != 8UL) {
    {
    netdev_err((struct net_device const *)netdev, "Invalid size\n");
    }
    return (-1L);
  } else {
  }
  {
  memset((void *)(& dimm), 0, 8UL);
  val = (*(adapter->crb_read))(adapter, 136323672UL);
  }
  if ((int )val < 0) {
    {
    netdev_err((struct net_device const *)netdev, "Invalid DIMM flag\n");
    dimm.presence = 255U;
    }
    goto out;
  } else {
  }
  rows = (unsigned int )((u8 )(val >> 7)) & 15U;
  cols = (unsigned int )((u8 )(val >> 11)) & 15U;
  ranks = (unsigned int )((u8 )(val >> 15)) & 3U;
  banks = (unsigned int )((u8 )(val >> 21)) & 15U;
  dw = (unsigned int )((u8 )(val >> 18)) & 3U;
  dimm.presence = (unsigned int )((u8 )val) & 1U;
  if ((unsigned int )dimm.presence == 0U) {
    {
    netdev_err((struct net_device const *)netdev, "DIMM not present\n");
    }
    goto out;
  } else {
  }
  dimm.dimm_type = (unsigned int )((u8 )(val >> 25)) & 63U;
  {
  if ((int )dimm.dimm_type == 1) {
    goto case_1;
  } else {
  }
  if ((int )dimm.dimm_type == 2) {
    goto case_2;
  } else {
  }
  if ((int )dimm.dimm_type == 4) {
    goto case_4;
  } else {
  }
  if ((int )dimm.dimm_type == 8) {
    goto case_8;
  } else {
  }
  if ((int )dimm.dimm_type == 16) {
    goto case_16;
  } else {
  }
  if ((int )dimm.dimm_type == 32) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  case_4: ;
  case_8: ;
  case_16: ;
  case_32: ;
  goto ldv_51961;
  switch_default:
  {
  netdev_err((struct net_device const *)netdev, "Invalid DIMM type %x\n", (int )dimm.dimm_type);
  }
  goto out;
  switch_break: ;
  }
  ldv_51961: ;
  if ((val & 2U) != 0U) {
    dimm.mem_type = 8U;
  } else {
    dimm.mem_type = (unsigned int )((u8 )(val >> 3)) & 15U;
  }
  if ((val & 4U) != 0U) {
    dimm.size = 512U;
    goto out;
  } else {
  }
  if ((unsigned int )rows == 0U) {
    {
    netdev_err((struct net_device const *)netdev, "Invalid no of rows %x\n", (int )rows);
    }
    goto out;
  } else {
  }
  if ((unsigned int )cols == 0U) {
    {
    netdev_err((struct net_device const *)netdev, "Invalid no of columns %x\n",
               (int )cols);
    }
    goto out;
  } else {
  }
  if ((unsigned int )banks == 0U) {
    {
    netdev_err((struct net_device const *)netdev, "Invalid no of banks %x\n", (int )banks);
    }
    goto out;
  } else {
  }
  ranks = (unsigned int )ranks + 1U;
  {
  if ((int )dw == 0) {
    goto case_0;
  } else {
  }
  if ((int )dw == 1) {
    goto case_1___0;
  } else {
  }
  if ((int )dw == 2) {
    goto case_2___0;
  } else {
  }
  if ((int )dw == 3) {
    goto case_3;
  } else {
  }
  if ((int )dw == 4) {
    goto case_4___0;
  } else {
  }
  if ((int )dw == 5) {
    goto case_5;
  } else {
  }
  if ((int )dw == 6) {
    goto case_6;
  } else {
  }
  if ((int )dw == 7) {
    goto case_7;
  } else {
  }
  goto switch_default___0;
  case_0:
  dw = 32U;
  goto ldv_51964;
  case_1___0:
  dw = 33U;
  goto ldv_51964;
  case_2___0:
  dw = 36U;
  goto ldv_51964;
  case_3:
  dw = 64U;
  goto ldv_51964;
  case_4___0:
  dw = 72U;
  goto ldv_51964;
  case_5:
  dw = 80U;
  goto ldv_51964;
  case_6:
  dw = 128U;
  goto ldv_51964;
  case_7:
  dw = 144U;
  goto ldv_51964;
  switch_default___0:
  {
  netdev_err((struct net_device const *)netdev, "Invalid data-width %x\n", (int )dw);
  }
  goto out;
  switch_break___0: ;
  }
  ldv_51964:
  dimm.size = (u32 )((((((1 << (int )rows) << (int )cols) * (int )dw) * (int )banks) * (int )ranks) / 8);
  dimm.size = dimm.size / 1048576U;
  out:
  {
  memcpy((void *)buf, (void const *)(& dimm), 8UL);
  }
  return (8L);
}
}
static struct bin_attribute bin_attr_dimm = {{"dimm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & netxen_sysfs_read_dimm,
    0, 0};
static void netxen_create_sysfs_entries(struct netxen_adapter *adapter )
{
  struct device *dev ;
  int tmp ;
  {
  dev = & (adapter->pdev)->dev;
  if ((adapter->capabilities & 256U) != 0U) {
    {
    tmp = device_create_file(dev, (struct device_attribute const *)(& dev_attr_bridged_mode));
    }
    if (tmp != 0) {
      {
      dev_warn((struct device const *)dev, "failed to create bridged_mode sysfs entry\n");
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void netxen_remove_sysfs_entries(struct netxen_adapter *adapter )
{
  struct device *dev ;
  {
  dev = & (adapter->pdev)->dev;
  if ((adapter->capabilities & 256U) != 0U) {
    {
    device_remove_file(dev, (struct device_attribute const *)(& dev_attr_bridged_mode));
    }
  } else {
  }
  return;
}
}
static void netxen_create_diag_entries(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct device *dev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  pdev = adapter->pdev;
  dev = & pdev->dev;
  tmp = device_create_file(dev, (struct device_attribute const *)(& dev_attr_diag_mode));
  }
  if (tmp != 0) {
    {
    _dev_info((struct device const *)dev, "failed to create diag_mode sysfs entry\n");
    }
  } else {
  }
  {
  tmp___0 = device_create_bin_file(dev, (struct bin_attribute const *)(& bin_attr_crb));
  }
  if (tmp___0 != 0) {
    {
    _dev_info((struct device const *)dev, "failed to create crb sysfs entry\n");
    }
  } else {
  }
  {
  tmp___1 = device_create_bin_file(dev, (struct bin_attribute const *)(& bin_attr_mem));
  }
  if (tmp___1 != 0) {
    {
    _dev_info((struct device const *)dev, "failed to create mem sysfs entry\n");
    }
  } else {
  }
  {
  tmp___2 = device_create_bin_file(dev, (struct bin_attribute const *)(& bin_attr_dimm));
  }
  if (tmp___2 != 0) {
    {
    _dev_info((struct device const *)dev, "failed to create dimm sysfs entry\n");
    }
  } else {
  }
  return;
}
}
static void netxen_remove_diag_entries(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  struct device *dev ;
  {
  {
  pdev = adapter->pdev;
  dev = & pdev->dev;
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_diag_mode));
  device_remove_bin_file(dev, (struct bin_attribute const *)(& bin_attr_crb));
  device_remove_bin_file(dev, (struct bin_attribute const *)(& bin_attr_mem));
  device_remove_bin_file(dev, (struct bin_attribute const *)(& bin_attr_dimm));
  }
  return;
}
}
static int netxen_destip_supported(struct netxen_adapter *adapter )
{
  {
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->ahw.cut_through != 0U) {
    return (0);
  } else {
  }
  return (1);
}
}
static void netxen_free_ip_list(struct netxen_adapter *adapter , bool master )
{
  struct nx_ip_list *cur ;
  struct nx_ip_list *tmp_cur ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)adapter->ip_list.next;
  cur = (struct nx_ip_list *)__mptr;
  __mptr___0 = (struct list_head const *)cur->list.next;
  tmp_cur = (struct nx_ip_list *)__mptr___0;
  goto ldv_52008;
  ldv_52007: ;
  if ((int )master) {
    if ((int )cur->master) {
      {
      netxen_config_ipaddr(adapter, cur->ip_addr, 3);
      list_del(& cur->list);
      kfree((void const *)cur);
      }
    } else {
    }
  } else {
    {
    netxen_config_ipaddr(adapter, cur->ip_addr, 3);
    list_del(& cur->list);
    kfree((void const *)cur);
    }
  }
  cur = tmp_cur;
  __mptr___1 = (struct list_head const *)tmp_cur->list.next;
  tmp_cur = (struct nx_ip_list *)__mptr___1;
  ldv_52008: ;
  if ((unsigned long )(& cur->list) != (unsigned long )(& adapter->ip_list)) {
    goto ldv_52007;
  } else {
  }
  return;
}
}
static bool netxen_list_config_ip(struct netxen_adapter *adapter , struct in_ifaddr *ifa ,
                                  unsigned long event )
{
  struct net_device *dev ;
  struct nx_ip_list *cur ;
  struct nx_ip_list *tmp_cur ;
  struct list_head *head ;
  bool ret ;
  struct list_head const *__mptr ;
  void *tmp ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  ret = 0;
  dev = (unsigned long )ifa->ifa_dev != (unsigned long )((struct in_device *)0) ? (ifa->ifa_dev)->dev : (struct net_device *)0;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    goto out;
  } else {
  }
  {
  if (event == 2UL) {
    goto case_2;
  } else {
  }
  if (event == 3UL) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_2:
  head = adapter->ip_list.next;
  goto ldv_52025;
  ldv_52024:
  __mptr = (struct list_head const *)head;
  cur = (struct nx_ip_list *)__mptr;
  if (cur->ip_addr == ifa->ifa_address) {
    goto out;
  } else {
  }
  head = head->next;
  ldv_52025: ;
  if ((unsigned long )head != (unsigned long )(& adapter->ip_list)) {
    goto ldv_52024;
  } else {
  }
  {
  tmp = kzalloc(24UL, 32U);
  cur = (struct nx_ip_list *)tmp;
  }
  if ((unsigned long )cur == (unsigned long )((struct nx_ip_list *)0)) {
    goto out;
  } else {
  }
  if ((int )dev->priv_flags & 1) {
    {
    dev = vlan_dev_real_dev((struct net_device const *)dev);
    }
  } else {
  }
  {
  tmp___0 = netif_is_bond_master(dev);
  cur->master = (int )tmp___0 != 0;
  cur->ip_addr = ifa->ifa_address;
  list_add_tail(& cur->list, & adapter->ip_list);
  netxen_config_ipaddr(adapter, ifa->ifa_address, 2);
  ret = 1;
  }
  goto ldv_52027;
  case_3:
  __mptr___0 = (struct list_head const *)adapter->ip_list.next;
  cur = (struct nx_ip_list *)__mptr___0;
  __mptr___1 = (struct list_head const *)cur->list.next;
  tmp_cur = (struct nx_ip_list *)__mptr___1;
  goto ldv_52037;
  ldv_52036: ;
  if (cur->ip_addr == ifa->ifa_address) {
    {
    list_del(& cur->list);
    kfree((void const *)cur);
    netxen_config_ipaddr(adapter, ifa->ifa_address, 3);
    ret = 1;
    }
    goto ldv_52035;
  } else {
  }
  cur = tmp_cur;
  __mptr___2 = (struct list_head const *)tmp_cur->list.next;
  tmp_cur = (struct nx_ip_list *)__mptr___2;
  ldv_52037: ;
  if ((unsigned long )(& cur->list) != (unsigned long )(& adapter->ip_list)) {
    goto ldv_52036;
  } else {
  }
  ldv_52035: ;
  switch_break: ;
  }
  ldv_52027: ;
  out: ;
  return (ret);
}
}
static void netxen_config_indev_addr(struct netxen_adapter *adapter , struct net_device *dev ,
                                     unsigned long event )
{
  struct in_device *indev ;
  int tmp ;
  struct in_ifaddr *ifa ;
  {
  {
  tmp = netxen_destip_supported(adapter);
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  indev = in_dev_get((struct net_device const *)dev);
  }
  if ((unsigned long )indev == (unsigned long )((struct in_device *)0)) {
    return;
  } else {
  }
  ifa = indev->ifa_list;
  goto ldv_52050;
  ldv_52049: ;
  {
  if (event == 1UL) {
    goto case_1;
  } else {
  }
  if (event == 2UL) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  {
  netxen_list_config_ip(adapter, ifa, 2UL);
  }
  goto ldv_52046;
  case_2:
  {
  netxen_list_config_ip(adapter, ifa, 3UL);
  }
  goto ldv_52046;
  switch_default: ;
  goto ldv_52046;
  switch_break: ;
  }
  ldv_52046:
  ifa = ifa->ifa_next;
  ldv_52050: ;
  if ((unsigned long )ifa != (unsigned long )((struct in_ifaddr *)0)) {
    goto ldv_52049;
  } else {
  }
  {
  in_dev_put(indev);
  }
  return;
}
}
static void netxen_restore_indev_addr(struct net_device *netdev , unsigned long event )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct nx_ip_list *pos ;
  struct nx_ip_list *tmp_pos ;
  unsigned long ip_event ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  ip_event = event == 1UL ? 2UL : 3UL;
  netxen_config_indev_addr(adapter, netdev, event);
  __mptr = (struct list_head const *)adapter->ip_list.next;
  pos = (struct nx_ip_list *)__mptr;
  __mptr___0 = (struct list_head const *)pos->list.next;
  tmp_pos = (struct nx_ip_list *)__mptr___0;
  }
  goto ldv_52067;
  ldv_52066:
  {
  netxen_config_ipaddr(adapter, pos->ip_addr, (int )ip_event);
  pos = tmp_pos;
  __mptr___1 = (struct list_head const *)tmp_pos->list.next;
  tmp_pos = (struct nx_ip_list *)__mptr___1;
  }
  ldv_52067: ;
  if ((unsigned long )(& pos->list) != (unsigned long )(& adapter->ip_list)) {
    goto ldv_52066;
  } else {
  }
  return;
}
}
__inline static bool netxen_config_checkdev(struct net_device *dev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )dev->netdev_ops != (unsigned long )(& netxen_netdev_ops)) {
    return (0);
  } else {
  }
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if ((unsigned long )adapter == (unsigned long )((struct netxen_adapter *)0)) {
    return (0);
  } else {
  }
  {
  tmp___0 = netxen_destip_supported(adapter);
  }
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->is_up != 777U) {
    return (0);
  } else {
  }
  return (1);
}
}
static void netxen_config_master(struct net_device *dev , unsigned long event )
{
  struct net_device *master ;
  struct net_device *slave ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  struct net_device *tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  rcu_read_lock();
  master = netdev_master_upper_dev_get_rcu(dev);
  }
  if ((unsigned long )master != (unsigned long )((struct net_device *)0)) {
    {
    tmp___3 = netif_is_bond_master(master);
    }
    if ((int )tmp___3) {
      {
      tmp___4 = netif_is_bond_slave(dev);
      }
      if (tmp___4) {
        tmp___5 = 0;
      } else {
        tmp___5 = 1;
      }
      if (tmp___5) {
        {
        netxen_config_indev_addr(adapter, master, event);
        __ptr = init_net.dev_base_head.next;
        _________p1 = *((struct list_head * volatile *)(& __ptr));
        tmp___0 = debug_lockdep_rcu_enabled();
        }
        if (tmp___0 != 0 && ! __warned) {
          {
          rcu_read_lock_held();
          }
        } else {
        }
        __mptr = (struct list_head const *)_________p1;
        slave = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
        goto ldv_52095;
        ldv_52094: ;
        if ((int )slave->priv_flags & 1) {
          {
          tmp___1 = vlan_dev_real_dev((struct net_device const *)slave);
          }
          if ((unsigned long )tmp___1 == (unsigned long )master) {
            {
            netxen_config_indev_addr(adapter, slave, event);
            }
          } else {
          }
        } else {
        }
        {
        __ptr___0 = slave->dev_list.next;
        _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
        tmp___2 = debug_lockdep_rcu_enabled();
        }
        if (tmp___2 != 0 && ! __warned___0) {
          {
          rcu_read_lock_held();
          }
        } else {
        }
        __mptr___0 = (struct list_head const *)_________p1___0;
        slave = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
        ldv_52095: ;
        if ((unsigned long )(& slave->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
          goto ldv_52094;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  rcu_read_unlock();
  }
  if ((unsigned long )master == (unsigned long )((struct net_device *)0) && (dev->priv_flags & 32U) != 0U) {
    {
    netxen_free_ip_list(adapter, 1);
    }
  } else {
  }
  return;
}
}
static int netxen_netdev_event(struct notifier_block *this , unsigned long event ,
                               void *ptr )
{
  struct netxen_adapter *adapter ;
  struct net_device *dev ;
  struct net_device *tmp ;
  struct net_device *orig_dev ;
  struct net_device *slave ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  struct net_device *tmp___4 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  bool tmp___9 ;
  {
  {
  tmp = netdev_notifier_info_to_dev((struct netdev_notifier_info const *)ptr);
  dev = tmp;
  orig_dev = dev;
  }
  recheck: ;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    goto done;
  } else {
  }
  if ((int )dev->priv_flags & 1) {
    {
    dev = vlan_dev_real_dev((struct net_device const *)dev);
    }
    goto recheck;
  } else {
  }
  if (event - 1UL <= 1UL) {
    {
    tmp___9 = netif_is_bond_master(dev);
    }
    if ((int )tmp___9) {
      {
      rcu_read_lock();
      __ptr = init_net.dev_base_head.next;
      _________p1 = *((struct list_head * volatile *)(& __ptr));
      tmp___0 = debug_lockdep_rcu_enabled();
      }
      if (tmp___0 != 0 && ! __warned) {
        {
        rcu_read_lock_held();
        }
      } else {
      }
      __mptr = (struct list_head const *)_________p1;
      slave = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
      goto ldv_52124;
      ldv_52123:
      {
      tmp___4 = netdev_master_upper_dev_get_rcu(slave);
      }
      if ((unsigned long )tmp___4 == (unsigned long )dev) {
        {
        tmp___1 = netxen_config_checkdev(slave);
        }
        if (tmp___1) {
          tmp___2 = 0;
        } else {
          tmp___2 = 1;
        }
        if (tmp___2) {
          goto ldv_52122;
        } else {
        }
        {
        tmp___3 = netdev_priv((struct net_device const *)slave);
        adapter = (struct netxen_adapter *)tmp___3;
        netxen_config_indev_addr(adapter, orig_dev, event);
        }
      } else {
      }
      ldv_52122:
      {
      __ptr___0 = slave->dev_list.next;
      _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
      tmp___5 = debug_lockdep_rcu_enabled();
      }
      if (tmp___5 != 0 && ! __warned___0) {
        {
        rcu_read_lock_held();
        }
      } else {
      }
      __mptr___0 = (struct list_head const *)_________p1___0;
      slave = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
      ldv_52124: ;
      if ((unsigned long )(& slave->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
        goto ldv_52123;
      } else {
      }
      {
      rcu_read_unlock();
      }
    } else {
      {
      tmp___6 = netxen_config_checkdev(dev);
      }
      if (tmp___6) {
        tmp___7 = 0;
      } else {
        tmp___7 = 1;
      }
      if (tmp___7) {
        goto done;
      } else {
      }
      {
      tmp___8 = netdev_priv((struct net_device const *)dev);
      adapter = (struct netxen_adapter *)tmp___8;
      }
      if ((unsigned long )orig_dev == (unsigned long )dev) {
        {
        netxen_config_master(dev, event);
        }
      } else {
      }
      {
      netxen_config_indev_addr(adapter, orig_dev, event);
      }
    }
  } else {
  }
  done: ;
  return (0);
}
}
static int netxen_inetaddr_event(struct notifier_block *this , unsigned long event ,
                                 void *ptr )
{
  struct netxen_adapter *adapter ;
  struct net_device *dev ;
  struct net_device *slave ;
  struct in_ifaddr *ifa ;
  unsigned long ip_event ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  struct net_device *tmp___3 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  bool tmp___8 ;
  {
  ifa = (struct in_ifaddr *)ptr;
  dev = (unsigned long )ifa->ifa_dev != (unsigned long )((struct in_device *)0) ? (ifa->ifa_dev)->dev : (struct net_device *)0;
  ip_event = event == 1UL ? 2UL : 3UL;
  recheck: ;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    goto done;
  } else {
  }
  if ((int )dev->priv_flags & 1) {
    {
    dev = vlan_dev_real_dev((struct net_device const *)dev);
    }
    goto recheck;
  } else {
  }
  if (event - 1UL <= 1UL) {
    {
    tmp___8 = netif_is_bond_master(dev);
    }
    if ((int )tmp___8) {
      {
      rcu_read_lock();
      __ptr = init_net.dev_base_head.next;
      _________p1 = *((struct list_head * volatile *)(& __ptr));
      tmp = debug_lockdep_rcu_enabled();
      }
      if (tmp != 0 && ! __warned) {
        {
        rcu_read_lock_held();
        }
      } else {
      }
      __mptr = (struct list_head const *)_________p1;
      slave = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
      goto ldv_52154;
      ldv_52153:
      {
      tmp___3 = netdev_master_upper_dev_get_rcu(slave);
      }
      if ((unsigned long )tmp___3 == (unsigned long )dev) {
        {
        tmp___0 = netxen_config_checkdev(slave);
        }
        if (tmp___0) {
          tmp___1 = 0;
        } else {
          tmp___1 = 1;
        }
        if (tmp___1) {
          goto ldv_52152;
        } else {
        }
        {
        tmp___2 = netdev_priv((struct net_device const *)slave);
        adapter = (struct netxen_adapter *)tmp___2;
        netxen_list_config_ip(adapter, ifa, ip_event);
        }
      } else {
      }
      ldv_52152:
      {
      __ptr___0 = slave->dev_list.next;
      _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
      tmp___4 = debug_lockdep_rcu_enabled();
      }
      if (tmp___4 != 0 && ! __warned___0) {
        {
        rcu_read_lock_held();
        }
      } else {
      }
      __mptr___0 = (struct list_head const *)_________p1___0;
      slave = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
      ldv_52154: ;
      if ((unsigned long )(& slave->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
        goto ldv_52153;
      } else {
      }
      {
      rcu_read_unlock();
      }
    } else {
      {
      tmp___5 = netxen_config_checkdev(dev);
      }
      if (tmp___5) {
        tmp___6 = 0;
      } else {
        tmp___6 = 1;
      }
      if (tmp___6) {
        goto done;
      } else {
      }
      {
      tmp___7 = netdev_priv((struct net_device const *)dev);
      adapter = (struct netxen_adapter *)tmp___7;
      netxen_list_config_ip(adapter, ifa, ip_event);
      }
    }
  } else {
  }
  done: ;
  return (0);
}
}
static struct notifier_block netxen_netdev_cb = {& netxen_netdev_event, 0, 0};
static struct notifier_block netxen_inetaddr_cb = {& netxen_inetaddr_event, 0, 0};
static struct pci_error_handlers const netxen_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& netxen_io_error_detected),
    0, 0, & netxen_io_slot_reset, & netxen_io_resume};
static struct pci_driver netxen_driver =
     {{0, 0}, (char const *)(& netxen_nic_driver_name), (struct pci_device_id const *)(& netxen_pci_tbl),
    & netxen_nic_probe, & netxen_nic_remove, & netxen_nic_suspend, 0, 0, & netxen_nic_resume,
    & netxen_nic_shutdown, 0, & netxen_err_handler, {0, 0, 0, 0, (_Bool)0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                            {0, 0}}};
static int netxen_init_module(void)
{
  int tmp ;
  {
  {
  printk("\016%s\n", (char *)(& netxen_nic_driver_string));
  ldv_register_netdevice_notifier_93(& netxen_netdev_cb);
  ldv_register_inetaddr_notifier_94(& netxen_inetaddr_cb);
  tmp = ldv___pci_register_driver_95(& netxen_driver, & __this_module, "netxen_nic");
  }
  return (tmp);
}
}
static void netxen_exit_module(void)
{
  {
  {
  ldv_pci_unregister_driver_96(& netxen_driver);
  ldv_unregister_inetaddr_notifier_97(& netxen_inetaddr_cb);
  ldv_unregister_netdevice_notifier_98(& netxen_netdev_cb);
  }
  return;
}
}
void ldv_EMGentry_exit_netxen_exit_module_22_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_netxen_init_module_22_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_15_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_16_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_18_1(struct notifier_block *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_19_22_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_22_5(void) ;
void ldv_dispatch_instance_deregister_9_2(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_9_3(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_11_1(int arg0 ) ;
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_13_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_17_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_20_2(struct notifier_block *arg0 ) ;
void ldv_dispatch_register_dummy_factory_19_22_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_22_7(void) ;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_17(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_26(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_29(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_36(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_42(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_43(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_45(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_46(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_49(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_50(int (*arg0)(struct net_device * ,
                                                               struct ethtool_dump * ) ,
                                                   struct net_device *arg1 , struct ethtool_dump *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_51(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct net_device * ,
                                                              struct ethtool_dump * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  struct ethtool_dump *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_dump * ) ,
                                                  struct net_device *arg1 , struct ethtool_dump *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_3_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 ) ;
void ldv_entry_EMGentry_22(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_inetaddr_notifier(int arg0 , struct notifier_block *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_13_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_register_netdevice_notifier(int arg0 , struct notifier_block *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_7(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_5(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_5(void) ;
void ldv_switch_automaton_state_8_1(void) ;
void ldv_switch_automaton_state_8_3(void) ;
void ldv_switch_automaton_state_9_1(void) ;
void ldv_switch_automaton_state_9_4(void) ;
void ldv_timer_dummy_factory_9(void *arg0 ) ;
void ldv_timer_instance_callback_8_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_8(void *arg0 ) ;
int ldv_unregister_inetaddr_notifier(int arg0 , struct notifier_block *arg1 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_15_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_unregister_netdevice_notifier(int arg0 , struct notifier_block *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
int (*ldv_1_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_1_callback_get_dump_data)(struct net_device * , struct ethtool_dump * ,
                                    void * ) ;
int (*ldv_1_callback_get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) ;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
void (*ldv_1_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
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
void (*ldv_1_callback_self_test)(struct net_device * , struct ethtool_test * , unsigned long long * ) ;
int (*ldv_1_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
int (*ldv_1_callback_set_dump)(struct net_device * , struct ethtool_dump * ) ;
int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
int (*ldv_1_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_coalesce *ldv_1_container_struct_ethtool_coalesce_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_dump *ldv_1_container_struct_ethtool_dump_ptr ;
struct ethtool_eeprom *ldv_1_container_struct_ethtool_eeprom_ptr ;
struct ethtool_pauseparam *ldv_1_container_struct_ethtool_pauseparam_ptr ;
struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
struct ethtool_ringparam *ldv_1_container_struct_ethtool_ringparam_ptr ;
struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
struct ethtool_test *ldv_1_container_struct_ethtool_test_ptr ;
struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
struct rtnl_link_stats64 *ldv_1_container_struct_rtnl_link_stats64_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
unsigned char *ldv_1_ldv_param_10_2_default ;
unsigned long long *ldv_1_ldv_param_14_2_default ;
int ldv_1_ldv_param_23_1_default ;
unsigned int ldv_1_ldv_param_26_1_default ;
unsigned char *ldv_1_ldv_param_26_2_default ;
int ldv_1_ldv_param_30_1_default ;
unsigned long long ldv_1_ldv_param_33_1_default ;
unsigned long long ldv_1_ldv_param_38_1_default ;
unsigned long long *ldv_1_ldv_param_46_2_default ;
void (*ldv_22_exit_netxen_exit_module_default)(void) ;
int (*ldv_22_init_netxen_init_module_default)(void) ;
int ldv_22_ret_default ;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) ;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
enum pci_channel_state ldv_2_resource_enum_pci_channel_state ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
long (*ldv_3_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) ;
long (*ldv_3_callback_show)(struct device * , struct device_attribute * , char * ) ;
long (*ldv_3_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) ;
long (*ldv_3_callback_write)(struct file * , struct kobject * , struct bin_attribute * ,
                             char * , long long , unsigned long ) ;
struct bin_attribute *ldv_3_container_struct_bin_attribute ;
struct device_attribute *ldv_3_container_struct_device_attribute ;
struct device *ldv_3_container_struct_device_ptr ;
struct file *ldv_3_container_struct_file_ptr ;
struct kobject *ldv_3_container_struct_kobject_ptr ;
char *ldv_3_ldv_param_12_2_default ;
unsigned long ldv_3_ldv_param_12_3_default ;
char *ldv_3_ldv_param_15_3_default ;
long long ldv_3_ldv_param_15_4_default ;
unsigned long ldv_3_ldv_param_15_5_default ;
char *ldv_3_ldv_param_3_3_default ;
long long ldv_3_ldv_param_3_4_default ;
unsigned long ldv_3_ldv_param_3_5_default ;
char *ldv_3_ldv_param_9_2_default ;
long (*ldv_4_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) ;
long (*ldv_4_callback_show)(struct device * , struct device_attribute * , char * ) ;
long (*ldv_4_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) ;
long (*ldv_4_callback_write)(struct file * , struct kobject * , struct bin_attribute * ,
                             char * , long long , unsigned long ) ;
struct bin_attribute *ldv_4_container_struct_bin_attribute ;
struct device_attribute *ldv_4_container_struct_device_attribute ;
struct device *ldv_4_container_struct_device_ptr ;
struct file *ldv_4_container_struct_file_ptr ;
struct kobject *ldv_4_container_struct_kobject_ptr ;
char *ldv_4_ldv_param_12_2_default ;
unsigned long ldv_4_ldv_param_12_3_default ;
char *ldv_4_ldv_param_15_3_default ;
long long ldv_4_ldv_param_15_4_default ;
unsigned long ldv_4_ldv_param_15_5_default ;
char *ldv_4_ldv_param_3_3_default ;
long long ldv_4_ldv_param_3_4_default ;
unsigned long ldv_4_ldv_param_3_5_default ;
char *ldv_4_ldv_param_9_2_default ;
long (*ldv_5_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) ;
long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) ;
long (*ldv_5_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) ;
long (*ldv_5_callback_write)(struct file * , struct kobject * , struct bin_attribute * ,
                             char * , long long , unsigned long ) ;
struct bin_attribute *ldv_5_container_struct_bin_attribute ;
struct device_attribute *ldv_5_container_struct_device_attribute ;
struct device *ldv_5_container_struct_device_ptr ;
struct file *ldv_5_container_struct_file_ptr ;
struct kobject *ldv_5_container_struct_kobject_ptr ;
char *ldv_5_ldv_param_12_2_default ;
unsigned long ldv_5_ldv_param_12_3_default ;
char *ldv_5_ldv_param_15_3_default ;
long long ldv_5_ldv_param_15_4_default ;
unsigned long ldv_5_ldv_param_15_5_default ;
char *ldv_5_ldv_param_3_3_default ;
long long ldv_5_ldv_param_3_4_default ;
unsigned long ldv_5_ldv_param_3_5_default ;
char *ldv_5_ldv_param_9_2_default ;
int (*ldv_6_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) ;
struct notifier_block *ldv_6_container_struct_notifier_block ;
unsigned long ldv_6_ldv_param_3_1_default ;
void *ldv_6_ldv_param_3_2_default ;
int (*ldv_7_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) ;
struct notifier_block *ldv_7_container_struct_notifier_block ;
unsigned long ldv_7_ldv_param_3_1_default ;
void *ldv_7_ldv_param_3_2_default ;
struct timer_list *ldv_8_container_timer_list ;
struct timer_list *ldv_9_container_timer_list ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_22 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
int ldv_statevar_9 ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & netxen_nic_change_mtu;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & netxen_fix_features;
struct rtnl_link_stats64 *(*ldv_1_callback_ndo_get_stats64)(struct net_device * ,
                                                            struct rtnl_link_stats64 * ) = & netxen_nic_get_stats;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) = & netxen_nic_poll_controller;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & netxen_set_features;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & netxen_nic_set_mac;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & netxen_set_multicast_list;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & netxen_nic_xmit_frame;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & netxen_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
void (*ldv_22_exit_netxen_exit_module_default)(void) = & netxen_exit_module;
int (*ldv_22_init_netxen_init_module_default)(void) = & netxen_init_module;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) = (unsigned int (*)(struct pci_dev * ,
                     enum pci_channel_state ))(& netxen_io_error_detected);
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) = & netxen_io_resume;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) = & netxen_io_slot_reset;
long (*ldv_3_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) = & netxen_sysfs_read_crb;
long (*ldv_3_callback_show)(struct device * , struct device_attribute * , char * ) = & netxen_show_bridged_mode;
long (*ldv_3_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) = (long (*)(struct device * , struct device_attribute * , char * , unsigned long ))(& netxen_store_bridged_mode);
long (*ldv_3_callback_write)(struct file * , struct kobject * , struct bin_attribute * ,
                             char * , long long , unsigned long ) = & netxen_sysfs_write_crb;
long (*ldv_4_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) = & netxen_sysfs_read_dimm;
long (*ldv_4_callback_show)(struct device * , struct device_attribute * , char * ) = & netxen_show_diag_mode;
long (*ldv_4_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) = (long (*)(struct device * , struct device_attribute * , char * , unsigned long ))(& netxen_store_diag_mode);
long (*ldv_5_callback_read)(struct file * , struct kobject * , struct bin_attribute * ,
                            char * , long long , unsigned long ) = & netxen_sysfs_read_mem;
long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) = & netxen_show_bridged_mode;
long (*ldv_5_callback_store)(struct device * , struct device_attribute * , char * ,
                             unsigned long ) = (long (*)(struct device * , struct device_attribute * , char * , unsigned long ))(& netxen_store_bridged_mode);
long (*ldv_5_callback_write)(struct file * , struct kobject * , struct bin_attribute * ,
                             char * , long long , unsigned long ) = & netxen_sysfs_write_mem;
int (*ldv_6_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) = & netxen_inetaddr_event;
int (*ldv_7_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) = & netxen_netdev_event;
void ldv_EMGentry_exit_netxen_exit_module_22_2(void (*arg0)(void) )
{
  {
  {
  netxen_exit_module();
  }
  return;
}
}
int ldv_EMGentry_init_netxen_init_module_22_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = netxen_init_module();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_17_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_17_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_17_2(ldv_17_pci_driver_pci_driver);
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
  struct net_device *ldv_10_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_10_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_10_netdev_net_device);
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
  {
  {
  tmp = external_allocated_data();
  ldv_0_callback_handler = (enum irqreturn (*)(int , void * ))tmp;
  ldv_0_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_container_net_device = (struct net_device *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_ethtool_cmd_ptr = (struct ethtool_cmd *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_container_struct_ethtool_coalesce_ptr = (struct ethtool_coalesce *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_container_struct_ethtool_drvinfo_ptr = (struct ethtool_drvinfo *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_1_container_struct_ethtool_dump_ptr = (struct ethtool_dump *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_1_container_struct_ethtool_eeprom_ptr = (struct ethtool_eeprom *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_1_container_struct_ethtool_pauseparam_ptr = (struct ethtool_pauseparam *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_container_struct_ethtool_regs_ptr = (struct ethtool_regs *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_1_container_struct_ethtool_ringparam_ptr = (struct ethtool_ringparam *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_1_container_struct_ethtool_stats_ptr = (struct ethtool_stats *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_1_container_struct_ethtool_test_ptr = (struct ethtool_test *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_1_container_struct_ethtool_wolinfo_ptr = (struct ethtool_wolinfo *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_1_container_struct_rtnl_link_stats64_ptr = (struct rtnl_link_stats64 *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_1_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_1_ldv_param_10_2_default = (unsigned char *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_1_ldv_param_14_2_default = (unsigned long long *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_1_ldv_param_26_2_default = (unsigned char *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_1_ldv_param_46_2_default = (unsigned long long *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_2_resource_dev = (struct pci_dev *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_3_container_struct_device_ptr = (struct device *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_3_container_struct_file_ptr = (struct file *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_3_container_struct_kobject_ptr = (struct kobject *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_3_ldv_param_12_2_default = (char *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_3_ldv_param_15_3_default = (char *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_3_ldv_param_3_3_default = (char *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_3_ldv_param_9_2_default = (char *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_4_callback_write = (long (*)(struct file * , struct kobject * , struct bin_attribute * ,
                                   char * , long long , unsigned long ))tmp___27;
  tmp___28 = external_allocated_data();
  ldv_4_container_struct_device_ptr = (struct device *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_4_container_struct_file_ptr = (struct file *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_4_container_struct_kobject_ptr = (struct kobject *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_4_ldv_param_12_2_default = (char *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_4_ldv_param_15_3_default = (char *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_4_ldv_param_3_3_default = (char *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_4_ldv_param_9_2_default = (char *)tmp___34;
  tmp___35 = external_allocated_data();
  ldv_5_container_struct_device_ptr = (struct device *)tmp___35;
  tmp___36 = external_allocated_data();
  ldv_5_container_struct_file_ptr = (struct file *)tmp___36;
  tmp___37 = external_allocated_data();
  ldv_5_container_struct_kobject_ptr = (struct kobject *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_5_ldv_param_12_2_default = (char *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_5_ldv_param_15_3_default = (char *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_5_ldv_param_3_3_default = (char *)tmp___40;
  tmp___41 = external_allocated_data();
  ldv_5_ldv_param_9_2_default = (char *)tmp___41;
  ldv_6_ldv_param_3_2_default = external_allocated_data();
  ldv_7_ldv_param_3_2_default = external_allocated_data();
  tmp___42 = external_allocated_data();
  ldv_8_container_timer_list = (struct timer_list *)tmp___42;
  tmp___43 = external_allocated_data();
  ldv_9_container_timer_list = (struct timer_list *)tmp___43;
  }
  return;
}
}
void ldv_dispatch_deregister_15_1(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_16_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_deregister_18_1(struct notifier_block *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_6_container_struct_notifier_block = arg0;
    ldv_switch_automaton_state_6_1();
    }
  } else {
    {
    ldv_7_container_struct_notifier_block = arg0;
    ldv_switch_automaton_state_7_1();
    }
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_19_22_4(void)
{
  {
  {
  ldv_switch_automaton_state_9_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_22_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  ldv_switch_automaton_state_4_1();
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_9_2(struct timer_list *arg0 )
{
  {
  {
  ldv_8_container_timer_list = arg0;
  ldv_switch_automaton_state_8_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_9_3(struct timer_list *arg0 )
{
  {
  {
  ldv_8_container_timer_list = arg0;
  ldv_switch_automaton_state_8_3();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_11_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
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
void ldv_dispatch_register_13_4(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dispatch_register_17_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_20_2(struct notifier_block *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_6_container_struct_notifier_block = arg0;
    ldv_switch_automaton_state_6_5();
    }
  } else {
    {
    ldv_7_container_struct_notifier_block = arg0;
    ldv_switch_automaton_state_7_5();
    }
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_19_22_6(void)
{
  {
  {
  ldv_switch_automaton_state_9_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_22_7(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  ldv_switch_automaton_state_4_5();
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  netxen_nic_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  netxen_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_36(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  netxen_nic_get_stats(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  netxen_nic_poll_controller(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  netxen_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  netxen_nic_set_mac(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_42(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  netxen_set_multicast_list(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_43(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  netxen_nic_xmit_frame(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  netxen_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_45(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  netxen_store_bridged_mode(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 )
{
  {
  {
  netxen_sysfs_write_crb(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 )
{
  {
  {
  netxen_sysfs_read_crb(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  netxen_show_bridged_mode(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  netxen_store_diag_mode(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 )
{
  {
  {
  netxen_sysfs_read_dimm(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  netxen_show_diag_mode(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_12(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  netxen_store_bridged_mode(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_15(long (*arg0)(struct file * , struct kobject * ,
                                                                struct bin_attribute * ,
                                                                char * , long long ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , struct kobject *arg2 ,
                                                   struct bin_attribute *arg3 , char *arg4 ,
                                                   long long arg5 , unsigned long arg6 )
{
  {
  {
  netxen_sysfs_write_mem(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct file * , struct kobject * ,
                                                               struct bin_attribute * ,
                                                               char * , long long ,
                                                               unsigned long ) ,
                                                  struct file *arg1 , struct kobject *arg2 ,
                                                  struct bin_attribute *arg3 , char *arg4 ,
                                                  long long arg5 , unsigned long arg6 )
{
  {
  {
  netxen_sysfs_read_mem(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  netxen_show_bridged_mode(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 )
{
  {
  {
  netxen_inetaddr_event(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 )
{
  {
  {
  netxen_netdev_event(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_22(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
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
  if (ldv_statevar_22 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_22 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_22 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_22 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_22 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_22 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_22 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((ldv_statevar_2 == 12 || ldv_statevar_6 == 1) || ldv_statevar_7 == 1);
  ldv_EMGentry_exit_netxen_exit_module_22_2(ldv_22_exit_netxen_exit_module_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_22 = 11;
  }
  goto ldv_53470;
  case_3:
  {
  ldv_assume((ldv_statevar_2 == 12 || ldv_statevar_6 == 1) || ldv_statevar_7 == 1);
  ldv_EMGentry_exit_netxen_exit_module_22_2(ldv_22_exit_netxen_exit_module_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_22 = 11;
  }
  goto ldv_53470;
  case_4:
  {
  ldv_assume(ldv_statevar_9 == 2);
  ldv_dispatch_deregister_dummy_factory_19_22_4();
  ldv_statevar_22 = 2;
  }
  goto ldv_53470;
  case_5:
  {
  ldv_assume((ldv_statevar_3 == 1 || ldv_statevar_4 == 1) || ldv_statevar_5 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_12_22_5();
  ldv_statevar_22 = 4;
  }
  goto ldv_53470;
  case_6:
  {
  ldv_assume(ldv_statevar_9 == 4);
  ldv_dispatch_register_dummy_factory_19_22_6();
  ldv_statevar_22 = 5;
  }
  goto ldv_53470;
  case_7:
  {
  ldv_assume((ldv_statevar_3 == 5 || ldv_statevar_4 == 5) || ldv_statevar_5 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_12_22_7();
  ldv_statevar_22 = 6;
  }
  goto ldv_53470;
  case_8:
  {
  ldv_assume(ldv_22_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_22 = 3;
  } else {
    ldv_statevar_22 = 7;
  }
  goto ldv_53470;
  case_10:
  {
  ldv_assume(ldv_22_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_22 = 11;
  }
  goto ldv_53470;
  case_11:
  {
  ldv_assume((ldv_statevar_2 == 20 || ldv_statevar_6 == 5) || ldv_statevar_7 == 5);
  ldv_22_ret_default = ldv_EMGentry_init_netxen_init_module_22_11(ldv_22_init_netxen_init_module_default);
  ldv_22_ret_default = ldv_post_init(ldv_22_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_22 = 8;
  } else {
    ldv_statevar_22 = 10;
  }
  goto ldv_53470;
  switch_default: ;
  switch_break: ;
  }
  ldv_53470: ;
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
  ldv_statevar_22 = 11;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_statevar_3 = 5;
  ldv_statevar_4 = 5;
  ldv_statevar_5 = 5;
  ldv_statevar_6 = 5;
  ldv_statevar_7 = 5;
  ldv_statevar_8 = 3;
  ldv_statevar_9 = 4;
  }
  ldv_53495:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_22((void *)0);
  }
  goto ldv_53483;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_53483;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_53483;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_53483;
  case_4:
  {
  ldv_struct_device_attribute_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_53483;
  case_5:
  {
  ldv_struct_device_attribute_dummy_resourceless_instance_4((void *)0);
  }
  goto ldv_53483;
  case_6:
  {
  ldv_struct_device_attribute_dummy_resourceless_instance_5((void *)0);
  }
  goto ldv_53483;
  case_7:
  {
  ldv_struct_notifier_block_dummy_resourceless_instance_6((void *)0);
  }
  goto ldv_53483;
  case_8:
  {
  ldv_struct_notifier_block_dummy_resourceless_instance_7((void *)0);
  }
  goto ldv_53483;
  case_9:
  {
  ldv_timer_timer_instance_8((void *)0);
  }
  goto ldv_53483;
  case_10:
  {
  ldv_timer_dummy_factory_9((void *)0);
  }
  goto ldv_53483;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_53483: ;
  goto ldv_53495;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_11_line_line ;
  {
  {
  ldv_11_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_11_1(ldv_11_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_12_netdev_net_device ;
  {
  {
  ldv_12_netdev_net_device = arg1;
  ldv_free((void *)ldv_12_netdev_net_device);
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
  enum irqreturn tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
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
  goto ldv_53527;
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
  goto ldv_53527;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_0_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                               ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_53527;
  case_6: ;
  goto ldv_53527;
  switch_default: ;
  switch_break: ;
  }
  ldv_53527: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
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
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_1 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
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
  if (ldv_statevar_1 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_1 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_1 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
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
  if (ldv_statevar_1 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_1 == 39) {
    goto case_39;
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
  if (ldv_statevar_1 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_1 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_1 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_1 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_1 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_1 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_1 == 51) {
    goto case_51;
  } else {
  }
  if (ldv_statevar_1 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_1 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_1 == 54) {
    goto case_54;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53536;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_53536;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_coalesce, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_coalesce_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_53536;
  case_5: ;
  goto ldv_53536;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_get_dump_data, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_dump_ptr,
                                               (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_1_9(ldv_1_callback_get_dump_flag, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_dump_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_11:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_1_ldv_param_10_2_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_eeprom, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_eeprom_ptr,
                                                ldv_1_ldv_param_10_2_default);
  ldv_free((void *)ldv_1_ldv_param_10_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_eeprom_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_15:
  {
  tmp___0 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_14_2_default = (unsigned long long *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_ethtool_stats,
                                                ldv_1_container_net_device, ldv_1_container_struct_ethtool_stats_ptr,
                                                ldv_1_ldv_param_14_2_default);
  ldv_free((void *)ldv_1_ldv_param_14_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_1_17(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_get_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_1_19(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_1_20(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_get_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_22(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_23_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_27:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_26_2_default = (unsigned char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_1_26(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_26_1_default, ldv_1_ldv_param_26_2_default);
  ldv_free((void *)ldv_1_ldv_param_26_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_1_29(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_30_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_33_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_1_36(ldv_1_callback_ndo_get_stats64, ldv_1_container_net_device,
                                                ldv_1_container_struct_rtnl_link_stats64_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_37:
  {
  ldv_dummy_resourceless_instance_callback_1_37(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_38_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_1_41(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_42:
  {
  ldv_dummy_resourceless_instance_callback_1_42(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_43:
  {
  ldv_dummy_resourceless_instance_callback_1_43(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_44:
  {
  ldv_dummy_resourceless_instance_callback_1_44(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_45:
  {
  ldv_dummy_resourceless_instance_callback_1_45(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_47:
  {
  tmp___2 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_46_2_default = (unsigned long long *)tmp___2;
  ldv_dummy_resourceless_instance_callback_1_46(ldv_1_callback_self_test, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_test_ptr,
                                                ldv_1_ldv_param_46_2_default);
  ldv_free((void *)ldv_1_ldv_param_46_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_49:
  {
  ldv_dummy_resourceless_instance_callback_1_49(ldv_1_callback_set_coalesce, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_coalesce_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_50:
  {
  ldv_dummy_resourceless_instance_callback_1_50(ldv_1_callback_set_dump, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_dump_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_51:
  {
  ldv_dummy_resourceless_instance_callback_1_51(ldv_1_callback_set_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_52:
  {
  ldv_dummy_resourceless_instance_callback_1_52(ldv_1_callback_set_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_53:
  {
  ldv_dummy_resourceless_instance_callback_1_53(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  case_54:
  {
  ldv_dummy_resourceless_instance_callback_1_54(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_53536;
  switch_default: ;
  switch_break: ;
  }
  ldv_53536: ;
  return;
}
}
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  netxen_io_error_detected(arg1, (pci_channel_state_t )arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  netxen_io_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  netxen_io_slot_reset(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = netxen_nic_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  netxen_nic_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  netxen_nic_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  netxen_nic_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = netxen_nic_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
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
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
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
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_2 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_2 == 24) {
    goto case_24;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_53636;
  case_2:
  {
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_1 == 1);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_53636;
  case_3:
  {
  ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
  ldv_statevar_2 = 2;
  }
  goto ldv_53636;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_53636;
  case_5:
  {
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  ldv_statevar_2 = 4;
  }
  goto ldv_53636;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_53636;
  case_7: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 6;
  }
  goto ldv_53636;
  case_8:
  {
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_53636;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_53636;
  case_10:
  {
  ldv_pci_instance_callback_2_10(ldv_2_callback_error_detected, ldv_2_resource_dev,
                                 ldv_2_resource_enum_pci_channel_state);
  ldv_statevar_2 = 9;
  }
  goto ldv_53636;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_53636;
  case_14:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_53636;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_53636;
  case_17:
  {
  ldv_assume(ldv_statevar_1 == 5);
  ldv_pre_probe();
  ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                  ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 14;
  } else {
    ldv_statevar_2 = 16;
  }
  goto ldv_53636;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_53636;
  case_20: ;
  goto ldv_53636;
  case_23:
  {
  ldv_pci_instance_callback_2_23(ldv_2_callback_func_1_ptr, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_53636;
  case_24:
  {
  ldv_pci_instance_callback_2_24(ldv_2_callback_slot_reset, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_53636;
  switch_default: ;
  switch_break: ;
  }
  ldv_53636: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_16_pci_driver_pci_driver ;
  {
  {
  ldv_16_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_16_1(ldv_16_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_inetaddr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_20_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_20_struct_notifier_block_struct_notifier_block = arg1;
    ldv_assume(ldv_statevar_6 == 5 || ldv_statevar_7 == 5);
    ldv_dispatch_register_20_2(ldv_20_struct_notifier_block_struct_notifier_block);
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
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_13_netdev_net_device ;
  int ldv_13_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_13_ret_default = 1;
  ldv_13_ret_default = ldv_pre_register_netdev();
  ldv_13_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_13_ret_default == 0);
    ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_0 == 2);
    ldv_13_ret_default = ldv_register_netdev_open_13_6((ldv_13_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_13_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_13_ret_default == 0);
      ldv_assume(ldv_statevar_1 == 5);
      ldv_dispatch_register_13_4(ldv_13_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_13_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_13_ret_default != 0);
    }
  }
  return (ldv_13_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_13_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = netxen_nic_open(arg1);
  }
  return (tmp);
}
}
int ldv_register_netdevice_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_21_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_21_struct_notifier_block_struct_notifier_block = arg1;
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
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_14_callback_handler)(int , void * ) ;
  void *ldv_14_data_data ;
  int ldv_14_line_line ;
  enum irqreturn (*ldv_14_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_14_line_line = (int )arg1;
    ldv_14_callback_handler = arg2;
    ldv_14_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_14_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_14_2(ldv_14_line_line, ldv_14_callback_handler, ldv_14_thread_thread,
                                   ldv_14_data_data);
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
void ldv_struct_device_attribute_dummy_resourceless_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  if (ldv_statevar_3 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53703;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 7;
  }
  goto ldv_53703;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_read, ldv_3_container_struct_file_ptr,
                                               ldv_3_container_struct_kobject_ptr,
                                               ldv_3_container_struct_bin_attribute,
                                               ldv_3_ldv_param_3_3_default, ldv_3_ldv_param_3_4_default,
                                               ldv_3_ldv_param_3_5_default);
  ldv_free((void *)ldv_3_ldv_param_3_3_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_53703;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 7;
  }
  goto ldv_53703;
  case_5: ;
  goto ldv_53703;
  case_7:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_3_3_default = (char *)tmp___1;
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_53703;
  case_10:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_9_2_default = (char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_show, ldv_3_container_struct_device_ptr,
                                               ldv_3_container_struct_device_attribute,
                                               ldv_3_ldv_param_9_2_default);
  ldv_free((void *)ldv_3_ldv_param_9_2_default);
  ldv_free((void *)ldv_3_ldv_param_3_3_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_53703;
  case_13:
  {
  tmp___3 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_12_2_default = (char *)tmp___3;
  ldv_dummy_resourceless_instance_callback_3_12(ldv_3_callback_store, ldv_3_container_struct_device_ptr,
                                                ldv_3_container_struct_device_attribute,
                                                ldv_3_ldv_param_12_2_default, ldv_3_ldv_param_12_3_default);
  ldv_free((void *)ldv_3_ldv_param_12_2_default);
  ldv_free((void *)ldv_3_ldv_param_3_3_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_53703;
  case_16:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_15_3_default = (char *)tmp___4;
  ldv_dummy_resourceless_instance_callback_3_15(ldv_3_callback_write, ldv_3_container_struct_file_ptr,
                                                ldv_3_container_struct_kobject_ptr,
                                                ldv_3_container_struct_bin_attribute,
                                                ldv_3_ldv_param_15_3_default, ldv_3_ldv_param_15_4_default,
                                                ldv_3_ldv_param_15_5_default);
  ldv_free((void *)ldv_3_ldv_param_15_3_default);
  ldv_free((void *)ldv_3_ldv_param_3_3_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_53703;
  switch_default: ;
  switch_break: ;
  }
  ldv_53703: ;
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_4 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53717;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 1;
  } else {
    ldv_statevar_4 = 7;
  }
  goto ldv_53717;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_read, ldv_4_container_struct_file_ptr,
                                               ldv_4_container_struct_kobject_ptr,
                                               ldv_4_container_struct_bin_attribute,
                                               ldv_4_ldv_param_3_3_default, ldv_4_ldv_param_3_4_default,
                                               ldv_4_ldv_param_3_5_default);
  ldv_free((void *)ldv_4_ldv_param_3_3_default);
  ldv_statevar_4 = 2;
  }
  goto ldv_53717;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 1;
  } else {
    ldv_statevar_4 = 7;
  }
  goto ldv_53717;
  case_5: ;
  goto ldv_53717;
  case_7:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_3_3_default = (char *)tmp___1;
  ldv_statevar_4 = ldv_switch_2();
  }
  goto ldv_53717;
  case_10:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_9_2_default = (char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_show, ldv_4_container_struct_device_ptr,
                                               ldv_4_container_struct_device_attribute,
                                               ldv_4_ldv_param_9_2_default);
  ldv_free((void *)ldv_4_ldv_param_9_2_default);
  ldv_free((void *)ldv_4_ldv_param_3_3_default);
  ldv_statevar_4 = 2;
  }
  goto ldv_53717;
  case_13:
  {
  tmp___3 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_12_2_default = (char *)tmp___3;
  ldv_dummy_resourceless_instance_callback_4_12(ldv_4_callback_store, ldv_4_container_struct_device_ptr,
                                                ldv_4_container_struct_device_attribute,
                                                ldv_4_ldv_param_12_2_default, ldv_4_ldv_param_12_3_default);
  ldv_free((void *)ldv_4_ldv_param_12_2_default);
  ldv_free((void *)ldv_4_ldv_param_3_3_default);
  ldv_statevar_4 = 2;
  }
  goto ldv_53717;
  case_16:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_15_3_default = (char *)tmp___4;
  }
  if ((unsigned long )ldv_4_callback_write != (unsigned long )((long (*)(struct file * ,
                                                                         struct kobject * ,
                                                                         struct bin_attribute * ,
                                                                         char * ,
                                                                         long long ,
                                                                         unsigned long ))0)) {
    {
    ldv_dummy_resourceless_instance_callback_4_15(ldv_4_callback_write, ldv_4_container_struct_file_ptr,
                                                  ldv_4_container_struct_kobject_ptr,
                                                  ldv_4_container_struct_bin_attribute,
                                                  ldv_4_ldv_param_15_3_default, ldv_4_ldv_param_15_4_default,
                                                  ldv_4_ldv_param_15_5_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_4_ldv_param_15_3_default);
  ldv_free((void *)ldv_4_ldv_param_3_3_default);
  ldv_statevar_4 = 2;
  }
  goto ldv_53717;
  switch_default: ;
  switch_break: ;
  }
  ldv_53717: ;
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_5 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_5 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53731;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 1;
  } else {
    ldv_statevar_5 = 7;
  }
  goto ldv_53731;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_read, ldv_5_container_struct_file_ptr,
                                               ldv_5_container_struct_kobject_ptr,
                                               ldv_5_container_struct_bin_attribute,
                                               ldv_5_ldv_param_3_3_default, ldv_5_ldv_param_3_4_default,
                                               ldv_5_ldv_param_3_5_default);
  ldv_free((void *)ldv_5_ldv_param_3_3_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_53731;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 1;
  } else {
    ldv_statevar_5 = 7;
  }
  goto ldv_53731;
  case_5: ;
  goto ldv_53731;
  case_7:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_3_3_default = (char *)tmp___1;
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_53731;
  case_10:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_9_2_default = (char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_show, ldv_5_container_struct_device_ptr,
                                               ldv_5_container_struct_device_attribute,
                                               ldv_5_ldv_param_9_2_default);
  ldv_free((void *)ldv_5_ldv_param_9_2_default);
  ldv_free((void *)ldv_5_ldv_param_3_3_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_53731;
  case_13:
  {
  tmp___3 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_12_2_default = (char *)tmp___3;
  ldv_dummy_resourceless_instance_callback_5_12(ldv_5_callback_store, ldv_5_container_struct_device_ptr,
                                                ldv_5_container_struct_device_attribute,
                                                ldv_5_ldv_param_12_2_default, ldv_5_ldv_param_12_3_default);
  ldv_free((void *)ldv_5_ldv_param_12_2_default);
  ldv_free((void *)ldv_5_ldv_param_3_3_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_53731;
  case_16:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_15_3_default = (char *)tmp___4;
  ldv_dummy_resourceless_instance_callback_5_15(ldv_5_callback_write, ldv_5_container_struct_file_ptr,
                                                ldv_5_container_struct_kobject_ptr,
                                                ldv_5_container_struct_bin_attribute,
                                                ldv_5_ldv_param_15_3_default, ldv_5_ldv_param_15_4_default,
                                                ldv_5_ldv_param_15_5_default);
  ldv_free((void *)ldv_5_ldv_param_15_3_default);
  ldv_free((void *)ldv_5_ldv_param_3_3_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_53731;
  switch_default: ;
  switch_break: ;
  }
  ldv_53731: ;
  return;
}
}
void ldv_struct_notifier_block_dummy_resourceless_instance_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_6 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_6 == 2) {
    goto case_2;
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
  if (ldv_statevar_6 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53745;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 1;
  } else {
    ldv_statevar_6 = 7;
  }
  goto ldv_53745;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 1;
  } else {
    ldv_statevar_6 = 7;
  }
  goto ldv_53745;
  case_5: ;
  goto ldv_53745;
  case_7:
  {
  ldv_6_ldv_param_3_2_default = ldv_xmalloc(1UL);
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_notifier_call, ldv_6_container_struct_notifier_block,
                                               ldv_6_ldv_param_3_1_default, ldv_6_ldv_param_3_2_default);
  ldv_free(ldv_6_ldv_param_3_2_default);
  ldv_statevar_6 = 2;
  }
  goto ldv_53745;
  switch_default: ;
  switch_break: ;
  }
  ldv_53745: ;
  return;
}
}
void ldv_struct_notifier_block_dummy_resourceless_instance_7(void *arg0 )
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
  if (ldv_statevar_7 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_7 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53755;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_7 = 1;
  } else {
    ldv_statevar_7 = 7;
  }
  goto ldv_53755;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_7 = 1;
  } else {
    ldv_statevar_7 = 7;
  }
  goto ldv_53755;
  case_5: ;
  goto ldv_53755;
  case_7:
  {
  ldv_7_ldv_param_3_2_default = ldv_xmalloc(1UL);
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_notifier_call, ldv_7_container_struct_notifier_block,
                                               ldv_7_ldv_param_3_1_default, ldv_7_ldv_param_3_2_default);
  ldv_free(ldv_7_ldv_param_3_2_default);
  ldv_statevar_7 = 2;
  }
  goto ldv_53755;
  switch_default: ;
  switch_break: ;
  }
  ldv_53755: ;
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
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  if (tmp == 32) {
    goto case_32;
  } else {
  }
  if (tmp == 33) {
    goto case_33;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  case_3: ;
  return (8);
  case_4: ;
  return (9);
  case_5: ;
  return (11);
  case_6: ;
  return (13);
  case_7: ;
  return (15);
  case_8: ;
  return (17);
  case_9: ;
  return (18);
  case_10: ;
  return (19);
  case_11: ;
  return (20);
  case_12: ;
  return (21);
  case_13: ;
  return (22);
  case_14: ;
  return (24);
  case_15: ;
  return (27);
  case_16: ;
  return (29);
  case_17: ;
  return (31);
  case_18: ;
  return (34);
  case_19: ;
  return (36);
  case_20: ;
  return (37);
  case_21: ;
  return (39);
  case_22: ;
  return (41);
  case_23: ;
  return (42);
  case_24: ;
  return (43);
  case_25: ;
  return (44);
  case_26: ;
  return (45);
  case_27: ;
  return (47);
  case_28: ;
  return (49);
  case_29: ;
  return (50);
  case_30: ;
  return (51);
  case_31: ;
  return (52);
  case_32: ;
  return (53);
  case_33: ;
  return (54);
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
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  case_3: ;
  return (23);
  case_4: ;
  return (24);
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
  return (3);
  case_1: ;
  return (10);
  case_2: ;
  return (13);
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
void ldv_switch_automaton_state_2_11(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  return;
}
}
void ldv_switch_automaton_state_2_20(void)
{
  {
  ldv_statevar_2 = 19;
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
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 5;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_statevar_4 = 4;
  return;
}
}
void ldv_switch_automaton_state_5_1(void)
{
  {
  ldv_statevar_5 = 5;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_statevar_5 = 4;
  return;
}
}
void ldv_switch_automaton_state_6_1(void)
{
  {
  ldv_statevar_6 = 5;
  return;
}
}
void ldv_switch_automaton_state_6_5(void)
{
  {
  ldv_statevar_6 = 4;
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
  ldv_statevar_8 = 3;
  return;
}
}
void ldv_switch_automaton_state_8_3(void)
{
  {
  ldv_statevar_8 = 2;
  return;
}
}
void ldv_switch_automaton_state_9_1(void)
{
  {
  ldv_statevar_9 = 4;
  return;
}
}
void ldv_switch_automaton_state_9_4(void)
{
  {
  ldv_statevar_9 = 3;
  return;
}
}
void ldv_timer_dummy_factory_9(void *arg0 )
{
  {
  {
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_8 == 2);
  ldv_dispatch_instance_deregister_9_2(ldv_9_container_timer_list);
  ldv_statevar_9 = 4;
  }
  goto ldv_53857;
  case_3:
  {
  ldv_assume(ldv_statevar_8 == 3);
  ldv_dispatch_instance_register_9_3(ldv_9_container_timer_list);
  ldv_statevar_9 = 2;
  }
  goto ldv_53857;
  case_4: ;
  goto ldv_53857;
  switch_default: ;
  switch_break: ;
  }
  ldv_53857: ;
  return;
}
}
void ldv_timer_instance_callback_8_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_8(void *arg0 )
{
  {
  {
  if (ldv_statevar_8 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_8 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_8_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_8_2(ldv_8_container_timer_list->function, ldv_8_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_8 = 3;
  }
  goto ldv_53870;
  case_3: ;
  goto ldv_53870;
  switch_default: ;
  switch_break: ;
  }
  ldv_53870: ;
  return;
}
}
int ldv_unregister_inetaddr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_18_struct_notifier_block_struct_notifier_block ;
  {
  {
  ldv_18_struct_notifier_block_struct_notifier_block = arg1;
  ldv_assume(ldv_statevar_6 == 1 || ldv_statevar_7 == 1);
  ldv_dispatch_deregister_18_1(ldv_18_struct_notifier_block_struct_notifier_block);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_15_netdev_net_device ;
  {
  {
  ldv_15_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_15_2((ldv_15_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_15_netdev_net_device);
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_15_1(ldv_15_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_15_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  netxen_nic_close(arg1);
  }
  return;
}
}
int ldv_unregister_netdevice_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_19_struct_notifier_block_struct_notifier_block ;
  {
  ldv_19_struct_notifier_block_struct_notifier_block = arg1;
  return (arg0);
  return (arg0);
}
}
__inline static void ldv_spin_lock_46(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock__xmit_lock_of_netdev_queue();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_49(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock__xmit_lock_of_netdev_queue();
  spin_unlock(lock);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_58(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_59(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_77(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv_free_irq_78(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static void ldv_spin_lock_79___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_tx_clean_lock_of_netxen_adapter();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_80___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_tx_clean_lock_of_netxen_adapter();
  spin_unlock(lock);
  }
  return;
}
}
static int ldv_register_netdev_81(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static struct net_device *ldv_alloc_etherdev_mqs_82(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
static void ldv_free_netdev_83(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_84(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_85(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_86(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_87(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_88(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_89(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_90(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_91(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_92(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_register_netdevice_notifier_93(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdevice_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdevice_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_inetaddr_notifier_94(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_inetaddr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_inetaddr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_95(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static void ldv_pci_unregister_driver_96(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_unregister_inetaddr_notifier_97(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_inetaddr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_inetaddr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_unregister_netdevice_notifier_98(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_netdevice_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_netdevice_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
extern struct pv_irq_ops pv_irq_ops ;
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
extern int sscanf(char const * , char const * , ...) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
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
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
void ldv_spin_lock_lock_of_nx_host_rds_ring(void) ;
void ldv_spin_unlock_lock_of_nx_host_rds_ring(void) ;
int ldv_spin_trylock_lock_of_nx_host_rds_ring(void) ;
int ldv_spin_trylock_tx_clean_lock_of_netxen_adapter(void) ;
extern int _raw_spin_trylock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_77___0(spinlock_t *lock ) ;
__inline static int spin_trylock(spinlock_t *lock )
{
  int tmp ;
  {
  {
  tmp = _raw_spin_trylock(& lock->__annonCompField19.rlock);
  }
  return (tmp);
}
}
__inline static int ldv_spin_trylock_79(spinlock_t *lock ) ;
__inline static int ldv_spin_trylock_81(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_80___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78___0(spinlock_t *lock ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern int _cond_resched(void) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && n > 0xffffffffffffffffUL / size) {
    return ((void *)0);
  } else {
  }
  {
  tmp = __kmalloc(n * size, flags);
  }
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
extern __wsum csum_partial(void const * , int , __wsum ) ;
__inline static __wsum csum_unfold(__sum16 n )
{
  {
  return ((__wsum )n);
}
}
__inline static void csum_replace4(__sum16 *sum , __be32 from , __be32 to )
{
  __be32 diff[2U] ;
  __wsum tmp ;
  __wsum tmp___0 ;
  {
  {
  diff[0] = ~ from;
  diff[1] = to;
  tmp = csum_unfold((int )*sum);
  tmp___0 = csum_partial((void const *)(& diff), 8, ~ tmp);
  *sum = csum_fold(tmp___0);
  }
  return;
}
}
__inline static void csum_replace2(__sum16 *sum , __be16 from , __be16 to )
{
  {
  {
  csum_replace4(sum, (unsigned int )from, (unsigned int )to);
  }
  return;
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
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
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  }
  return (tmp);
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
extern int netif_receive_skb(struct sk_buff * ) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
int netxen_rom_fast_read_words(struct netxen_adapter *adapter , int addr , u8 *bytes ,
                               size_t size ) ;
static unsigned int crb_addr_xform[60U] ;
static void netxen_post_rx_buffers_nodb(struct netxen_adapter *adapter , struct nx_host_rds_ring *rds_ring ) ;
static int netxen_p3_has_mn(struct netxen_adapter *adapter ) ;
static void crb_addr_transform_setup(void)
{
  {
  crb_addr_xform[49] = 1078984704U;
  crb_addr_xform[40] = 1097859072U;
  crb_addr_xform[5] = 218103808U;
  crb_addr_xform[11] = 238026752U;
  crb_addr_xform[10] = 236978176U;
  crb_addr_xform[9] = 235929600U;
  crb_addr_xform[8] = 234881024U;
  crb_addr_xform[16] = 1883242496U;
  crb_addr_xform[15] = 1882193920U;
  crb_addr_xform[14] = 1881145344U;
  crb_addr_xform[13] = 1880096768U;
  crb_addr_xform[48] = 1894776832U;
  crb_addr_xform[47] = 148897792U;
  crb_addr_xform[46] = 147849216U;
  crb_addr_xform[45] = 1891631104U;
  crb_addr_xform[44] = 1890582528U;
  crb_addr_xform[43] = 1889533952U;
  crb_addr_xform[42] = 143654912U;
  crb_addr_xform[53] = 142606336U;
  crb_addr_xform[51] = 1108344832U;
  crb_addr_xform[29] = 1090519040U;
  crb_addr_xform[7] = 241172480U;
  crb_addr_xform[12] = 1879048192U;
  crb_addr_xform[22] = 876609536U;
  crb_addr_xform[21] = 877658112U;
  crb_addr_xform[20] = 875560960U;
  crb_addr_xform[19] = 874512384U;
  crb_addr_xform[18] = 873463808U;
  crb_addr_xform[17] = 872415232U;
  crb_addr_xform[28] = 1010827264U;
  crb_addr_xform[27] = 1011875840U;
  crb_addr_xform[26] = 1009778688U;
  crb_addr_xform[25] = 1008730112U;
  crb_addr_xform[24] = 1007681536U;
  crb_addr_xform[23] = 1006632960U;
  crb_addr_xform[1] = 1999634432U;
  crb_addr_xform[0] = 698351616U;
  crb_addr_xform[6] = 454033408U;
  crb_addr_xform[50] = 1107296256U;
  crb_addr_xform[31] = 219152384U;
  crb_addr_xform[2] = 693108736U;
  crb_addr_xform[3] = 709885952U;
  crb_addr_xform[37] = 209715200U;
  crb_addr_xform[36] = 208666624U;
  crb_addr_xform[35] = 207618048U;
  crb_addr_xform[34] = 1096810496U;
  crb_addr_xform[39] = 1972371456U;
  crb_addr_xform[38] = 1971322880U;
  crb_addr_xform[58] = 1904214016U;
  crb_addr_xform[56] = 1080033280U;
  crb_addr_xform[59] = 428867584U;
  return;
}
}
void netxen_release_rx_buffers(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct netxen_rx_buffer *rx_buf ;
  int i ;
  int ring ;
  {
  recv_ctx = & adapter->recv_ctx;
  ring = 0;
  goto ldv_48581;
  ldv_48580:
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  i = 0;
  goto ldv_48578;
  ldv_48577:
  rx_buf = rds_ring->rx_buf_arr + (unsigned long )i;
  if ((unsigned int )rx_buf->state == 0U) {
    goto ldv_48576;
  } else {
  }
  {
  pci_unmap_single(adapter->pdev, rx_buf->dma, (size_t )rds_ring->dma_size, 2);
  }
  if ((unsigned long )rx_buf->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    dev_kfree_skb_any(rx_buf->skb);
    }
  } else {
  }
  ldv_48576:
  i = i + 1;
  ldv_48578: ;
  if ((u32 )i < rds_ring->num_desc) {
    goto ldv_48577;
  } else {
  }
  ring = ring + 1;
  ldv_48581: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48580;
  } else {
  }
  return;
}
}
void netxen_release_tx_buffers(struct netxen_adapter *adapter )
{
  struct netxen_cmd_buffer *cmd_buf ;
  struct netxen_skb_frag *buffrag ;
  int i ;
  int j ;
  struct nx_host_tx_ring *tx_ring ;
  {
  tx_ring = adapter->tx_ring;
  cmd_buf = tx_ring->cmd_buf_arr;
  i = 0;
  goto ldv_48595;
  ldv_48594:
  buffrag = (struct netxen_skb_frag *)(& cmd_buf->frag_array);
  if (buffrag->dma != 0ULL) {
    {
    pci_unmap_single(adapter->pdev, buffrag->dma, (size_t )buffrag->length, 1);
    buffrag->dma = 0ULL;
    }
  } else {
  }
  j = 1;
  goto ldv_48592;
  ldv_48591:
  buffrag = buffrag + 1;
  if (buffrag->dma != 0ULL) {
    {
    pci_unmap_page(adapter->pdev, buffrag->dma, (size_t )buffrag->length, 1);
    buffrag->dma = 0ULL;
    }
  } else {
  }
  j = j + 1;
  ldv_48592: ;
  if ((u32 )j < cmd_buf->frag_count) {
    goto ldv_48591;
  } else {
  }
  if ((unsigned long )cmd_buf->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    dev_kfree_skb_any(cmd_buf->skb);
    cmd_buf->skb = (struct sk_buff *)0;
    }
  } else {
  }
  cmd_buf = cmd_buf + 1;
  i = i + 1;
  ldv_48595: ;
  if ((u32 )i < tx_ring->num_desc) {
    goto ldv_48594;
  } else {
  }
  return;
}
}
void netxen_free_sw_resources(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  int ring ;
  {
  recv_ctx = & adapter->recv_ctx;
  if ((unsigned long )recv_ctx->rds_rings == (unsigned long )((struct nx_host_rds_ring *)0)) {
    goto skip_rds;
  } else {
  }
  ring = 0;
  goto ldv_48606;
  ldv_48605:
  {
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  vfree((void const *)rds_ring->rx_buf_arr);
  rds_ring->rx_buf_arr = (struct netxen_rx_buffer *)0;
  ring = ring + 1;
  }
  ldv_48606: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48605;
  } else {
  }
  {
  kfree((void const *)recv_ctx->rds_rings);
  }
  skip_rds: ;
  if ((unsigned long )adapter->tx_ring == (unsigned long )((struct nx_host_tx_ring *)0)) {
    return;
  } else {
  }
  {
  tx_ring = adapter->tx_ring;
  vfree((void const *)tx_ring->cmd_buf_arr);
  kfree((void const *)tx_ring);
  adapter->tx_ring = (struct nx_host_tx_ring *)0;
  }
  return;
}
}
int netxen_alloc_sw_resources(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  struct netxen_rx_buffer *rx_buf ;
  int ring ;
  int i ;
  struct netxen_cmd_buffer *cmd_buf_arr ;
  struct net_device *netdev ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key ;
  {
  {
  netdev = adapter->netdev;
  tmp = kzalloc(80UL, 208U);
  tx_ring = (struct nx_host_tx_ring *)tmp;
  }
  if ((unsigned long )tx_ring == (unsigned long )((struct nx_host_tx_ring *)0)) {
    return (-12);
  } else {
  }
  {
  adapter->tx_ring = tx_ring;
  tx_ring->num_desc = (u32 )adapter->num_txd;
  tx_ring->txq = netdev_get_tx_queue((struct net_device const *)netdev, 0U);
  tmp___0 = vzalloc((unsigned long )tx_ring->num_desc * 304UL);
  cmd_buf_arr = (struct netxen_cmd_buffer *)tmp___0;
  }
  if ((unsigned long )cmd_buf_arr == (unsigned long )((struct netxen_cmd_buffer *)0)) {
    goto err_out;
  } else {
  }
  {
  tx_ring->cmd_buf_arr = cmd_buf_arr;
  recv_ctx = & adapter->recv_ctx;
  tmp___1 = kcalloc((size_t )adapter->max_rds_rings, 144UL, 208U);
  rds_ring = (struct nx_host_rds_ring *)tmp___1;
  }
  if ((unsigned long )rds_ring == (unsigned long )((struct nx_host_rds_ring *)0)) {
    goto err_out;
  } else {
  }
  recv_ctx->rds_rings = rds_ring;
  ring = 0;
  goto ldv_48630;
  ldv_48629:
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  {
  if (ring == 0) {
    goto case_0;
  } else {
  }
  if (ring == 1) {
    goto case_1;
  } else {
  }
  if (ring == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  rds_ring->num_desc = (u32 )adapter->num_rxd;
  if ((unsigned int )adapter->ahw.cut_through != 0U) {
    rds_ring->dma_size = 2048U;
    rds_ring->skb_size = 2048U;
  } else {
    if ((unsigned int )adapter->ahw.revision_id > 47U) {
      rds_ring->dma_size = 1532U;
    } else {
      rds_ring->dma_size = 1760U;
    }
    rds_ring->skb_size = rds_ring->dma_size;
  }
  goto ldv_48622;
  case_1:
  rds_ring->num_desc = (u32 )adapter->num_jumbo_rxd;
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    rds_ring->dma_size = 9632U;
  } else {
    rds_ring->dma_size = 8032U;
  }
  if ((adapter->capabilities & 1024U) != 0U) {
    rds_ring->dma_size = rds_ring->dma_size + 2048U;
  } else {
  }
  rds_ring->skb_size = rds_ring->dma_size;
  goto ldv_48622;
  case_2:
  rds_ring->num_desc = (u32 )adapter->num_lro_rxd;
  rds_ring->dma_size = 8060U;
  rds_ring->skb_size = rds_ring->dma_size;
  goto ldv_48622;
  switch_break: ;
  }
  ldv_48622:
  {
  tmp___2 = vzalloc((unsigned long )rds_ring->num_desc * 40UL);
  rds_ring->rx_buf_arr = (struct netxen_rx_buffer *)tmp___2;
  }
  if ((unsigned long )rds_ring->rx_buf_arr == (unsigned long )((struct netxen_rx_buffer *)0)) {
    goto err_out;
  } else {
  }
  {
  INIT_LIST_HEAD(& rds_ring->free_list);
  rx_buf = rds_ring->rx_buf_arr;
  i = 0;
  }
  goto ldv_48626;
  ldv_48625:
  {
  list_add_tail(& rx_buf->list, & rds_ring->free_list);
  rx_buf->ref_handle = (u16 )i;
  rx_buf->state = 0U;
  rx_buf = rx_buf + 1;
  i = i + 1;
  }
  ldv_48626: ;
  if ((u32 )i < rds_ring->num_desc) {
    goto ldv_48625;
  } else {
  }
  {
  spinlock_check(& rds_ring->lock);
  __raw_spin_lock_init(& rds_ring->lock.__annonCompField19.rlock, "&(&rds_ring->lock)->rlock",
                       & __key);
  ring = ring + 1;
  }
  ldv_48630: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48629;
  } else {
  }
  ring = 0;
  goto ldv_48636;
  ldv_48635:
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  sds_ring->irq = (int )adapter->msix_entries[ring].vector;
  sds_ring->adapter = adapter;
  sds_ring->num_desc = (u32 )adapter->num_rxd;
  i = 0;
  goto ldv_48633;
  ldv_48632:
  {
  INIT_LIST_HEAD((struct list_head *)(& sds_ring->free_list) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48633: ;
  if (i <= 2) {
    goto ldv_48632;
  } else {
  }
  ring = ring + 1;
  ldv_48636: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_48635;
  } else {
  }
  return (0);
  err_out:
  {
  netxen_free_sw_resources(adapter);
  }
  return (-12);
}
}
static u32 netxen_decode_crb_addr(u32 addr )
{
  int i ;
  u32 base_addr ;
  u32 offset ;
  u32 pci_base ;
  {
  {
  crb_addr_transform_setup();
  pci_base = 4294967295U;
  base_addr = addr & 4293918720U;
  offset = addr & 1048575U;
  i = 0;
  }
  goto ldv_48647;
  ldv_48646: ;
  if (crb_addr_xform[i] == base_addr) {
    pci_base = (u32 )(i << 20);
    goto ldv_48645;
  } else {
  }
  i = i + 1;
  ldv_48647: ;
  if (i <= 59) {
    goto ldv_48646;
  } else {
  }
  ldv_48645: ;
  if (pci_base == 4294967295U) {
    return (pci_base);
  } else {
    return (pci_base + offset);
  }
}
}
static int netxen_wait_rom_done(struct netxen_adapter *adapter )
{
  long timeout ;
  long done ;
  u32 tmp ;
  {
  {
  timeout = 0L;
  done = 0L;
  __might_sleep("drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", 345, 0);
  _cond_resched();
  }
  goto ldv_48655;
  ldv_48654:
  {
  tmp = (*(adapter->crb_read))(adapter, 154140676UL);
  done = (long )tmp;
  done = done & 2L;
  timeout = timeout + 1L;
  }
  if (timeout > 99L) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Timeout reached  waiting for rom done");
    }
    return (-5);
  } else {
  }
  {
  __const_udelay(4295UL);
  }
  ldv_48655: ;
  if (done == 0L) {
    goto ldv_48654;
  } else {
  }
  return (0);
}
}
static int do_rom_fast_read(struct netxen_adapter *adapter , int addr , int *valp )
{
  int tmp ;
  u32 tmp___0 ;
  {
  {
  (*(adapter->crb_write))(adapter, 154206216UL, (u32 )addr);
  (*(adapter->crb_write))(adapter, 154206228UL, 0U);
  (*(adapter->crb_write))(adapter, 154206224UL, 3U);
  (*(adapter->crb_write))(adapter, 154206212UL, 11U);
  tmp = netxen_wait_rom_done(adapter);
  }
  if (tmp != 0) {
    {
    printk("Error waiting for rom done\n");
    }
    return (-5);
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 154206224UL, 0U);
  __const_udelay(42950UL);
  (*(adapter->crb_write))(adapter, 154206228UL, 0U);
  tmp___0 = (*(adapter->crb_read))(adapter, 154206232UL);
  *valp = (int )tmp___0;
  }
  return (0);
}
}
static int do_rom_fast_read_words(struct netxen_adapter *adapter , int addr , u8 *bytes ,
                                  size_t size )
{
  int addridx ;
  int ret ;
  int v ;
  {
  ret = 0;
  addridx = addr;
  goto ldv_48673;
  ldv_48672:
  {
  ret = do_rom_fast_read(adapter, addridx, & v);
  }
  if (ret != 0) {
    goto ldv_48671;
  } else {
  }
  *((__le32 *)bytes) = (unsigned int )v;
  bytes = bytes + 4UL;
  addridx = addridx + 4;
  ldv_48673: ;
  if ((size_t )addridx < (size_t )addr + size) {
    goto ldv_48672;
  } else {
  }
  ldv_48671: ;
  return (ret);
}
}
int netxen_rom_fast_read_words(struct netxen_adapter *adapter , int addr , u8 *bytes ,
                               size_t size )
{
  int ret ;
  {
  {
  ret = netxen_pcie_sem_lock(adapter, 2, 136323328U);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = do_rom_fast_read_words(adapter, addr, bytes, size);
  netxen_pcie_sem_unlock(adapter, 2);
  }
  return (ret);
}
}
int netxen_rom_fast_read(struct netxen_adapter *adapter , int addr , int *valp )
{
  int ret ;
  int tmp ;
  {
  {
  tmp = netxen_pcie_sem_lock(adapter, 2, 136323328U);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  {
  ret = do_rom_fast_read(adapter, addr, valp);
  netxen_pcie_sem_unlock(adapter, 2);
  }
  return (ret);
}
}
int netxen_pinit_from_rom(struct netxen_adapter *adapter )
{
  int addr ;
  int val ;
  int i ;
  int n ;
  int init_delay ;
  struct crb_addr_pair *buf ;
  unsigned int offset ;
  u32 off ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  {
  {
  init_delay = 0;
  netxen_pcie_sem_lock(adapter, 2, 136323328U);
  (*(adapter->crb_write))(adapter, 154140680UL, 4278190079U);
  netxen_pcie_sem_unlock(adapter, 2);
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    tmp = netxen_rom_fast_read(adapter, 0, & n);
    }
    if (tmp != 0 || n != -889271554) {
      {
      printk("\v%s: ERROR Reading crb_init area: n: %08x\n", (char *)(& netxen_nic_driver_name),
             n);
      }
      return (-5);
    } else {
      {
      tmp___0 = netxen_rom_fast_read(adapter, 4, & n);
      }
      if (tmp___0 != 0) {
        {
        printk("\v%s: ERROR Reading crb_init area: n: %08x\n", (char *)(& netxen_nic_driver_name),
               n);
        }
        return (-5);
      } else {
      }
    }
    offset = (unsigned int )n & 65535U;
    n = (int )((unsigned int )n >> 16);
  } else {
    {
    tmp___1 = netxen_rom_fast_read(adapter, 0, & n);
    }
    if (tmp___1 != 0 || n >= 0) {
      {
      printk("\v%s: ERROR Reading crb_init area: n: %08x\n", (char *)(& netxen_nic_driver_name),
             n);
      }
      return (-5);
    } else {
    }
    offset = 1U;
    n = n & 2147483647;
  }
  if (n > 1023) {
    {
    printk("\v%s:n=0x%x Error! NetXen card flash not initialized.\n", "netxen_pinit_from_rom",
           n);
    }
    return (-5);
  } else {
  }
  {
  tmp___2 = kcalloc((size_t )n, 8UL, 208U);
  buf = (struct crb_addr_pair *)tmp___2;
  }
  if ((unsigned long )buf == (unsigned long )((struct crb_addr_pair *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_48700;
  ldv_48699:
  {
  tmp___3 = netxen_rom_fast_read(adapter, (int )(((unsigned int )(i * 2) + offset) * 4U),
                                 & val);
  }
  if (tmp___3 != 0) {
    {
    kfree((void const *)buf);
    }
    return (-5);
  } else {
    {
    tmp___4 = netxen_rom_fast_read(adapter, (int )((((unsigned int )(i * 2) + offset) + 1U) * 4U),
                                   & addr);
    }
    if (tmp___4 != 0) {
      {
      kfree((void const *)buf);
      }
      return (-5);
    } else {
    }
  }
  (buf + (unsigned long )i)->addr = (u32 )addr;
  (buf + (unsigned long )i)->data = (u32 )val;
  i = i + 1;
  ldv_48700: ;
  if (i < n) {
    goto ldv_48699;
  } else {
  }
  i = 0;
  goto ldv_48704;
  ldv_48703:
  {
  off = netxen_decode_crb_addr((buf + (unsigned long )i)->addr);
  }
  if (off == 4294967295U) {
    {
    printk("\vCRB init value out of range %x\n", (buf + (unsigned long )i)->addr);
    }
    goto ldv_48702;
  } else {
  }
  off = off + 100663296U;
  if ((int )off & 1) {
    goto ldv_48702;
  } else {
  }
  if (off == 136323580U) {
    goto ldv_48702;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    if (off == 162529308U) {
      goto ldv_48702;
    } else {
    }
    if (off == 154140860U) {
      goto ldv_48702;
    } else {
    }
    if (off == 154140840U) {
      goto ldv_48702;
    } else {
    }
    if (off == 154140872U) {
      goto ldv_48702;
    } else {
    }
    if (off == 154140708U) {
      goto ldv_48702;
    } else {
    }
    if (off == 154140700U) {
      goto ldv_48702;
    } else {
    }
    if ((off & 267386880U) == 102760448U) {
      goto ldv_48702;
    } else {
    }
    if (off == 119537688U && (unsigned int )adapter->ahw.revision_id <= 79U) {
      (buf + (unsigned long )i)->data = 4128U;
    } else {
    }
    if (off == 101785664U) {
      goto ldv_48702;
    } else {
    }
    if (off == 101785672U) {
      goto ldv_48702;
    } else {
    }
    if ((off & 267386880U) == 161480704U) {
      goto ldv_48702;
    } else {
    }
  } else {
  }
  init_delay = 1;
  if (off == 154140680U) {
    init_delay = 1000;
    if ((unsigned int )adapter->ahw.revision_id <= 37U) {
      (buf + (unsigned long )i)->data = 8388863U;
      (buf + (unsigned long )i)->data = 8388863U;
    } else {
    }
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, (ulong )off, (buf + (unsigned long )i)->data);
  msleep((unsigned int )init_delay);
  }
  ldv_48702:
  i = i + 1;
  ldv_48704: ;
  if (i < n) {
    goto ldv_48703;
  } else {
  }
  {
  kfree((void const *)buf);
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    tmp___5 = (*(adapter->crb_read))(adapter, 154140680UL);
    val = (int )tmp___5;
    (*(adapter->crb_write))(adapter, 154140680UL, (unsigned int )val & 4294967055U);
    }
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 122683628UL, 30U);
  (*(adapter->crb_write))(adapter, 122683468UL, 8U);
  (*(adapter->crb_write))(adapter, 123732044UL, 8U);
  (*(adapter->crb_write))(adapter, 118489096UL, 0U);
  (*(adapter->crb_write))(adapter, 118489100UL, 0U);
  (*(adapter->crb_write))(adapter, 119537672UL, 0U);
  (*(adapter->crb_write))(adapter, 119537676UL, 0U);
  (*(adapter->crb_write))(adapter, 120586248UL, 0U);
  (*(adapter->crb_write))(adapter, 120586252UL, 0U);
  (*(adapter->crb_write))(adapter, 121634824UL, 0U);
  (*(adapter->crb_write))(adapter, 121634828UL, 0U);
  }
  return (0);
}
}
static struct uni_table_desc *nx_get_table_desc(u8 const *unirom , int section )
{
  uint32_t i ;
  struct uni_table_desc *directory ;
  __le32 entries ;
  __le32 offs ;
  __le32 tab_type ;
  {
  directory = (struct uni_table_desc *)unirom;
  entries = directory->num_entries;
  i = 0U;
  goto ldv_48716;
  ldv_48715:
  offs = directory->findex + i * directory->entry_size;
  tab_type = *((u32 *)unirom + ((unsigned long )offs + 8UL));
  if (tab_type == (__le32 )section) {
    return ((struct uni_table_desc *)unirom + (unsigned long )offs);
  } else {
  }
  i = i + 1U;
  ldv_48716: ;
  if (i < entries) {
    goto ldv_48715;
  } else {
  }
  return ((struct uni_table_desc *)0);
}
}
static int netxen_nic_validate_header(struct netxen_adapter *adapter )
{
  u8 const *unirom ;
  struct uni_table_desc *directory ;
  u32 fw_file_size ;
  u32 tab_size ;
  __le32 entries ;
  __le32 entry_size ;
  {
  unirom = (adapter->fw)->data;
  directory = (struct uni_table_desc *)unirom;
  fw_file_size = (u32 )(adapter->fw)->size;
  if (fw_file_size <= 55U) {
    return (-22);
  } else {
  }
  entries = directory->num_entries;
  entry_size = directory->entry_size;
  tab_size = directory->findex + entries * entry_size;
  if (fw_file_size < tab_size) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int netxen_nic_validate_bootld(struct netxen_adapter *adapter )
{
  struct uni_table_desc *tab_desc ;
  struct uni_data_desc *descr ;
  u8 const *unirom ;
  __le32 idx ;
  u32 offs ;
  u32 tab_size ;
  u32 data_size ;
  {
  {
  unirom = (adapter->fw)->data;
  idx = (unsigned int )*((int *)unirom + ((unsigned long )adapter->file_prd_off + 27UL));
  tab_desc = nx_get_table_desc(unirom, 6);
  }
  if ((unsigned long )tab_desc == (unsigned long )((struct uni_table_desc *)0)) {
    return (-22);
  } else {
  }
  tab_size = tab_desc->findex + tab_desc->entry_size * (idx + 1U);
  if ((unsigned long )(adapter->fw)->size < (unsigned long )tab_size) {
    return (-22);
  } else {
  }
  offs = tab_desc->findex + tab_desc->entry_size * idx;
  descr = (struct uni_data_desc *)unirom + (unsigned long )offs;
  data_size = descr->findex + descr->size;
  if ((unsigned long )(adapter->fw)->size < (unsigned long )data_size) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int netxen_nic_validate_fw(struct netxen_adapter *adapter )
{
  struct uni_table_desc *tab_desc ;
  struct uni_data_desc *descr ;
  u8 const *unirom ;
  __le32 idx ;
  u32 offs ;
  u32 tab_size ;
  u32 data_size ;
  {
  {
  unirom = (adapter->fw)->data;
  idx = (unsigned int )*((int *)unirom + ((unsigned long )adapter->file_prd_off + 29UL));
  tab_desc = nx_get_table_desc(unirom, 7);
  }
  if ((unsigned long )tab_desc == (unsigned long )((struct uni_table_desc *)0)) {
    return (-22);
  } else {
  }
  tab_size = tab_desc->findex + tab_desc->entry_size * (idx + 1U);
  if ((unsigned long )(adapter->fw)->size < (unsigned long )tab_size) {
    return (-22);
  } else {
  }
  offs = tab_desc->findex + tab_desc->entry_size * idx;
  descr = (struct uni_data_desc *)unirom + (unsigned long )offs;
  data_size = descr->findex + descr->size;
  if ((unsigned long )(adapter->fw)->size < (unsigned long )data_size) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int netxen_nic_validate_product_offs(struct netxen_adapter *adapter )
{
  struct uni_table_desc *ptab_descr ;
  u8 const *unirom ;
  int mn_present ;
  int tmp ;
  int tmp___0 ;
  __le32 entries ;
  __le32 entry_size ;
  u32 tab_size ;
  u32 i ;
  __le32 flags ;
  __le32 file_chiprev ;
  __le32 offs ;
  u8 chiprev ;
  uint32_t flagbit ;
  {
  unirom = (adapter->fw)->data;
  if ((unsigned int )adapter->ahw.revision_id > 37U) {
    {
    tmp = netxen_p3_has_mn(adapter);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = 1;
  }
  {
  mn_present = tmp___0;
  ptab_descr = nx_get_table_desc(unirom, 0);
  }
  if ((unsigned long )ptab_descr == (unsigned long )((struct uni_table_desc *)0)) {
    return (-22);
  } else {
  }
  entries = ptab_descr->num_entries;
  entry_size = ptab_descr->entry_size;
  tab_size = ptab_descr->findex + entries * entry_size;
  if ((unsigned long )(adapter->fw)->size < (unsigned long )tab_size) {
    return (-22);
  } else {
  }
  nomn:
  i = 0U;
  goto ldv_48764;
  ldv_48763:
  chiprev = adapter->ahw.revision_id;
  offs = ptab_descr->findex + i * ptab_descr->entry_size;
  flags = (unsigned int )*((int *)unirom + ((unsigned long )offs + 11UL));
  file_chiprev = (unsigned int )*((int *)unirom + ((unsigned long )offs + 10UL));
  flagbit = mn_present != 0 ? 1U : 2U;
  if ((__le32 )chiprev == file_chiprev && (int )((unsigned long long )flags >> (int )flagbit) & 1) {
    adapter->file_prd_off = offs;
    return (0);
  } else {
  }
  i = i + 1U;
  ldv_48764: ;
  if (i < entries) {
    goto ldv_48763;
  } else {
  }
  if (mn_present != 0 && (unsigned int )adapter->ahw.revision_id > 47U) {
    mn_present = 0;
    goto nomn;
  } else {
  }
  return (-22);
}
}
static int netxen_nic_validate_unified_romimage(struct netxen_adapter *adapter )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netxen_nic_validate_header(adapter);
  }
  if (tmp != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "unified image: header validation failed\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___0 = netxen_nic_validate_product_offs(adapter);
  }
  if (tmp___0 != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "unified image: product validation failed\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___1 = netxen_nic_validate_bootld(adapter);
  }
  if (tmp___1 != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "unified image: bootld validation failed\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___2 = netxen_nic_validate_fw(adapter);
  }
  if (tmp___2 != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "unified image: firmware validation failed\n");
    }
    return (-22);
  } else {
  }
  return (0);
}
}
static struct uni_data_desc *nx_get_data_desc(struct netxen_adapter *adapter , u32 section ,
                                              u32 idx_offset )
{
  u8 const *unirom ;
  int idx ;
  struct uni_table_desc *tab_desc ;
  __le32 offs ;
  {
  {
  unirom = (adapter->fw)->data;
  idx = *((int *)unirom + ((unsigned long )adapter->file_prd_off + (unsigned long )idx_offset));
  tab_desc = nx_get_table_desc(unirom, (int )section);
  }
  if ((unsigned long )tab_desc == (unsigned long )((struct uni_table_desc *)0)) {
    return ((struct uni_data_desc *)0);
  } else {
  }
  offs = tab_desc->findex + tab_desc->entry_size * (uint32_t )idx;
  return ((struct uni_data_desc *)unirom + (unsigned long )offs);
}
}
static u8 *nx_get_bootld_offs(struct netxen_adapter *adapter )
{
  u32 offs ;
  struct uni_data_desc *tmp ;
  {
  offs = 65536U;
  if ((unsigned int )adapter->fw_type == 3U) {
    {
    tmp = nx_get_data_desc(adapter, 6U, 27U);
    offs = tmp->findex;
    }
  } else {
  }
  return ((u8 *)(adapter->fw)->data + (unsigned long )offs);
}
}
static u8 *nx_get_fw_offs(struct netxen_adapter *adapter )
{
  u32 offs ;
  struct uni_data_desc *tmp ;
  {
  offs = 274432U;
  if ((unsigned int )adapter->fw_type == 3U) {
    {
    tmp = nx_get_data_desc(adapter, 7U, 29U);
    offs = tmp->findex;
    }
  } else {
  }
  return ((u8 *)(adapter->fw)->data + (unsigned long )offs);
}
}
static __le32 nx_get_fw_size(struct netxen_adapter *adapter )
{
  struct uni_data_desc *tmp ;
  {
  if ((unsigned int )adapter->fw_type == 3U) {
    {
    tmp = nx_get_data_desc(adapter, 7U, 29U);
    }
    return (tmp->size);
  } else {
    return (*((u32 *)(adapter->fw)->data + 4097036U));
  }
}
}
static __le32 nx_get_fw_version(struct netxen_adapter *adapter )
{
  struct uni_data_desc *fw_data_desc ;
  struct firmware const *fw ;
  __le32 major ;
  __le32 minor ;
  __le32 sub ;
  u8 const *ver_str ;
  int i ;
  int ret ;
  int tmp ;
  {
  fw = adapter->fw;
  ret = 0;
  if ((unsigned int )adapter->fw_type == 3U) {
    {
    fw_data_desc = nx_get_data_desc(adapter, 7U, 29U);
    ver_str = fw->data + (((unsigned long )fw_data_desc->findex + (unsigned long )fw_data_desc->size) + 0xffffffffffffffefUL);
    i = 0;
    }
    goto ldv_48802;
    ldv_48801:
    {
    tmp = strncmp((char const *)ver_str + (unsigned long )i, "REV=", 4UL);
    }
    if (tmp == 0) {
      {
      ret = sscanf((char const *)(ver_str + ((unsigned long )i + 4UL)), "%u.%u.%u ",
                   & major, & minor, & sub);
      }
      goto ldv_48800;
    } else {
    }
    i = i + 1;
    ldv_48802: ;
    if (i <= 11) {
      goto ldv_48801;
    } else {
    }
    ldv_48800: ;
    if (ret != 3) {
      return (0U);
    } else {
    }
    return ((major + (minor << 8)) + (sub << 16));
  } else {
    return (*((u32 *)fw->data + 4097032U));
  }
}
}
static __le32 nx_get_bios_version(struct netxen_adapter *adapter )
{
  struct firmware const *fw ;
  __le32 bios_ver ;
  __le32 prd_off ;
  {
  fw = adapter->fw;
  prd_off = adapter->file_prd_off;
  if ((unsigned int )adapter->fw_type == 3U) {
    bios_ver = *((u32 *)fw->data + ((unsigned long )prd_off + 12UL));
    return (((bios_ver << 16) + ((bios_ver >> 8) & 65280U)) + (bios_ver >> 24));
  } else {
    return (*((u32 *)fw->data + 4098108U));
  }
}
}
int netxen_need_fw_reset(struct netxen_adapter *adapter )
{
  u32 count ;
  u32 old_count ;
  u32 val ;
  u32 version ;
  u32 major ;
  u32 minor ;
  u32 build ;
  int i ;
  int timeout ;
  u8 fw_type ;
  u32 tmp ;
  unsigned long tmp___0 ;
  {
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (1);
  } else {
  }
  if ((unsigned int )adapter->need_fw_reset != 0U) {
    return (1);
  } else {
  }
  {
  tmp = (*(adapter->crb_read))(adapter, 136323664UL);
  }
  if (tmp == 65535U) {
    return (1);
  } else {
  }
  {
  old_count = (*(adapter->crb_read))(adapter, 136323248UL);
  i = 0;
  }
  goto ldv_48824;
  ldv_48823:
  {
  tmp___0 = msleep_interruptible(200U);
  timeout = (int )tmp___0;
  }
  if (timeout != 0) {
    {
    (*(adapter->crb_write))(adapter, 136323664UL, 65535U);
    }
    return (-4);
  } else {
  }
  {
  count = (*(adapter->crb_read))(adapter, 136323248UL);
  }
  if (count != old_count) {
    goto ldv_48822;
  } else {
  }
  i = i + 1;
  ldv_48824: ;
  if (i <= 9) {
    goto ldv_48823;
  } else {
  }
  ldv_48822: ;
  if (count == old_count) {
    return (1);
  } else {
  }
  if ((unsigned long )adapter->fw != (unsigned long )((struct firmware const *)0)) {
    {
    val = nx_get_fw_version(adapter);
    version = ((val << 24) + (((val >> 8) & 255U) << 16)) + (val >> 16);
    major = (*(adapter->crb_read))(adapter, 136323408UL);
    minor = (*(adapter->crb_read))(adapter, 136323412UL);
    build = (*(adapter->crb_read))(adapter, 136323416UL);
    }
    if (version > ((major << 24) + (minor << 16)) + build) {
      return (1);
    } else {
    }
    if (version == ((major << 24) + (minor << 16)) + build && (unsigned int )adapter->fw_type != 3U) {
      {
      val = (*(adapter->crb_read))(adapter, 102760448UL);
      fw_type = (val & 4U) != 0U ? 1U : 2U;
      }
      if ((int )adapter->fw_type != (int )fw_type) {
        return (1);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
int netxen_check_flash_fw_compatibility(struct netxen_adapter *adapter )
{
  u32 flash_fw_ver ;
  u32 min_fw_ver ;
  int tmp ;
  {
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (0);
  } else {
  }
  {
  tmp = netxen_rom_fast_read(adapter, 4097032, (int *)(& flash_fw_ver));
  }
  if (tmp != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Unable to read flash fwversion\n");
    }
    return (-5);
  } else {
  }
  flash_fw_ver = ((flash_fw_ver << 24) + (((flash_fw_ver >> 8) & 255U) << 16)) + (flash_fw_ver >> 16);
  min_fw_ver = 67109369U;
  if (flash_fw_ver >= min_fw_ver) {
    return (0);
  } else {
  }
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Flash fw[%d.%d.%d] is < min fw supported[4.0.505]. Please update firmware on flash\n",
            flash_fw_ver >> 24, (flash_fw_ver >> 16) & 255U, flash_fw_ver & 65535U);
  }
  return (-22);
}
}
static char *fw_name[5U] = { (char *)"nxromimg.bin", (char *)"nx3fwct.bin", (char *)"nx3fwmn.bin", (char *)"phanfw.bin",
        (char *)"flash"};
int netxen_load_firmware(struct netxen_adapter *adapter )
{
  u64 *ptr64 ;
  u32 i ;
  u32 flashaddr ;
  u32 size ;
  struct firmware const *fw ;
  struct pci_dev *pdev ;
  __le64 data ;
  u8 *tmp ;
  int tmp___0 ;
  __le32 tmp___1 ;
  u8 *tmp___2 ;
  int tmp___3 ;
  __le32 tmp___4 ;
  int tmp___5 ;
  u64 data___0 ;
  u32 hi ;
  u32 lo ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  fw = adapter->fw;
  pdev = adapter->pdev;
  _dev_info((struct device const *)(& pdev->dev), "loading firmware from %s\n",
            fw_name[(int )adapter->fw_type]);
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    (*(adapter->crb_write))(adapter, 154140728UL, 1U);
    }
  } else {
  }
  if ((unsigned long )fw != (unsigned long )((struct firmware const *)0)) {
    {
    size = 26112U;
    tmp = nx_get_bootld_offs(adapter);
    ptr64 = (u64 *)tmp;
    flashaddr = 65536U;
    i = 0U;
    }
    goto ldv_48842;
    ldv_48841:
    {
    data = *(ptr64 + (unsigned long )i);
    tmp___0 = (*(adapter->pci_mem_write))(adapter, (u64 )flashaddr, data);
    }
    if (tmp___0 != 0) {
      return (-5);
    } else {
    }
    flashaddr = flashaddr + 8U;
    i = i + 1U;
    ldv_48842: ;
    if (i < size) {
      goto ldv_48841;
    } else {
    }
    {
    tmp___1 = nx_get_fw_size(adapter);
    size = tmp___1 / 8U;
    tmp___2 = nx_get_fw_offs(adapter);
    ptr64 = (u64 *)tmp___2;
    flashaddr = 274432U;
    i = 0U;
    }
    goto ldv_48845;
    ldv_48844:
    {
    data = *(ptr64 + (unsigned long )i);
    tmp___3 = (*(adapter->pci_mem_write))(adapter, (u64 )flashaddr, data);
    }
    if (tmp___3 != 0) {
      return (-5);
    } else {
    }
    flashaddr = flashaddr + 8U;
    i = i + 1U;
    ldv_48845: ;
    if (i < size) {
      goto ldv_48844;
    } else {
    }
    {
    tmp___4 = nx_get_fw_size(adapter);
    size = tmp___4 & 7U;
    }
    if (size != 0U) {
      {
      data = *(ptr64 + (unsigned long )i);
      tmp___5 = (*(adapter->pci_mem_write))(adapter, (u64 )flashaddr, data);
      }
      if (tmp___5 != 0) {
        return (-5);
      } else {
      }
    } else {
    }
  } else {
    size = 26112U;
    flashaddr = 65536U;
    i = 0U;
    goto ldv_48851;
    ldv_48850:
    {
    tmp___6 = netxen_rom_fast_read(adapter, (int )flashaddr, (int *)(& lo));
    }
    if (tmp___6 != 0) {
      return (-5);
    } else {
    }
    {
    tmp___7 = netxen_rom_fast_read(adapter, (int )(flashaddr + 4U), (int *)(& hi));
    }
    if (tmp___7 != 0) {
      return (-5);
    } else {
    }
    {
    data___0 = ((unsigned long long )hi << 32) | (unsigned long long )lo;
    tmp___8 = (*(adapter->pci_mem_write))(adapter, (u64 )flashaddr, data___0);
    }
    if (tmp___8 != 0) {
      return (-5);
    } else {
    }
    flashaddr = flashaddr + 8U;
    i = i + 1U;
    ldv_48851: ;
    if (i < size) {
      goto ldv_48850;
    } else {
    }
  }
  {
  msleep(1U);
  }
  if ((unsigned int )adapter->ahw.revision_id > 79U) {
    {
    (*(adapter->crb_write))(adapter, 118489112UL, 4128U);
    (*(adapter->crb_write))(adapter, 154140680UL, 8388638U);
    }
  } else
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    (*(adapter->crb_write))(adapter, 154140680UL, 8388637U);
    }
  } else {
    {
    (*(adapter->crb_write))(adapter, 154140840UL, 16383U);
    (*(adapter->crb_write))(adapter, 154140728UL, 0U);
    }
  }
  return (0);
}
}
static int netxen_validate_firmware(struct netxen_adapter *adapter )
{
  __le32 val ;
  __le32 flash_fw_ver ;
  u32 file_fw_ver ;
  u32 min_ver ;
  u32 bios ;
  struct pci_dev *pdev ;
  struct firmware const *fw ;
  u8 fw_type ;
  u32 crbinit_fix_fw ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  pdev = adapter->pdev;
  fw = adapter->fw;
  fw_type = adapter->fw_type;
  if ((unsigned int )fw_type == 3U) {
    {
    tmp = netxen_nic_validate_unified_romimage(adapter);
    }
    if (tmp != 0) {
      return (-22);
    } else {
    }
  } else {
    val = *((u32 *)fw->data + 16680U);
    if (val != 305419896U) {
      return (-22);
    } else {
    }
    if ((unsigned long )fw->size <= 4194302UL) {
      return (-22);
    } else {
    }
  }
  {
  val = nx_get_fw_version(adapter);
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    min_ver = 67109369U;
  } else {
    min_ver = 50594008U;
  }
  file_fw_ver = ((val << 24) + (((val >> 8) & 255U) << 16)) + (val >> 16);
  if (file_fw_ver >> 24 > 4U || file_fw_ver < min_ver) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: firmware version %d.%d.%d unsupported\n",
            fw_name[(int )fw_type], file_fw_ver >> 24, (file_fw_ver >> 16) & 255U,
            file_fw_ver & 65535U);
    }
    return (-22);
  } else {
  }
  {
  val = nx_get_bios_version(adapter);
  netxen_rom_fast_read(adapter, 4098108, (int *)(& bios));
  }
  if (val != bios) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: firmware bios is incompatible\n",
            fw_name[(int )fw_type]);
    }
    return (-22);
  } else {
  }
  {
  tmp___0 = netxen_rom_fast_read(adapter, 4097032, (int *)(& flash_fw_ver));
  }
  if (tmp___0 != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Unable to read flash fw version\n");
    }
    return (-5);
  } else {
  }
  flash_fw_ver = ((flash_fw_ver << 24) + (((flash_fw_ver >> 8) & 255U) << 16)) + (flash_fw_ver >> 16);
  crbinit_fix_fw = 67109418U;
  if ((file_fw_ver >= crbinit_fix_fw && flash_fw_ver < crbinit_fix_fw) && (unsigned int )adapter->ahw.revision_id > 47U) {
    {
    dev_err((struct device const *)(& pdev->dev), "Incompatibility detected between driver and firmware version on flash. This configuration is not recommended. Please update the firmware on flash immediately\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___1 = netxen_p3_has_mn(adapter);
  }
  if (tmp___1 == 0 || (unsigned int )adapter->ahw.revision_id <= 37U) {
    if (flash_fw_ver > file_fw_ver) {
      {
      _dev_info((struct device const *)(& pdev->dev), "%s: firmware is older than flash\n",
                fw_name[(int )fw_type]);
      }
      return (-22);
    } else {
    }
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323580UL, 305419896U);
  }
  return (0);
}
}
static void nx_get_next_fwtype(struct netxen_adapter *adapter )
{
  u8 fw_type ;
  int tmp ;
  {
  {
  if ((int )adapter->fw_type == 255) {
    goto case_255;
  } else {
  }
  if ((int )adapter->fw_type == 3) {
    goto case_3;
  } else {
  }
  if ((int )adapter->fw_type == 2) {
    goto case_2;
  } else {
  }
  if ((int )adapter->fw_type == 0) {
    goto case_0;
  } else {
  }
  if ((int )adapter->fw_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_255:
  fw_type = 3U;
  goto ldv_48870;
  case_3: ;
  if ((unsigned int )adapter->ahw.revision_id > 79U) {
    fw_type = 4U;
  } else
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    fw_type = 0U;
  } else {
    {
    tmp = netxen_p3_has_mn(adapter);
    }
    if (tmp != 0) {
      fw_type = 2U;
    } else {
      fw_type = 1U;
    }
  }
  goto ldv_48870;
  case_2:
  fw_type = 1U;
  goto ldv_48870;
  case_0: ;
  case_1: ;
  switch_default:
  fw_type = 4U;
  goto ldv_48870;
  switch_break: ;
  }
  ldv_48870:
  adapter->fw_type = fw_type;
  return;
}
}
static int netxen_p3_has_mn(struct netxen_adapter *adapter )
{
  u32 capability ;
  u32 flashed_ver ;
  {
  capability = 0U;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (1);
  } else {
  }
  {
  netxen_rom_fast_read(adapter, 4097032, (int *)(& flashed_ver));
  flashed_ver = ((flashed_ver << 24) + (((flashed_ver >> 8) & 255U) << 16)) + (flashed_ver >> 16);
  }
  if (flashed_ver > 67109083U) {
    {
    capability = (*(adapter->crb_read))(adapter, 136323116UL);
    }
    if ((int )capability & 1) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
void netxen_request_firmware(struct netxen_adapter *adapter )
{
  struct pci_dev *pdev ;
  int rc ;
  {
  pdev = adapter->pdev;
  rc = 0;
  adapter->fw_type = 255U;
  next:
  {
  nx_get_next_fwtype(adapter);
  }
  if ((unsigned int )adapter->fw_type == 4U) {
    adapter->fw = (struct firmware const *)0;
  } else {
    {
    rc = request_firmware(& adapter->fw, (char const *)fw_name[(int )adapter->fw_type],
                          & pdev->dev);
    }
    if (rc != 0) {
      goto next;
    } else {
    }
    {
    rc = netxen_validate_firmware(adapter);
    }
    if (rc != 0) {
      {
      release_firmware(adapter->fw);
      msleep(1U);
      }
      goto next;
    } else {
    }
  }
  return;
}
}
void netxen_release_firmware(struct netxen_adapter *adapter )
{
  {
  {
  release_firmware(adapter->fw);
  adapter->fw = (struct firmware const *)0;
  }
  return;
}
}
int netxen_init_dummy_dma(struct netxen_adapter *adapter )
{
  u64 addr ;
  u32 hi ;
  u32 lo ;
  {
  if ((unsigned int )adapter->ahw.revision_id > 37U) {
    return (0);
  } else {
  }
  {
  adapter->dummy_dma.addr = pci_alloc_consistent(adapter->pdev, 1024UL, & adapter->dummy_dma.phys_addr);
  }
  if ((unsigned long )adapter->dummy_dma.addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ERROR: Could not allocate dummy DMA memory\n");
    }
    return (-12);
  } else {
  }
  {
  addr = adapter->dummy_dma.phys_addr;
  hi = (u32 )(addr >> 32);
  lo = (u32 )addr;
  (*(adapter->crb_write))(adapter, 136323644UL, hi);
  (*(adapter->crb_write))(adapter, 136323648UL, lo);
  }
  return (0);
}
}
void netxen_free_dummy_dma(struct netxen_adapter *adapter )
{
  int i ;
  u32 ctrl ;
  {
  i = 100;
  if ((unsigned int )adapter->ahw.revision_id > 37U) {
    return;
  } else {
  }
  if ((unsigned long )adapter->dummy_dma.addr == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  {
  ctrl = (*(adapter->crb_read))(adapter, 136323092UL);
  }
  if ((int )ctrl & 1) {
    {
    (*(adapter->crb_write))(adapter, 136323092UL, ctrl | 2U);
    }
    goto ldv_48903;
    ldv_48902:
    {
    msleep(50U);
    ctrl = (*(adapter->crb_read))(adapter, 136323092UL);
    i = i - 1;
    }
    if (i == 0) {
      goto ldv_48901;
    } else {
    }
    ldv_48903: ;
    if ((int )ctrl & 1) {
      goto ldv_48902;
    } else {
    }
    ldv_48901: ;
  } else {
  }
  if (i != 0) {
    {
    pci_free_consistent(adapter->pdev, 1024UL, adapter->dummy_dma.addr, adapter->dummy_dma.phys_addr);
    adapter->dummy_dma.addr = (void *)0;
    }
  } else {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "dma_watchdog_shutdown failed\n");
    }
  }
  return;
}
}
int netxen_phantom_init(struct netxen_adapter *adapter , int pegtune_val )
{
  u32 val ;
  int retries ;
  {
  val = 0U;
  retries = 60;
  if (pegtune_val != 0) {
    return (0);
  } else {
  }
  ldv_48916:
  {
  val = (*(adapter->crb_read))(adapter, 136323664UL);
  }
  {
  if (val == 65281U) {
    goto case_65281;
  } else {
  }
  if (val == 61455U) {
    goto case_61455;
  } else {
  }
  if (val == 65535U) {
    goto case_65535;
  } else {
  }
  goto switch_default;
  case_65281: ;
  case_61455: ;
  return (0);
  case_65535: ;
  goto out_err;
  switch_default: ;
  goto ldv_48915;
  switch_break: ;
  }
  ldv_48915:
  {
  msleep(500U);
  retries = retries - 1;
  }
  if (retries != 0) {
    goto ldv_48916;
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323664UL, 65535U);
  }
  out_err:
  {
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "firmware init failed\n");
  }
  return (-5);
}
}
static int netxen_receive_peg_ready(struct netxen_adapter *adapter )
{
  u32 val ;
  int retries ;
  {
  val = 0U;
  retries = 2000;
  ldv_48923:
  {
  val = (*(adapter->crb_read))(adapter, 136323900UL);
  }
  if (val == 65281U) {
    return (0);
  } else {
  }
  {
  msleep(10U);
  retries = retries - 1;
  }
  if (retries != 0) {
    goto ldv_48923;
  } else {
  }
  if (retries == 0) {
    {
    printk("\vReceive Peg initialization not complete, state: 0x%x.\n", val);
    }
    return (-5);
  } else {
  }
  return (0);
}
}
int netxen_init_firmware(struct netxen_adapter *adapter )
{
  int err ;
  {
  {
  err = netxen_receive_peg_ready(adapter);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136324008UL, 1U);
  (*(adapter->crb_write))(adapter, 136323780UL, 8738U);
  (*(adapter->crb_write))(adapter, 136323664UL, 61455U);
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    (*(adapter->crb_write))(adapter, 136324208UL, 1U);
    }
  } else {
  }
  return (err);
}
}
static void netxen_handle_linkevent(struct netxen_adapter *adapter , nx_fw_msg_t *msg )
{
  u32 cable_OUI ;
  u16 cable_len ;
  u16 link_speed ;
  u8 link_status ;
  u8 module ;
  u8 duplex ;
  u8 autoneg ;
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  adapter->has_link_events = 1U;
  cable_OUI = (u32 )msg->__annonCompField87.__annonCompField86.body[1];
  cable_len = (u16 )(msg->__annonCompField87.__annonCompField86.body[1] >> 32);
  link_speed = (u16 )(msg->__annonCompField87.__annonCompField86.body[1] >> 48);
  link_status = (u8 )msg->__annonCompField87.__annonCompField86.body[2];
  duplex = (u8 )(msg->__annonCompField87.__annonCompField86.body[2] >> 16);
  autoneg = (u8 )(msg->__annonCompField87.__annonCompField86.body[2] >> 24);
  module = (u8 )(msg->__annonCompField87.__annonCompField86.body[2] >> 8);
  if ((unsigned int )module == 6U) {
    {
    printk("\016%s: unsupported cable: OUI 0x%x, length %d\n", (char *)(& netdev->name),
           cable_OUI, (int )cable_len);
    }
  } else
  if ((unsigned int )module == 7U) {
    {
    printk("\016%s: unsupported cable length %d\n", (char *)(& netdev->name), (int )cable_len);
    }
  } else {
  }
  if ((unsigned int )duplex == 1U) {
    adapter->link_duplex = 1U;
  } else {
    adapter->link_duplex = 0U;
  }
  {
  adapter->module_type = (u16 )module;
  adapter->link_autoneg = (u16 )autoneg;
  adapter->link_speed = link_speed;
  netxen_advert_link_change(adapter, (int )link_status);
  }
  return;
}
}
static void netxen_handle_fw_message(int desc_cnt , int index , struct nx_host_sds_ring *sds_ring )
{
  nx_fw_msg_t msg ;
  struct status_desc *desc ;
  int i ;
  int opcode ;
  int tmp ;
  int tmp___0 ;
  {
  i = 0;
  goto ldv_48951;
  ldv_48950:
  desc = sds_ring->desc_head + (unsigned long )index;
  tmp = i;
  i = i + 1;
  msg.__annonCompField87.words[tmp] = desc->status_desc_data[0];
  tmp___0 = i;
  i = i + 1;
  msg.__annonCompField87.words[tmp___0] = desc->status_desc_data[1];
  index = (int )((u32 )(index + 1) & (sds_ring->num_desc - 1U));
  desc_cnt = desc_cnt - 1;
  ldv_48951: ;
  if (desc_cnt > 0 && i <= 7) {
    goto ldv_48950;
  } else {
  }
  opcode = (int )(msg.__annonCompField87.__annonCompField86.body[0] >> 32) & 255;
  {
  if (opcode == 141) {
    goto case_141;
  } else {
  }
  goto switch_default;
  case_141:
  {
  netxen_handle_linkevent(sds_ring->adapter, & msg);
  }
  goto ldv_48954;
  switch_default: ;
  goto ldv_48954;
  switch_break: ;
  }
  ldv_48954: ;
  return;
}
}
static int netxen_alloc_rx_skb(struct netxen_adapter *adapter , struct nx_host_rds_ring *rds_ring ,
                               struct netxen_rx_buffer *buffer )
{
  struct sk_buff *skb ;
  dma_addr_t dma ;
  struct pci_dev *pdev ;
  int tmp ;
  {
  {
  pdev = adapter->pdev;
  buffer->skb = netdev_alloc_skb(adapter->netdev, rds_ring->skb_size);
  }
  if ((unsigned long )buffer->skb == (unsigned long )((struct sk_buff *)0)) {
    return (1);
  } else {
  }
  skb = buffer->skb;
  if ((unsigned int )adapter->ahw.cut_through == 0U) {
    {
    skb_reserve(skb, 2);
    }
  } else {
  }
  {
  dma = pci_map_single(pdev, (void *)skb->data, (size_t )rds_ring->dma_size, 2);
  tmp = pci_dma_mapping_error(pdev, dma);
  }
  if (tmp != 0) {
    {
    dev_kfree_skb_any(skb);
    buffer->skb = (struct sk_buff *)0;
    }
    return (1);
  } else {
  }
  buffer->skb = skb;
  buffer->dma = dma;
  buffer->state = 1U;
  return (0);
}
}
static struct sk_buff *netxen_process_rxbuf(struct netxen_adapter *adapter , struct nx_host_rds_ring *rds_ring ,
                                            u16 index , u16 cksum )
{
  struct netxen_rx_buffer *buffer ;
  struct sk_buff *skb ;
  long tmp ;
  {
  {
  buffer = rds_ring->rx_buf_arr + (unsigned long )index;
  pci_unmap_single(adapter->pdev, buffer->dma, (size_t )rds_ring->dma_size, 2);
  skb = buffer->skb;
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto no_skb;
  } else {
  }
  {
  tmp = ldv__builtin_expect((long )(((adapter->netdev)->features & 4294967296ULL) != 0ULL && (unsigned int )cksum == 2U),
                         1L);
  }
  if (tmp != 0L) {
    adapter->stats.csummed = adapter->stats.csummed + 1ULL;
    skb->ip_summed = 1U;
  } else {
    skb->ip_summed = 0U;
  }
  buffer->skb = (struct sk_buff *)0;
  no_skb:
  buffer->state = 0U;
  return (skb);
}
}
static struct netxen_rx_buffer *netxen_process_rcv(struct netxen_adapter *adapter ,
                                                   struct nx_host_sds_ring *sds_ring ,
                                                   int ring , u64 sts_data0 )
{
  struct net_device *netdev ;
  struct netxen_recv_context *recv_ctx ;
  struct netxen_rx_buffer *buffer ;
  struct sk_buff *skb ;
  struct nx_host_rds_ring *rds_ring ;
  int index ;
  int length ;
  int cksum ;
  int pkt_offset ;
  long tmp ;
  long tmp___0 ;
  {
  {
  netdev = adapter->netdev;
  recv_ctx = & adapter->recv_ctx;
  tmp = ldv__builtin_expect(ring >= (int )adapter->max_rds_rings, 0L);
  }
  if (tmp != 0L) {
    return ((struct netxen_rx_buffer *)0);
  } else {
  }
  {
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  index = (int )(sts_data0 >> 28) & 65535;
  tmp___0 = ldv__builtin_expect((u32 )index >= rds_ring->num_desc, 0L);
  }
  if (tmp___0 != 0L) {
    return ((struct netxen_rx_buffer *)0);
  } else {
  }
  {
  buffer = rds_ring->rx_buf_arr + (unsigned long )index;
  length = (int )(sts_data0 >> 12) & 65535;
  cksum = (int )(sts_data0 >> 4) & 15;
  pkt_offset = (int )(sts_data0 >> 48) & 31;
  skb = netxen_process_rxbuf(adapter, rds_ring, (int )((u16 )index), (int )((u16 )cksum));
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (buffer);
  } else {
  }
  if ((u32 )length > rds_ring->skb_size) {
    {
    skb_put(skb, rds_ring->skb_size);
    }
  } else {
    {
    skb_put(skb, (unsigned int )length);
    }
  }
  if (pkt_offset != 0) {
    {
    skb_pull(skb, (unsigned int )pkt_offset);
    }
  } else {
  }
  {
  skb->protocol = eth_type_trans(skb, netdev);
  napi_gro_receive(& sds_ring->napi, skb);
  adapter->stats.rx_pkts = adapter->stats.rx_pkts + 1ULL;
  adapter->stats.rxbytes = adapter->stats.rxbytes + (u64 )length;
  }
  return (buffer);
}
}
static struct netxen_rx_buffer *netxen_process_lro(struct netxen_adapter *adapter ,
                                                   struct nx_host_sds_ring *sds_ring ,
                                                   int ring , u64 sts_data0 , u64 sts_data1 )
{
  struct net_device *netdev ;
  struct netxen_recv_context *recv_ctx ;
  struct netxen_rx_buffer *buffer ;
  struct sk_buff *skb ;
  struct nx_host_rds_ring *rds_ring ;
  struct iphdr *iph ;
  struct tcphdr *th ;
  bool push ;
  bool timestamp ;
  int l2_hdr_offset ;
  int l4_hdr_offset ;
  int index ;
  u16 lro_length ;
  u16 length ;
  u16 data_offset ;
  u32 seq_number ;
  u8 vhdr_len ;
  long tmp ;
  long tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u32 tmp___3 ;
  unsigned char *tmp___4 ;
  {
  {
  netdev = adapter->netdev;
  recv_ctx = & adapter->recv_ctx;
  vhdr_len = 0U;
  tmp = ldv__builtin_expect(ring >= (int )adapter->max_rds_rings, 0L);
  }
  if (tmp != 0L) {
    return ((struct netxen_rx_buffer *)0);
  } else {
  }
  {
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  index = (int )sts_data0 & 65535;
  tmp___0 = ldv__builtin_expect((u32 )index >= rds_ring->num_desc, 0L);
  }
  if (tmp___0 != 0L) {
    return ((struct netxen_rx_buffer *)0);
  } else {
  }
  {
  buffer = rds_ring->rx_buf_arr + (unsigned long )index;
  timestamp = ((sts_data0 >> 48) & 1ULL) != 0ULL;
  lro_length = (u16 )(sts_data0 >> 16);
  l2_hdr_offset = (int )(sts_data0 >> 32) & 255;
  l4_hdr_offset = (int )(sts_data0 >> 40) & 255;
  push = ((sts_data0 >> 52) & 1ULL) != 0ULL;
  seq_number = (u32 )sts_data1;
  skb = netxen_process_rxbuf(adapter, rds_ring, (int )((u16 )index), 2);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (buffer);
  } else {
  }
  if ((int )timestamp) {
    data_offset = (unsigned int )((u16 )l4_hdr_offset) + 32U;
  } else {
    data_offset = (unsigned int )((u16 )l4_hdr_offset) + 20U;
  }
  {
  skb_put(skb, (unsigned int )((int )lro_length + (int )data_offset));
  skb_pull(skb, (unsigned int )l2_hdr_offset);
  skb->protocol = eth_type_trans(skb, netdev);
  }
  if ((unsigned int )skb->protocol == 129U) {
    vhdr_len = 4U;
  } else {
  }
  {
  iph = (struct iphdr *)skb->data + (unsigned long )vhdr_len;
  th = (struct tcphdr *)(skb->data + ((unsigned long )vhdr_len + (unsigned long )((int )iph->ihl << 2)));
  length = (((int )((u16 )iph->ihl) << 2U) + ((int )th->doff << 2U)) + (int )lro_length;
  tmp___1 = __fswab16((int )length);
  csum_replace2(& iph->check, (int )iph->tot_len, (int )tmp___1);
  tmp___2 = __fswab16((int )length);
  iph->tot_len = tmp___2;
  th->psh = push;
  tmp___3 = __fswab32(seq_number);
  th->seq = tmp___3;
  length = (u16 )skb->len;
  }
  if ((adapter->flags & 128U) != 0U) {
    {
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___4)->gso_size = (unsigned short )(sts_data1 >> 32);
    }
  } else {
  }
  {
  netif_receive_skb(skb);
  adapter->stats.lro_pkts = adapter->stats.lro_pkts + 1ULL;
  adapter->stats.rxbytes = adapter->stats.rxbytes + (u64 )length;
  }
  return (buffer);
}
}
int netxen_process_rcv_ring(struct nx_host_sds_ring *sds_ring , int max )
{
  struct netxen_adapter *adapter ;
  struct list_head *cur ;
  struct status_desc *desc ;
  struct netxen_rx_buffer *rxbuf ;
  u32 consumer ;
  int count ;
  u64 sts_data0 ;
  u64 sts_data1 ;
  int opcode ;
  int ring ;
  int desc_cnt ;
  int __ret_warn_on ;
  long tmp ;
  struct nx_host_rds_ring *rds_ring ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  adapter = sds_ring->adapter;
  consumer = sds_ring->consumer;
  count = 0;
  ring = 0;
  goto ldv_49042;
  ldv_49041:
  desc = sds_ring->desc_head + (unsigned long )consumer;
  sts_data0 = desc->status_desc_data[0];
  if ((sts_data0 & 72057594037927936ULL) == 0ULL) {
    goto ldv_49027;
  } else {
  }
  desc_cnt = (int )(sts_data0 >> 53) & 7;
  opcode = (int )(sts_data0 >> 58);
  {
  if (opcode == 4) {
    goto case_4;
  } else {
  }
  if (opcode == 63) {
    goto case_63;
  } else {
  }
  if (opcode == 3) {
    goto case_3;
  } else {
  }
  if (opcode == 18) {
    goto case_18;
  } else {
  }
  if (opcode == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_4: ;
  case_63: ;
  case_3:
  {
  ring = (int )(sts_data0 >> 8) & 15;
  rxbuf = netxen_process_rcv(adapter, sds_ring, ring, sts_data0);
  }
  goto ldv_49031;
  case_18:
  {
  ring = (int )(sts_data0 >> 49) & 7;
  sts_data1 = desc->status_desc_data[1];
  rxbuf = netxen_process_lro(adapter, sds_ring, ring, sts_data0, sts_data1);
  }
  goto ldv_49031;
  case_5:
  {
  netxen_handle_fw_message(desc_cnt, (int )consumer, sds_ring);
  }
  switch_default: ;
  goto skip;
  switch_break: ;
  }
  ldv_49031:
  {
  __ret_warn_on = desc_cnt > 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c", 1711);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if ((unsigned long )rxbuf != (unsigned long )((struct netxen_rx_buffer *)0)) {
    {
    list_add_tail(& rxbuf->list, (struct list_head *)(& sds_ring->free_list) + (unsigned long )ring);
    }
  } else {
  }
  skip: ;
  goto ldv_49039;
  ldv_49038:
  desc = sds_ring->desc_head + (unsigned long )consumer;
  desc->status_desc_data[0] = 144115188075855872ULL;
  consumer = (consumer + 1U) & (sds_ring->num_desc - 1U);
  desc_cnt = desc_cnt - 1;
  ldv_49039: ;
  if (desc_cnt > 0) {
    goto ldv_49038;
  } else {
  }
  count = count + 1;
  ldv_49042: ;
  if (count < max) {
    goto ldv_49041;
  } else {
  }
  ldv_49027:
  ring = 0;
  goto ldv_49050;
  ldv_49049:
  {
  rds_ring = adapter->recv_ctx.rds_rings + (unsigned long )ring;
  tmp___0 = list_empty((struct list_head const *)(& sds_ring->free_list) + (unsigned long )ring);
  }
  if (tmp___0 == 0) {
    cur = ((struct list_head *)(& sds_ring->free_list) + (unsigned long )ring)->next;
    goto ldv_49047;
    ldv_49046:
    {
    __mptr = (struct list_head const *)cur;
    rxbuf = (struct netxen_rx_buffer *)__mptr;
    netxen_alloc_rx_skb(adapter, rds_ring, rxbuf);
    cur = cur->next;
    }
    ldv_49047: ;
    if ((unsigned long )cur != (unsigned long )((struct list_head *)(& sds_ring->free_list) + (unsigned long )ring)) {
      goto ldv_49046;
    } else {
    }
    {
    ldv_spin_lock_77___0(& rds_ring->lock);
    list_splice_tail_init((struct list_head *)(& sds_ring->free_list) + (unsigned long )ring,
                          & rds_ring->free_list);
    ldv_spin_unlock_78___0(& rds_ring->lock);
    }
  } else {
  }
  {
  netxen_post_rx_buffers_nodb(adapter, rds_ring);
  ring = ring + 1;
  }
  ldv_49050: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_49049;
  } else {
  }
  if (count != 0) {
    {
    sds_ring->consumer = consumer;
    (*(adapter->io_write))(adapter, sds_ring->crb_sts_consumer, consumer);
    }
  } else {
  }
  return (count);
}
}
int netxen_process_cmd_ring(struct netxen_adapter *adapter )
{
  u32 sw_consumer ;
  u32 hw_consumer ;
  int count ;
  int i ;
  struct netxen_cmd_buffer *buffer ;
  struct pci_dev *pdev ;
  struct net_device *netdev ;
  struct netxen_skb_frag *frag ;
  int done ;
  struct nx_host_tx_ring *tx_ring ;
  int tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  {
  count = 0;
  pdev = adapter->pdev;
  netdev = adapter->netdev;
  done = 0;
  tx_ring = adapter->tx_ring;
  tmp = ldv_spin_trylock_79(& adapter->tx_clean_lock);
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  sw_consumer = tx_ring->sw_consumer;
  hw_consumer = *(tx_ring->hw_consumer);
  goto ldv_49070;
  ldv_49069:
  buffer = tx_ring->cmd_buf_arr + (unsigned long )sw_consumer;
  if ((unsigned long )buffer->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    frag = (struct netxen_skb_frag *)(& buffer->frag_array);
    pci_unmap_single(pdev, frag->dma, (size_t )frag->length, 1);
    frag->dma = 0ULL;
    i = 1;
    }
    goto ldv_49066;
    ldv_49065:
    {
    frag = frag + 1;
    pci_unmap_page(pdev, frag->dma, (size_t )frag->length, 1);
    frag->dma = 0ULL;
    i = i + 1;
    }
    ldv_49066: ;
    if ((u32 )i < buffer->frag_count) {
      goto ldv_49065;
    } else {
    }
    {
    adapter->stats.xmitfinished = adapter->stats.xmitfinished + 1ULL;
    dev_kfree_skb_any(buffer->skb);
    buffer->skb = (struct sk_buff *)0;
    }
  } else {
  }
  sw_consumer = (sw_consumer + 1U) & (tx_ring->num_desc - 1U);
  count = count + 1;
  if (count > 63) {
    goto ldv_49068;
  } else {
  }
  ldv_49070: ;
  if (sw_consumer != hw_consumer) {
    goto ldv_49069;
  } else {
  }
  ldv_49068: ;
  if (count != 0) {
    {
    tmp___3 = netif_running((struct net_device const *)netdev);
    }
    if ((int )tmp___3) {
      {
      tx_ring->sw_consumer = sw_consumer;
      __asm__ volatile ("mfence": : : "memory");
      tmp___1 = netif_queue_stopped((struct net_device const *)netdev);
      }
      if ((int )tmp___1) {
        {
        tmp___2 = netif_carrier_ok((struct net_device const *)netdev);
        }
        if ((int )tmp___2) {
          {
          tmp___0 = netxen_tx_avail(tx_ring);
          }
          if (tmp___0 > 10U) {
            {
            netif_wake_queue(netdev);
            }
          } else {
          }
        } else {
        }
      } else {
      }
      adapter->tx_timeo_cnt = 0U;
    } else {
    }
  } else {
  }
  {
  hw_consumer = *(tx_ring->hw_consumer);
  done = sw_consumer == hw_consumer;
  ldv_spin_unlock_80___0(& adapter->tx_clean_lock);
  }
  return (done);
}
}
void netxen_post_rx_buffers(struct netxen_adapter *adapter , u32 ringid , struct nx_host_rds_ring *rds_ring )
{
  struct rcv_desc *pdesc ;
  struct netxen_rx_buffer *buffer ;
  int producer ;
  int count ;
  netxen_ctx_msg msg ;
  struct list_head *head ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  count = 0;
  msg = 0U;
  producer = (int )rds_ring->producer;
  head = & rds_ring->free_list;
  goto ldv_49086;
  ldv_49085:
  __mptr = (struct list_head const *)head->next;
  buffer = (struct netxen_rx_buffer *)__mptr;
  if ((unsigned long )buffer->skb == (unsigned long )((struct sk_buff *)0)) {
    {
    tmp = netxen_alloc_rx_skb(adapter, rds_ring, buffer);
    }
    if (tmp != 0) {
      goto ldv_49084;
    } else {
    }
  } else {
  }
  {
  count = count + 1;
  list_del(& buffer->list);
  pdesc = rds_ring->desc_head + (unsigned long )producer;
  pdesc->addr_buffer = buffer->dma;
  pdesc->reference_handle = buffer->ref_handle;
  pdesc->buffer_length = rds_ring->dma_size;
  producer = (int )((u32 )(producer + 1) & (rds_ring->num_desc - 1U));
  }
  ldv_49086:
  {
  tmp___0 = list_empty((struct list_head const *)head);
  }
  if (tmp___0 == 0) {
    goto ldv_49085;
  } else {
  }
  ldv_49084: ;
  if (count != 0) {
    {
    rds_ring->producer = (u32 )producer;
    (*(adapter->io_write))(adapter, rds_ring->crb_rcv_producer, (u32 )(producer + -1) & (rds_ring->num_desc - 1U));
    }
    if ((unsigned int )adapter->ahw.revision_id <= 37U) {
      {
      msg = msg & 4294967292U;
      msg = msg | 2U;
      msg = msg | 4U;
      msg = msg & 4294705159U;
      msg = msg | ((((u32 )(producer + -1) & (rds_ring->num_desc - 1U)) & 32767U) << 3);
      msg = msg & 4026793983U;
      msg = msg | (netxen_ctx_msg )((int )adapter->portnum << 18);
      msg = msg & 268435455U;
      msg = msg | (ringid << 28);
      (*(adapter->io_write))(adapter, adapter->ahw.db_base, msg);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void netxen_post_rx_buffers_nodb(struct netxen_adapter *adapter , struct nx_host_rds_ring *rds_ring )
{
  struct rcv_desc *pdesc ;
  struct netxen_rx_buffer *buffer ;
  int producer ;
  int count ;
  struct list_head *head ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  count = 0;
  tmp = ldv_spin_trylock_81(& rds_ring->lock);
  }
  if (tmp == 0) {
    return;
  } else {
  }
  producer = (int )rds_ring->producer;
  head = & rds_ring->free_list;
  goto ldv_49100;
  ldv_49099:
  __mptr = (struct list_head const *)head->next;
  buffer = (struct netxen_rx_buffer *)__mptr;
  if ((unsigned long )buffer->skb == (unsigned long )((struct sk_buff *)0)) {
    {
    tmp___0 = netxen_alloc_rx_skb(adapter, rds_ring, buffer);
    }
    if (tmp___0 != 0) {
      goto ldv_49098;
    } else {
    }
  } else {
  }
  {
  count = count + 1;
  list_del(& buffer->list);
  pdesc = rds_ring->desc_head + (unsigned long )producer;
  pdesc->reference_handle = buffer->ref_handle;
  pdesc->buffer_length = rds_ring->dma_size;
  pdesc->addr_buffer = buffer->dma;
  producer = (int )((u32 )(producer + 1) & (rds_ring->num_desc - 1U));
  }
  ldv_49100:
  {
  tmp___1 = list_empty((struct list_head const *)head);
  }
  if (tmp___1 == 0) {
    goto ldv_49099;
  } else {
  }
  ldv_49098: ;
  if (count != 0) {
    {
    rds_ring->producer = (u32 )producer;
    (*(adapter->io_write))(adapter, rds_ring->crb_rcv_producer, (u32 )(producer + -1) & (rds_ring->num_desc - 1U));
    }
  } else {
  }
  {
  ldv_spin_unlock_78___0(& rds_ring->lock);
  }
  return;
}
}
void netxen_nic_clear_stats(struct netxen_adapter *adapter )
{
  {
  {
  memset((void *)(& adapter->stats), 0, 72UL);
  }
  return;
}
}
__inline static void ldv_spin_lock_77___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_lock_of_nx_host_rds_ring();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_78___0(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_lock_of_nx_host_rds_ring();
  spin_unlock(lock);
  }
  return;
}
}
__inline static int ldv_spin_trylock_79(spinlock_t *lock )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = spin_trylock(lock);
  ldv_func_res = tmp;
  tmp___0 = ldv_spin_trylock_tx_clean_lock_of_netxen_adapter();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_spin_trylock_81(spinlock_t *lock )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = spin_trylock(lock);
  ldv_func_res = tmp;
  tmp___0 = ldv_spin_trylock_lock_of_nx_host_rds_ring();
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  {
  tmp___0 = fls64((__u64 )l);
  }
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  {
  tmp = fls_long(n - 1UL);
  }
  return (1UL << (int )tmp);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
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
static u32 const FW_DUMP_LEVELS[7U] = { 3U, 7U, 15U, 31U,
        63U, 127U, 255U};
int nx_fw_cmd_set_gbe_port(struct netxen_adapter *adapter , u32 speed , u32 duplex ,
                           u32 autoneg ) ;
static struct netxen_nic_stats const netxen_nic_gstrings_stats[9U] =
  { {{'x', 'm', 'i', 't', '_', 'c', 'a', 'l', 'l', 'e', 'd', '\000'}, 8, 408},
        {{'x', 'm', 'i', 't', '_', 'f', 'i', 'n', 'i', 's', 'h', 'e', 'd', '\000'}, 8,
      416},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}, 8, 424},
        {{'t', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}, 8, 432},
        {{'c', 's', 'u', 'm', 'm', 'e', 'd', '\000'}, 8, 440},
        {{'r', 'x', '_', 'p', 'k', 't', 's', '\000'}, 8, 448},
        {{'l', 'r', 'o', '_', 'p', 'k', 't', 's', '\000'}, 8, 456},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 464},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 472}};
static char const netxen_nic_gstrings_test[2U][32U] = { { 'R', 'e', 'g', 'i',
            's', 't', 'e', 'r',
            '_', 'T', 'e', 's',
            't', '_', 'o', 'n',
            '_', 'o', 'f', 'f',
            'l', 'i', 'n', 'e',
            '\000'},
   { 'L', 'i', 'n', 'k',
            '_', 'T', 'e', 's',
            't', '_', 'o', 'n',
            '_', 'o', 'f', 'f',
            'l', 'i', 'n', 'e',
            '\000'}};
static int netxen_nic_get_eeprom_len(struct net_device *dev )
{
  {
  return (4194304);
}
}
static void netxen_nic_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *drvinfo )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 fw_major ;
  u32 fw_minor ;
  u32 fw_build ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  fw_major = 0U;
  fw_minor = 0U;
  fw_build = 0U;
  strlcpy((char *)(& drvinfo->driver), (char const *)(& netxen_nic_driver_name),
          32UL);
  strlcpy((char *)(& drvinfo->version), "4.0.82", 32UL);
  fw_major = (*(adapter->crb_read))(adapter, 136323408UL);
  fw_minor = (*(adapter->crb_read))(adapter, 136323412UL);
  fw_build = (*(adapter->crb_read))(adapter, 136323416UL);
  snprintf((char *)(& drvinfo->fw_version), 32UL, "%d.%d.%d", fw_major, fw_minor,
           fw_build);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->regdump_len = 120U;
  tmp___1 = netxen_nic_get_eeprom_len(dev);
  drvinfo->eedump_len = (__u32 )tmp___1;
  }
  return;
}
}
static int netxen_nic_get_settings(struct net_device *dev , struct ethtool_cmd *ecmd )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int check_sfp_module ;
  u32 val ;
  bool tmp___0 ;
  u16 pcifn ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  check_sfp_module = 0;
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    {
    ecmd->supported = 63U;
    ecmd->advertising = 60U;
    ecmd->port = 0U;
    ethtool_cmd_speed_set(ecmd, (__u32 )adapter->link_speed);
    ecmd->duplex = (__u8 )adapter->link_duplex;
    ecmd->autoneg = (__u8 )adapter->link_autoneg;
    }
  } else
  if ((unsigned int )adapter->ahw.port_type == 2U) {
    {
    val = (*(adapter->crb_read))(adapter, 136323108UL);
    }
    if (val == 3U) {
      ecmd->supported = 32U;
      ecmd->advertising = 32U;
    } else {
      ecmd->supported = 4096U;
      ecmd->advertising = 4096U;
    }
    {
    tmp___0 = netif_running((struct net_device const *)dev);
    }
    if ((int )tmp___0 && (unsigned int )adapter->has_link_events != 0U) {
      {
      ethtool_cmd_speed_set(ecmd, (__u32 )adapter->link_speed);
      ecmd->autoneg = (__u8 )adapter->link_autoneg;
      ecmd->duplex = (__u8 )adapter->link_duplex;
      }
      goto skip;
    } else {
    }
    ecmd->port = 0U;
    if ((unsigned int )adapter->ahw.revision_id > 47U) {
      {
      pcifn = (u16 )adapter->ahw.pci_func;
      val = (*(adapter->crb_read))(adapter, (unsigned long )((int )((unsigned int )pcifn / 4U) * 4) + 136323816UL);
      ethtool_cmd_speed_set(ecmd, ((val >> ((int )pcifn & 3) * 8) & 255U) * 100U);
      }
    } else {
      {
      ethtool_cmd_speed_set(ecmd, 10000U);
      }
    }
    ecmd->duplex = 1U;
    ecmd->autoneg = 0U;
  } else {
    return (-5);
  }
  skip:
  ecmd->phy_address = adapter->physical_port;
  ecmd->transceiver = 1U;
  {
  if ((int )adapter->ahw.board_type == 10) {
    goto case_10;
  } else {
  }
  if ((int )adapter->ahw.board_type == 12) {
    goto case_12;
  } else {
  }
  if ((int )adapter->ahw.board_type == 33) {
    goto case_33;
  } else {
  }
  if ((int )adapter->ahw.board_type == 36) {
    goto case_36;
  } else {
  }
  if ((int )adapter->ahw.board_type == 41) {
    goto case_41;
  } else {
  }
  if ((int )adapter->ahw.board_type == 15) {
    goto case_15;
  } else {
  }
  if ((int )adapter->ahw.board_type == 49) {
    goto case_49;
  } else {
  }
  if ((int )adapter->ahw.board_type == 35) {
    goto case_35;
  } else {
  }
  if ((int )adapter->ahw.board_type == 39) {
    goto case_39;
  } else {
  }
  if ((int )adapter->ahw.board_type == 14) {
    goto case_14;
  } else {
  }
  if ((int )adapter->ahw.board_type == 13) {
    goto case_13;
  } else {
  }
  if ((int )adapter->ahw.board_type == 37) {
    goto case_37;
  } else {
  }
  if ((int )adapter->ahw.board_type == 40) {
    goto case_40;
  } else {
  }
  if ((int )adapter->ahw.board_type == 34) {
    goto case_34;
  } else {
  }
  if ((int )adapter->ahw.board_type == 38) {
    goto case_38;
  } else {
  }
  if ((int )adapter->ahw.board_type == 42) {
    goto case_42;
  } else {
  }
  if ((int )adapter->ahw.board_type == 43) {
    goto case_43;
  } else {
  }
  if ((int )adapter->ahw.board_type == 11) {
    goto case_11;
  } else {
  }
  if ((int )adapter->ahw.board_type == 50) {
    goto case_50;
  } else {
  }
  if ((int )adapter->ahw.board_type == 128) {
    goto case_128;
  } else {
  }
  goto switch_default;
  case_10: ;
  case_12: ;
  case_33: ;
  case_36: ;
  case_41:
  ecmd->supported = ecmd->supported | 64U;
  ecmd->advertising = ecmd->advertising | 64U;
  case_15: ;
  case_49: ;
  case_35: ;
  case_39:
  ecmd->supported = ecmd->supported | 128U;
  ecmd->advertising = ecmd->advertising | 128U;
  ecmd->port = 0U;
  ecmd->autoneg = (unsigned int )adapter->ahw.board_type != 15U ? (__u8 )adapter->link_autoneg : 0U;
  goto ldv_48392;
  case_14: ;
  case_13: ;
  case_37: ;
  case_40: ;
  case_34:
  ecmd->supported = ecmd->supported | 512U;
  ecmd->advertising = ecmd->advertising | 512U;
  ecmd->port = 2U;
  ecmd->autoneg = 0U;
  goto ldv_48392;
  case_38: ;
  case_42: ;
  case_43:
  {
  ecmd->advertising = ecmd->advertising | 128U;
  ecmd->supported = ecmd->supported | 128U;
  tmp___1 = netif_running((struct net_device const *)dev);
  check_sfp_module = (int )tmp___1 && (unsigned int )adapter->has_link_events != 0U;
  }
  case_11: ;
  case_50:
  ecmd->supported = ecmd->supported | 1024U;
  ecmd->advertising = ecmd->advertising | 1024U;
  ecmd->port = 3U;
  ecmd->autoneg = 0U;
  goto ldv_48392;
  case_128: ;
  if ((unsigned int )adapter->ahw.port_type == 2U) {
    {
    ecmd->autoneg = 0U;
    ecmd->supported = ecmd->supported | 1152U;
    ecmd->advertising = ecmd->advertising | 1152U;
    ecmd->port = 3U;
    tmp___2 = netif_running((struct net_device const *)dev);
    check_sfp_module = (int )tmp___2 && (unsigned int )adapter->has_link_events != 0U;
    }
  } else {
    ecmd->supported = ecmd->supported | 192U;
    ecmd->advertising = ecmd->advertising | 192U;
    ecmd->port = 0U;
  }
  goto ldv_48392;
  switch_default:
  {
  printk("\vnetxen-nic: Unsupported board model %d\n", (int )adapter->ahw.board_type);
  }
  return (-5);
  switch_break: ;
  }
  ldv_48392: ;
  if (check_sfp_module != 0) {
    {
    if ((int )adapter->module_type == 2) {
      goto case_2;
    } else {
    }
    if ((int )adapter->module_type == 3) {
      goto case_3;
    } else {
    }
    if ((int )adapter->module_type == 4) {
      goto case_4;
    } else {
    }
    if ((int )adapter->module_type == 5) {
      goto case_5;
    } else {
    }
    if ((int )adapter->module_type == 6) {
      goto case_6;
    } else {
    }
    if ((int )adapter->module_type == 7) {
      goto case_7;
    } else {
    }
    if ((int )adapter->module_type == 8) {
      goto case_8;
    } else {
    }
    goto switch_default___0;
    case_2: ;
    case_3: ;
    case_4: ;
    case_5:
    ecmd->port = 3U;
    goto ldv_48409;
    case_6: ;
    case_7: ;
    case_8:
    ecmd->port = 0U;
    goto ldv_48409;
    switch_default___0:
    ecmd->port = 255U;
    switch_break___0: ;
    }
    ldv_48409: ;
  } else {
  }
  {
  tmp___3 = netif_running((struct net_device const *)dev);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4 || (unsigned int )adapter->ahw.linkup == 0U) {
    {
    ecmd->duplex = 255U;
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    }
  } else {
  }
  return (0);
}
}
static int netxen_nic_set_settings(struct net_device *dev , struct ethtool_cmd *ecmd )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 speed ;
  __u32 tmp___0 ;
  int ret ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
  speed = tmp___0;
  }
  if ((unsigned int )adapter->ahw.port_type != 1U) {
    return (-95);
  } else {
  }
  if ((adapter->capabilities & 2048U) == 0U) {
    return (-95);
  } else {
  }
  {
  ret = nx_fw_cmd_set_gbe_port(adapter, speed, (u32 )ecmd->duplex, (u32 )ecmd->autoneg);
  }
  if (ret == 9) {
    return (-95);
  } else
  if (ret != 0) {
    return (-5);
  } else {
  }
  {
  adapter->link_speed = (u16 )speed;
  adapter->link_duplex = (u16 )ecmd->duplex;
  adapter->link_autoneg = (u16 )ecmd->autoneg;
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  {
  (*((dev->netdev_ops)->ndo_stop))(dev);
  tmp___3 = (*((dev->netdev_ops)->ndo_open))(dev);
  }
  return (tmp___3);
}
}
static int netxen_nic_get_regs_len(struct net_device *dev )
{
  {
  return (120);
}
}
static void netxen_nic_get_regs(struct net_device *dev , struct ethtool_regs *regs ,
                                void *p )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_sds_ring *sds_ring ;
  u32 *regs_buff ;
  int ring ;
  int i ;
  int port ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  recv_ctx = & adapter->recv_ctx;
  regs_buff = (u32 *)p;
  i = 0;
  port = (int )adapter->physical_port;
  memset(p, 0, 120UL);
  regs->version = (__u32 )((((int )adapter->ahw.revision_id << 16) | 16777216) | (int )(adapter->pdev)->device);
  }
  if ((unsigned int )adapter->is_up != 777U) {
    return;
  } else {
  }
  {
  tmp___0 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___0) = (*(adapter->crb_read))(adapter, 136323664UL);
  tmp___1 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___1) = (*(adapter->crb_read))(adapter, 136323900UL);
  tmp___2 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___2) = (*(adapter->crb_read))(adapter, 136323368UL);
  tmp___3 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___3) = (*(adapter->io_read))(adapter, adapter->crb_int_state_reg);
  tmp___4 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___4) = (*(adapter->crb_read))(adapter, 136323384UL);
  tmp___5 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___5) = (*(adapter->crb_read))(adapter, 136323392UL);
  tmp___6 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___6) = (*(adapter->crb_read))(adapter, 136323248UL);
  tmp___7 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___7) = (*(adapter->crb_read))(adapter, 136323240UL);
  tmp___8 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___8) = (*(adapter->crb_read))(adapter, 136323244UL);
  tmp___9 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___9) = (*(adapter->crb_read))(adapter, 118489148UL);
  tmp___10 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___10) = (*(adapter->crb_read))(adapter, 119537724UL);
  tmp___11 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___11) = (*(adapter->crb_read))(adapter, 120586300UL);
  tmp___12 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___12) = (*(adapter->crb_read))(adapter, 121634876UL);
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    tmp___13 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___13) = (*(adapter->crb_read))(adapter, 116391996UL);
    i = i + 2;
    tmp___14 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___14) = (*(adapter->crb_read))(adapter, 136323736UL);
    tmp___15 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___15) = *((adapter->tx_ring)->hw_consumer);
    }
  } else {
    {
    i = i + 1;
    tmp___16 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___16) = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536) + 107413504UL);
    tmp___17 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___17) = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536) + 107413508UL);
    tmp___18 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___18) = (*(adapter->crb_read))(adapter, 136323732UL);
    tmp___19 = i;
    i = i + 1;
    *(regs_buff + (unsigned long )tmp___19) = (*(adapter->io_read))(adapter, (adapter->tx_ring)->crb_cmd_consumer);
    }
  }
  {
  tmp___20 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___20) = (*(adapter->io_read))(adapter, (adapter->tx_ring)->crb_cmd_producer);
  tmp___21 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___21) = (*(adapter->io_read))(adapter, (recv_ctx->rds_rings)->crb_rcv_producer);
  tmp___22 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___22) = (*(adapter->io_read))(adapter, (recv_ctx->rds_rings + 1UL)->crb_rcv_producer);
  tmp___23 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___23) = (u32 )adapter->max_sds_rings;
  ring = 0;
  }
  goto ldv_48437;
  ldv_48436:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  tmp___24 = i;
  i = i + 1;
  *(regs_buff + (unsigned long )tmp___24) = (*(adapter->io_read))(adapter, sds_ring->crb_sts_consumer);
  ring = ring + 1;
  }
  ldv_48437: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_48436;
  } else {
  }
  return;
}
}
static u32 netxen_nic_test_link(struct net_device *dev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 val ;
  u32 port ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  port = (u32 )adapter->physical_port;
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    {
    val = (*(adapter->crb_read))(adapter, 136323736UL);
    val = (val >> (int )adapter->ahw.pci_func * 4) & 15U;
    }
    return (val != 1U);
  } else {
    {
    val = (*(adapter->crb_read))(adapter, 136323732UL);
    val = (val >> (int )(port * 8U)) & 255U;
    }
    return (val != 16U);
  }
}
}
static int netxen_nic_get_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                                 u8 *bytes )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int offset ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  {
  eeprom->magic = (__u32 )((int )(adapter->pdev)->vendor | ((int )(adapter->pdev)->device << 16));
  offset = (int )eeprom->offset;
  ret = netxen_rom_fast_read_words(adapter, offset, bytes, (size_t )eeprom->len);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static void netxen_nic_get_ringparam(struct net_device *dev , struct ethtool_ringparam *ring )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  ring->rx_pending = (__u32 )adapter->num_rxd;
  ring->rx_jumbo_pending = (__u32 )adapter->num_jumbo_rxd;
  ring->rx_jumbo_pending = ring->rx_jumbo_pending + (__u32 )adapter->num_lro_rxd;
  ring->tx_pending = (__u32 )adapter->num_txd;
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    ring->rx_max_pending = 4096U;
    ring->rx_jumbo_max_pending = 512U;
  } else {
    ring->rx_max_pending = 8192U;
    ring->rx_jumbo_max_pending = 1024U;
  }
  ring->tx_max_pending = 1024U;
  return;
}
}
static u32 netxen_validate_ringparam(u32 val , u32 min , u32 max , char *r_name )
{
  u32 num_desc ;
  u32 _max1 ;
  u32 _max2 ;
  u32 _min1 ;
  u32 _min2 ;
  unsigned long tmp___67 ;
  {
  {
  _max1 = val;
  _max2 = min;
  num_desc = _max1 > _max2 ? _max1 : _max2;
  _min1 = num_desc;
  _min2 = max;
  num_desc = _min1 < _min2 ? _min1 : _min2;
  tmp___67 = __roundup_pow_of_two((unsigned long )num_desc);
  num_desc = (u32 )tmp___67;
  }
  if (val != num_desc) {
    {
    printk("\016%s: setting %s ring size %d instead of %d\n", (char *)(& netxen_nic_driver_name),
           r_name, num_desc, val);
    }
  } else {
  }
  return (num_desc);
}
}
static int netxen_nic_set_ringparam(struct net_device *dev , struct ethtool_ringparam *ring )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u16 max_rcv_desc ;
  u16 max_jumbo_desc ;
  u16 num_rxd ;
  u16 num_jumbo_rxd ;
  u16 num_txd ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  max_rcv_desc = 8192U;
  max_jumbo_desc = 1024U;
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (-95);
  } else {
  }
  if (ring->rx_mini_pending != 0U) {
    return (-95);
  } else {
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    max_rcv_desc = 4096U;
    max_jumbo_desc = 1024U;
  } else {
  }
  {
  tmp___0 = netxen_validate_ringparam(ring->rx_pending, 64U, (u32 )max_rcv_desc, (char *)"rx");
  num_rxd = (u16 )tmp___0;
  tmp___1 = netxen_validate_ringparam(ring->rx_jumbo_pending, 32U, (u32 )max_jumbo_desc,
                                      (char *)"rx jumbo");
  num_jumbo_rxd = (u16 )tmp___1;
  tmp___2 = netxen_validate_ringparam(ring->tx_pending, 64U, 1024U, (char *)"tx");
  num_txd = (u16 )tmp___2;
  }
  if (((int )num_rxd == (int )adapter->num_rxd && (int )num_txd == (int )adapter->num_txd) && (int )num_jumbo_rxd == (int )adapter->num_jumbo_rxd) {
    return (0);
  } else {
  }
  {
  adapter->num_rxd = num_rxd;
  adapter->num_jumbo_rxd = num_jumbo_rxd;
  adapter->num_txd = num_txd;
  tmp___3 = netxen_nic_reset_context(adapter);
  }
  return (tmp___3);
}
}
static void netxen_nic_get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *pause )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  __u32 val ;
  int port ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  port = (int )adapter->physical_port;
  pause->autoneg = 0U;
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    if ((unsigned int )port > 3U) {
      return;
    } else {
    }
    {
    val = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536) + 107151360UL);
    pause->rx_pause = (val >> 5) & 1U;
    val = (*(adapter->crb_read))(adapter, 106955532UL);
    }
    {
    if (port == 0) {
      goto case_0;
    } else {
    }
    if (port == 1) {
      goto case_1;
    } else {
    }
    if (port == 2) {
      goto case_2;
    } else {
    }
    if (port == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0:
    pause->tx_pause = (val & 1U) == 0U;
    goto ldv_48489;
    case_1:
    pause->tx_pause = (val & 4U) == 0U;
    goto ldv_48489;
    case_2:
    pause->tx_pause = (val & 16U) == 0U;
    goto ldv_48489;
    case_3: ;
    switch_default:
    pause->tx_pause = (val & 64U) == 0U;
    goto ldv_48489;
    switch_break: ;
    }
    ldv_48489: ;
  } else
  if ((unsigned int )adapter->ahw.port_type == 2U) {
    if ((unsigned int )port > 1U) {
      return;
    } else {
    }
    {
    pause->rx_pause = 1U;
    val = (*(adapter->crb_read))(adapter, 106954904UL);
    }
    if (port == 0) {
      pause->tx_pause = (val & 1U) == 0U;
    } else {
      pause->tx_pause = (val & 8U) == 0U;
    }
  } else {
    {
    printk("\v%s: Unknown board type: %x\n", (char *)(& netxen_nic_driver_name), (int )adapter->ahw.port_type);
    }
  }
  return;
}
}
static int netxen_nic_set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *pause )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  __u32 val ;
  int port ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  port = (int )adapter->physical_port;
  }
  if (pause->autoneg != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )adapter->ahw.port_type == 1U) {
    if ((unsigned int )port > 3U) {
      return (-5);
    } else {
    }
    {
    val = (*(adapter->crb_read))(adapter, (unsigned long )(port * 65536) + 107151360UL);
    }
    if (pause->rx_pause != 0U) {
      val = val | 32U;
    } else {
      val = val & 4294967263U;
    }
    {
    (*(adapter->crb_write))(adapter, (unsigned long )(port * 65536) + 107151360UL,
                            val);
    val = (*(adapter->crb_read))(adapter, 106955532UL);
    }
    {
    if (port == 0) {
      goto case_0;
    } else {
    }
    if (port == 1) {
      goto case_1;
    } else {
    }
    if (port == 2) {
      goto case_2;
    } else {
    }
    if (port == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0: ;
    if (pause->tx_pause != 0U) {
      val = val & 4294967294U;
    } else {
      val = val | 1U;
    }
    goto ldv_48502;
    case_1: ;
    if (pause->tx_pause != 0U) {
      val = val & 4294967291U;
    } else {
      val = val | 4U;
    }
    goto ldv_48502;
    case_2: ;
    if (pause->tx_pause != 0U) {
      val = val & 4294967279U;
    } else {
      val = val | 16U;
    }
    goto ldv_48502;
    case_3: ;
    switch_default: ;
    if (pause->tx_pause != 0U) {
      val = val & 4294967231U;
    } else {
      val = val | 64U;
    }
    goto ldv_48502;
    switch_break: ;
    }
    ldv_48502:
    {
    (*(adapter->crb_write))(adapter, 106955532UL, val);
    }
  } else
  if ((unsigned int )adapter->ahw.port_type == 2U) {
    if ((unsigned int )port > 1U) {
      return (-5);
    } else {
    }
    {
    val = (*(adapter->crb_read))(adapter, 106954904UL);
    }
    if (port == 0) {
      if (pause->tx_pause != 0U) {
        val = val & 4294967294U;
      } else {
        val = val | 1U;
      }
    } else
    if (pause->tx_pause != 0U) {
      val = val & 4294967287U;
    } else {
      val = val | 8U;
    }
    {
    (*(adapter->crb_write))(adapter, 106954904UL, val);
    }
  } else {
    {
    printk("\v%s: Unknown board type: %x\n", (char *)(& netxen_nic_driver_name), (int )adapter->ahw.port_type);
    }
  }
  return (0);
}
}
static int netxen_nic_reg_test(struct net_device *dev )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 data_read ;
  u32 data_written ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  data_read = (*(adapter->crb_read))(adapter, 101711872UL);
  }
  if ((data_read & 65535U) != (u32 )(adapter->pdev)->vendor) {
    return (1);
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 47U) {
    return (0);
  } else {
  }
  {
  data_written = 2779096485U;
  (*(adapter->crb_write))(adapter, 136324224UL, data_written);
  data_read = (*(adapter->crb_read))(adapter, 136324224UL);
  }
  if (data_written != data_read) {
    return (1);
  } else {
  }
  return (0);
}
}
static int netxen_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 0) {
    goto case_0;
  } else {
  }
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (9);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void netxen_nic_diag_test(struct net_device *dev , struct ethtool_test *eth_test ,
                                 u64 *data )
{
  u64 tmp ;
  int tmp___0 ;
  u64 tmp___1 ;
  u32 tmp___2 ;
  {
  {
  memset((void *)data, 0, 16UL);
  tmp___0 = netxen_nic_reg_test(dev);
  tmp = (u64 )tmp___0;
  *data = tmp;
  }
  if (tmp != 0ULL) {
    eth_test->flags = eth_test->flags | 2U;
  } else {
  }
  {
  tmp___2 = netxen_nic_test_link(dev);
  tmp___1 = (unsigned long long )tmp___2;
  *(data + 1UL) = tmp___1;
  }
  if (tmp___1 != 0ULL) {
    eth_test->flags = eth_test->flags | 2U;
  } else {
  }
  return;
}
}
static void netxen_nic_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  int index ;
  {
  {
  if (stringset == 0U) {
    goto case_0;
  } else {
  }
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0:
  {
  memcpy((void *)data, (void const *)(& netxen_nic_gstrings_test), 64UL);
  }
  goto ldv_48540;
  case_1:
  index = 0;
  goto ldv_48545;
  ldv_48544:
  {
  memcpy((void *)data + (unsigned long )(index * 32), (void const *)(& netxen_nic_gstrings_stats[index].stat_string),
         32UL);
  index = index + 1;
  }
  ldv_48545: ;
  if ((unsigned int )index <= 8U) {
    goto ldv_48544;
  } else {
  }
  goto ldv_48540;
  switch_break: ;
  }
  ldv_48540: ;
  return;
}
}
static void netxen_nic_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                         u64 *data )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  int index ;
  char *p ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  index = 0;
  }
  goto ldv_48558;
  ldv_48557:
  p = (char *)adapter + (unsigned long )netxen_nic_gstrings_stats[index].stat_offset;
  *(data + (unsigned long )index) = netxen_nic_gstrings_stats[index].sizeof_stat == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  index = index + 1;
  ldv_48558: ;
  if ((unsigned int )index <= 8U) {
    goto ldv_48557;
  } else {
  }
  return;
}
}
static void netxen_nic_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 wol_cfg ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  wol_cfg = 0U;
  wol->supported = 0U;
  wol->wolopts = 0U;
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return;
  } else {
  }
  {
  wol_cfg = (*(adapter->crb_read))(adapter, 136323460UL);
  }
  if ((int )((unsigned long )wol_cfg >> (int )adapter->portnum) & 1) {
    wol->supported = wol->supported | 32U;
  } else {
  }
  {
  wol_cfg = (*(adapter->crb_read))(adapter, 136323464UL);
  }
  if ((int )((unsigned long )wol_cfg >> (int )adapter->portnum) & 1) {
    wol->wolopts = wol->wolopts | 32U;
  } else {
  }
  return;
}
}
static int netxen_nic_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  u32 wol_cfg ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct netxen_adapter *)tmp;
  wol_cfg = 0U;
  }
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    return (-95);
  } else {
  }
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-95);
  } else {
  }
  {
  wol_cfg = (*(adapter->crb_read))(adapter, 136323460UL);
  }
  if ((wol_cfg & (u32 )(1 << (int )adapter->portnum)) == 0U) {
    return (-95);
  } else {
  }
  {
  wol_cfg = (*(adapter->crb_read))(adapter, 136323464UL);
  }
  if ((wol->wolopts & 32U) != 0U) {
    wol_cfg = wol_cfg | (u32 )(1UL << (int )adapter->portnum);
  } else {
    wol_cfg = wol_cfg & ~ ((u32 )(1UL << (int )adapter->portnum));
  }
  {
  (*(adapter->crb_write))(adapter, 136323464UL, wol_cfg);
  }
  return (0);
}
}
static int netxen_set_intr_coalesce(struct net_device *netdev , struct ethtool_coalesce *ethcoal )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if ((unsigned int )adapter->ahw.revision_id <= 47U) {
    return (-22);
  } else {
  }
  if ((unsigned int )adapter->is_up != 777U) {
    return (-22);
  } else {
  }
  if ((((((((((((((((((((ethcoal->rx_coalesce_usecs > 65535U || ethcoal->rx_max_coalesced_frames > 65535U) || ethcoal->tx_coalesce_usecs > 65535U) || ethcoal->tx_max_coalesced_frames > 65535U) || ethcoal->rx_coalesce_usecs_irq != 0U) || ethcoal->rx_max_coalesced_frames_irq != 0U) || ethcoal->tx_coalesce_usecs_irq != 0U) || ethcoal->tx_max_coalesced_frames_irq != 0U) || ethcoal->stats_block_coalesce_usecs != 0U) || ethcoal->use_adaptive_rx_coalesce != 0U) || ethcoal->use_adaptive_tx_coalesce != 0U) || ethcoal->pkt_rate_low != 0U) || ethcoal->rx_coalesce_usecs_low != 0U) || ethcoal->rx_max_coalesced_frames_low != 0U) || ethcoal->tx_coalesce_usecs_low != 0U) || ethcoal->tx_max_coalesced_frames_low != 0U) || ethcoal->pkt_rate_high != 0U) || ethcoal->rx_coalesce_usecs_high != 0U) || ethcoal->rx_max_coalesced_frames_high != 0U) || ethcoal->tx_coalesce_usecs_high != 0U) || ethcoal->tx_max_coalesced_frames_high != 0U) {
    return (-22);
  } else {
  }
  if (ethcoal->rx_coalesce_usecs == 0U || ethcoal->rx_max_coalesced_frames == 0U) {
    adapter->coal.flags = 4U;
    adapter->coal.normal.data.rx_time_us = 3U;
    adapter->coal.normal.data.rx_packets = 256U;
  } else {
    adapter->coal.flags = 0U;
    adapter->coal.normal.data.rx_time_us = (uint16_t )ethcoal->rx_coalesce_usecs;
    adapter->coal.normal.data.rx_packets = (uint16_t )ethcoal->rx_max_coalesced_frames;
  }
  {
  adapter->coal.normal.data.tx_time_us = (uint16_t )ethcoal->tx_coalesce_usecs;
  adapter->coal.normal.data.tx_packets = (uint16_t )ethcoal->tx_max_coalesced_frames;
  netxen_config_intr_coalesce(adapter);
  }
  return (0);
}
}
static int netxen_get_intr_coalesce(struct net_device *netdev , struct ethtool_coalesce *ethcoal )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  }
  if ((unsigned int )adapter->ahw.revision_id <= 47U) {
    return (-22);
  } else {
  }
  if ((unsigned int )adapter->is_up != 777U) {
    return (-22);
  } else {
  }
  ethcoal->rx_coalesce_usecs = (__u32 )adapter->coal.normal.data.rx_time_us;
  ethcoal->tx_coalesce_usecs = (__u32 )adapter->coal.normal.data.tx_time_us;
  ethcoal->rx_max_coalesced_frames = (__u32 )adapter->coal.normal.data.rx_packets;
  ethcoal->tx_max_coalesced_frames = (__u32 )adapter->coal.normal.data.tx_packets;
  return (0);
}
}
static int netxen_get_dump_flag(struct net_device *netdev , struct ethtool_dump *dump )
{
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netxen_minidump *mdump ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  mdump = & adapter->mdump;
  }
  if (adapter->fw_mdump_rdy != 0) {
    dump->len = mdump->md_dump_size;
  } else {
    dump->len = 0U;
  }
  if ((unsigned int )mdump->md_enabled == 0U) {
    dump->flag = 0U;
  } else {
    dump->flag = (__u32 )mdump->md_capture_mask;
  }
  dump->version = adapter->fw_version;
  return (0);
}
}
static int netxen_set_dump(struct net_device *netdev , struct ethtool_dump *val )
{
  int i ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netxen_minidump *mdump ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  mdump = & adapter->mdump;
  }
  {
  if (val->flag == 3735944941U) {
    goto case_3735944941;
  } else {
  }
  if (val->flag == 195952365U) {
    goto case_195952365;
  } else {
  }
  if (val->flag == 182320877U) {
    goto case_182320877;
  } else {
  }
  if (val->flag == 3735936685U) {
    goto case_3735936685;
  } else {
  }
  goto switch_default;
  case_3735944941: ;
  if ((unsigned int )mdump->md_enabled == 0U) {
    {
    netdev_info((struct net_device const *)netdev, "FW dump not enabled\n");
    }
    return (0);
  } else {
  }
  if (adapter->fw_mdump_rdy != 0) {
    {
    netdev_info((struct net_device const *)netdev, "Previous dump not cleared, not forcing dump\n");
    }
    return (0);
  } else {
  }
  {
  netdev_info((struct net_device const *)netdev, "Forcing a fw dump\n");
  nx_dev_request_reset(adapter);
  }
  goto ldv_48596;
  case_195952365: ;
  if ((unsigned int )mdump->md_enabled != 0U) {
    {
    netdev_info((struct net_device const *)netdev, "Disabling FW Dump\n");
    mdump->md_enabled = 0U;
    }
  } else {
  }
  goto ldv_48596;
  case_182320877: ;
  if ((unsigned int )mdump->md_enabled == 0U) {
    {
    netdev_info((struct net_device const *)netdev, "Enabling FW dump\n");
    mdump->md_enabled = 1U;
    }
  } else {
  }
  goto ldv_48596;
  case_3735936685:
  {
  netdev_info((struct net_device const *)netdev, "Forcing FW reset\n");
  nx_dev_request_reset(adapter);
  adapter->flags = adapter->flags & 4294967231U;
  }
  goto ldv_48596;
  switch_default:
  i = 0;
  goto ldv_48604;
  ldv_48603: ;
  if (val->flag == (__u32 )FW_DUMP_LEVELS[i]) {
    {
    mdump->md_capture_mask = (u8 )val->flag;
    netdev_info((struct net_device const *)netdev, "Driver mask changed to: 0x%x\n",
                (int )mdump->md_capture_mask);
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_48604: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_48603;
  } else {
  }
  {
  netdev_info((struct net_device const *)netdev, "Invalid dump level: 0x%x\n", val->flag);
  }
  return (-22);
  switch_break: ;
  }
  ldv_48596: ;
  return (0);
}
}
static int netxen_get_dump_data(struct net_device *netdev , struct ethtool_dump *dump ,
                                void *buffer )
{
  int i ;
  int copy_sz ;
  u32 *hdr_ptr ;
  u32 *data ;
  struct netxen_adapter *adapter ;
  void *tmp ;
  struct netxen_minidump *mdump ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct netxen_adapter *)tmp;
  mdump = & adapter->mdump;
  }
  if (adapter->fw_mdump_rdy == 0) {
    {
    netdev_info((struct net_device const *)netdev, "Dump not available\n");
    }
    return (-22);
  } else {
  }
  copy_sz = (int )mdump->md_template_size;
  hdr_ptr = (u32 *)mdump->md_template;
  data = (u32 *)buffer;
  i = 0;
  goto ldv_48618;
  ldv_48617:
  tmp___0 = data;
  data = data + 1;
  tmp___1 = hdr_ptr;
  hdr_ptr = hdr_ptr + 1;
  *tmp___0 = *tmp___1;
  i = i + 1;
  ldv_48618: ;
  if ((unsigned long )i < (unsigned long )copy_sz / 4UL) {
    goto ldv_48617;
  } else {
  }
  {
  memcpy(buffer + (unsigned long )copy_sz, (void const *)mdump->md_capture_buff + (unsigned long )mdump->md_template_size,
         (size_t )mdump->md_capture_size);
  dump->len = (u32 )copy_sz + mdump->md_capture_size;
  dump->flag = (__u32 )mdump->md_capture_mask;
  vfree((void const *)mdump->md_capture_buff);
  mdump->md_capture_buff = (void *)0;
  adapter->fw_mdump_rdy = 0;
  netdev_info((struct net_device const *)netdev, "extracted the fw dump Successfully\n");
  }
  return (0);
}
}
struct ethtool_ops const netxen_nic_ethtool_ops =
     {& netxen_nic_get_settings, & netxen_nic_set_settings, & netxen_nic_get_drvinfo,
    & netxen_nic_get_regs_len, & netxen_nic_get_regs, & netxen_nic_get_wol, & netxen_nic_set_wol,
    0, 0, 0, & ethtool_op_get_link, & netxen_nic_get_eeprom_len, & netxen_nic_get_eeprom,
    0, & netxen_get_intr_coalesce, & netxen_set_intr_coalesce, & netxen_nic_get_ringparam,
    & netxen_nic_set_ringparam, & netxen_nic_get_pauseparam, & netxen_nic_set_pauseparam,
    & netxen_nic_diag_test, & netxen_nic_get_strings, 0, & netxen_nic_get_ethtool_stats,
    0, 0, 0, 0, & netxen_get_sset_count, 0, 0, 0, 0, 0, 0, 0, 0, 0, & netxen_get_dump_flag,
    & netxen_get_dump_data, & netxen_set_dump, 0, 0, 0, 0, 0};
int (*ldv_1_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) = & netxen_get_intr_coalesce;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & netxen_nic_get_drvinfo;
int (*ldv_1_callback_get_dump_data)(struct net_device * , struct ethtool_dump * ,
                                    void * ) = & netxen_get_dump_data;
int (*ldv_1_callback_get_dump_flag)(struct net_device * , struct ethtool_dump * ) = & netxen_get_dump_flag;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & netxen_nic_get_eeprom;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) = & netxen_nic_get_eeprom_len;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & netxen_nic_get_ethtool_stats;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) = & netxen_nic_get_pauseparam;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & netxen_nic_get_regs;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) = & netxen_nic_get_regs_len;
void (*ldv_1_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) = & netxen_nic_get_ringparam;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & netxen_nic_get_settings;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) = & netxen_get_sset_count;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & netxen_nic_get_strings;
void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) = & netxen_nic_get_wol;
void (*ldv_1_callback_self_test)(struct net_device * , struct ethtool_test * , unsigned long long * ) = & netxen_nic_diag_test;
int (*ldv_1_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) = & netxen_set_intr_coalesce;
int (*ldv_1_callback_set_dump)(struct net_device * , struct ethtool_dump * ) = & netxen_set_dump;
int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) = & netxen_nic_set_pauseparam;
int (*ldv_1_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) = & netxen_nic_set_ringparam;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & netxen_nic_set_settings;
int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) = & netxen_nic_set_wol;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  netxen_nic_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  netxen_nic_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  netxen_nic_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_17(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  netxen_nic_get_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  netxen_nic_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  netxen_nic_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  netxen_nic_get_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_22(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  netxen_nic_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  netxen_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_26(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  netxen_nic_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_29(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  netxen_nic_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  netxen_get_intr_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_46(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  netxen_nic_diag_test(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_49(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  netxen_set_intr_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_50(int (*arg0)(struct net_device * ,
                                                               struct ethtool_dump * ) ,
                                                   struct net_device *arg1 , struct ethtool_dump *arg2 )
{
  {
  {
  netxen_set_dump(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_51(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  netxen_nic_set_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  netxen_nic_set_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  netxen_nic_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  netxen_nic_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  netxen_nic_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct net_device * ,
                                                              struct ethtool_dump * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  struct ethtool_dump *arg2 , void *arg3 )
{
  {
  {
  netxen_get_dump_data(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_dump * ) ,
                                                  struct net_device *arg1 , struct ethtool_dump *arg2 )
{
  {
  {
  netxen_get_dump_flag(arg1, arg2);
  }
  return;
}
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
static u32 netxen_poll_rsp(struct netxen_adapter *adapter )
{
  u32 rsp ;
  int timeout ;
  {
  rsp = 1U;
  timeout = 0;
  ldv_48362:
  {
  msleep(1U);
  timeout = timeout + 1;
  }
  if (timeout > 4000) {
    return (3U);
  } else {
  }
  {
  rsp = (*(adapter->crb_read))(adapter, 136323608UL);
  }
  if ((int )rsp < 0) {
    goto ldv_48362;
  } else {
  }
  return (rsp);
}
}
static u32 netxen_issue_cmd(struct netxen_adapter *adapter , struct netxen_cmd_args *cmd )
{
  u32 rsp ;
  u32 signature ;
  u32 rcode ;
  int tmp ;
  {
  {
  signature = 0U;
  rcode = 0U;
  signature = (u32 )((int )adapter->ahw.pci_func | -889323264);
  tmp = netxen_pcie_sem_lock(adapter, 5, 0U);
  }
  if (tmp != 0) {
    return (17U);
  } else {
  }
  {
  (*(adapter->crb_write))(adapter, 136323624UL, signature);
  (*(adapter->crb_write))(adapter, 136323612UL, cmd->req.arg1);
  (*(adapter->crb_write))(adapter, 136323616UL, cmd->req.arg2);
  (*(adapter->crb_write))(adapter, 136323620UL, cmd->req.arg3);
  (*(adapter->crb_write))(adapter, 136323608UL, cmd->req.cmd | 2147483648U);
  rsp = netxen_poll_rsp(adapter);
  }
  if (rsp == 3U) {
    {
    printk("\v%s: card response timeout.\n", (char *)(& netxen_nic_driver_name));
    rcode = 17U;
    }
  } else
  if (rsp == 2U) {
    {
    rcode = (*(adapter->crb_read))(adapter, 136323612UL);
    printk("\v%s: failed card response code:0x%x\n", (char *)(& netxen_nic_driver_name),
           rcode);
    }
  } else
  if (rsp == 1U) {
    cmd->rsp.cmd = 0U;
    if (cmd->rsp.arg2 != 0U) {
      {
      cmd->rsp.arg2 = (*(adapter->crb_read))(adapter, 136323616UL);
      }
    } else {
    }
    if (cmd->rsp.arg3 != 0U) {
      {
      cmd->rsp.arg3 = (*(adapter->crb_read))(adapter, 136323620UL);
      }
    } else {
    }
  } else {
  }
  if (cmd->rsp.arg1 != 0U) {
    {
    cmd->rsp.arg1 = (*(adapter->crb_read))(adapter, 136323612UL);
    }
  } else {
  }
  {
  netxen_pcie_sem_unlock(adapter, 5);
  }
  return (rcode);
}
}
static int netxen_get_minidump_template_size(struct netxen_adapter *adapter )
{
  struct netxen_cmd_args cmd ;
  {
  {
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.cmd = 47U;
  memset((void *)(& cmd.rsp), 1, 16UL);
  netxen_issue_cmd(adapter, & cmd);
  }
  if (cmd.rsp.cmd != 0U) {
    {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Can\'t get template size %d\n",
              cmd.rsp.cmd);
    }
    return (-5);
  } else {
  }
  adapter->mdump.md_template_size = cmd.rsp.arg2;
  adapter->mdump.md_template_ver = cmd.rsp.arg3;
  return (0);
}
}
static int netxen_get_minidump_template(struct netxen_adapter *adapter )
{
  dma_addr_t md_template_addr ;
  void *addr ;
  u32 size ;
  struct netxen_cmd_args cmd ;
  {
  size = adapter->mdump.md_template_size;
  if (size == 0U) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Can not capture Minidump template. Invalid template size.\n");
    }
    return (6);
  } else {
  }
  {
  addr = pci_alloc_consistent(adapter->pdev, (size_t )size, & md_template_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Unable to allocate dmable memory for template.\n");
    }
    return (-12);
  } else {
  }
  {
  memset(addr, 0, (size_t )size);
  memset((void *)(& cmd), 0, 32UL);
  memset((void *)(& cmd.rsp), 1, 16UL);
  cmd.req.cmd = 48U;
  cmd.req.arg1 = (unsigned int )md_template_addr;
  cmd.req.arg2 = (unsigned int )(md_template_addr >> 32ULL);
  cmd.req.arg3 = cmd.req.arg3 | size;
  netxen_issue_cmd(adapter, & cmd);
  }
  if (cmd.rsp.cmd == 0U && size == cmd.rsp.arg2) {
    {
    memcpy(adapter->mdump.md_template, (void const *)addr, (size_t )size);
    }
  } else {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to get minidump template, err_code : %d, requested_size : %d, actual_size : %d\n ",
            cmd.rsp.cmd, size, cmd.rsp.arg2);
    }
  }
  {
  pci_free_consistent(adapter->pdev, (size_t )size, addr, md_template_addr);
  }
  return (0);
}
}
static u32 netxen_check_template_checksum(struct netxen_adapter *adapter )
{
  u64 sum ;
  u32 *buff ;
  int count ;
  u32 *tmp ;
  int tmp___0 ;
  {
  sum = 0ULL;
  buff = (u32 *)adapter->mdump.md_template;
  count = (int )(adapter->mdump.md_template_size / 4U);
  goto ldv_48389;
  ldv_48388:
  tmp = buff;
  buff = buff + 1;
  sum = sum + (u64 )*tmp;
  ldv_48389:
  tmp___0 = count;
  count = count - 1;
  if (tmp___0 > 0) {
    goto ldv_48388;
  } else {
  }
  goto ldv_48392;
  ldv_48391:
  sum = (sum & 4294967295ULL) + (sum >> 32);
  ldv_48392: ;
  if (sum >> 32 != 0ULL) {
    goto ldv_48391;
  } else {
  }
  return (~ ((u32 )sum));
}
}
int netxen_setup_minidump(struct netxen_adapter *adapter )
{
  int err ;
  int i ;
  u32 *template ;
  u32 *tmp_buf ;
  struct netxen_minidump_template_hdr *hdr ;
  u32 tmp ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  {
  {
  err = 0;
  err = netxen_get_minidump_template_size(adapter);
  }
  if (err != 0) {
    adapter->mdump.fw_supports_md = 0U;
    if ((unsigned int )err - 15U <= 1U) {
      {
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "Flashed firmware version does not support minidump, minimum version required is [ %u.%u.%u ].\n ",
                4, 0, 579);
      }
    } else {
    }
    return (err);
  } else {
  }
  if (adapter->mdump.md_template_size == 0U) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Error : Invalid template size ,should be non-zero.\n");
    }
    return (-5);
  } else {
  }
  {
  adapter->mdump.md_template = kmalloc((size_t )adapter->mdump.md_template_size, 208U);
  }
  if ((unsigned long )adapter->mdump.md_template == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  err = netxen_get_minidump_template(adapter);
  }
  if (err != 0) {
    if (err == 15) {
      adapter->mdump.fw_supports_md = 0U;
    } else {
    }
    goto free_template;
  } else {
  }
  {
  tmp = netxen_check_template_checksum(adapter);
  }
  if (tmp != 0U) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Minidump template checksum Error\n");
    err = -5;
    }
    goto free_template;
  } else {
  }
  adapter->mdump.md_capture_mask = 31U;
  tmp_buf = (u32 *)adapter->mdump.md_template;
  template = (u32 *)adapter->mdump.md_template;
  i = 0;
  goto ldv_48404;
  ldv_48403:
  tmp___0 = template;
  template = template + 1;
  tmp___1 = tmp_buf;
  tmp_buf = tmp_buf + 1;
  *tmp___0 = *tmp___1;
  i = i + 1;
  ldv_48404: ;
  if ((unsigned long )i < (unsigned long )(adapter->mdump.md_template_size / 4U)) {
    goto ldv_48403;
  } else {
  }
  hdr = (struct netxen_minidump_template_hdr *)adapter->mdump.md_template;
  adapter->mdump.md_capture_buff = (void *)0;
  adapter->mdump.fw_supports_md = 1U;
  adapter->mdump.md_enabled = 0U;
  return (err);
  free_template:
  {
  kfree((void const *)adapter->mdump.md_template);
  adapter->mdump.md_template = (void *)0;
  }
  return (err);
}
}
int nx_fw_cmd_set_mtu(struct netxen_adapter *adapter , int mtu )
{
  u32 rcode ;
  struct netxen_recv_context *recv_ctx ;
  struct netxen_cmd_args cmd ;
  {
  {
  rcode = 0U;
  recv_ctx = & adapter->recv_ctx;
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.cmd = 18U;
  cmd.req.arg1 = (u32 )recv_ctx->context_id;
  cmd.req.arg2 = (u32 )mtu;
  cmd.req.arg3 = 0U;
  }
  if (recv_ctx->state == 2U) {
    {
    netxen_issue_cmd(adapter, & cmd);
    }
  } else {
  }
  if (rcode != 0U) {
    return (-5);
  } else {
  }
  return (0);
}
}
int nx_fw_cmd_set_gbe_port(struct netxen_adapter *adapter , u32 speed , u32 duplex ,
                           u32 autoneg )
{
  struct netxen_cmd_args cmd ;
  u32 tmp ;
  {
  {
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.cmd = 31U;
  cmd.req.arg1 = speed;
  cmd.req.arg2 = duplex;
  cmd.req.arg3 = autoneg;
  tmp = netxen_issue_cmd(adapter, & cmd);
  }
  return ((int )tmp);
}
}
static int nx_fw_cmd_create_rx_ctx(struct netxen_adapter *adapter )
{
  void *addr ;
  nx_hostrq_rx_ctx_t *prq ;
  nx_cardrsp_rx_ctx_t *prsp ;
  nx_hostrq_rds_ring_t *prq_rds ;
  nx_hostrq_sds_ring_t *prq_sds ;
  nx_cardrsp_rds_ring_t *prsp_rds ;
  nx_cardrsp_sds_ring_t *prsp_sds ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct netxen_cmd_args cmd ;
  dma_addr_t hostrq_phys_addr ;
  dma_addr_t cardrsp_phys_addr ;
  u64 phys_addr ;
  int i ;
  int nrds_rings ;
  int nsds_rings ;
  size_t rq_size ;
  size_t rsp_size ;
  u32 cap ;
  u32 reg ;
  u32 val ;
  int err ;
  struct netxen_recv_context *recv_ctx ;
  u32 tmp ;
  {
  {
  recv_ctx = & adapter->recv_ctx;
  nrds_rings = (int )adapter->max_rds_rings;
  nsds_rings = (int )adapter->max_sds_rings;
  rq_size = ((unsigned long )nrds_rings * 24UL + (unsigned long )nsds_rings * 16UL) + 176UL;
  rsp_size = (((unsigned long )nrds_rings + (unsigned long )nsds_rings) + 19UL) * 8UL;
  addr = pci_alloc_consistent(adapter->pdev, rq_size, & hostrq_phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  prq = (nx_hostrq_rx_ctx_t *)addr;
  addr = pci_alloc_consistent(adapter->pdev, rsp_size, & cardrsp_phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    err = -12;
    goto out_free_rq;
  } else {
  }
  prsp = (nx_cardrsp_rx_ctx_t *)addr;
  prq->host_rsp_dma_addr = cardrsp_phys_addr;
  cap = 5U;
  cap = cap | 384U;
  if ((adapter->flags & 128U) != 0U) {
    cap = cap | 2097152U;
  } else {
  }
  prq->capabilities[0] = cap;
  prq->host_int_crb_mode = 1U;
  prq->host_rds_crb_mode = 0U;
  prq->num_rds_rings = (unsigned short )nrds_rings;
  prq->num_sds_rings = (unsigned short )nsds_rings;
  prq->rds_ring_offset = 0U;
  val = prq->rds_ring_offset + (u32 )((unsigned long )nrds_rings) * 24U;
  prq->sds_ring_offset = val;
  prq_rds = (nx_hostrq_rds_ring_t *)(& prq->data) + (unsigned long )prq->rds_ring_offset;
  i = 0;
  goto ldv_48448;
  ldv_48447:
  rds_ring = recv_ctx->rds_rings + (unsigned long )i;
  (prq_rds + (unsigned long )i)->host_phys_addr = rds_ring->phys_addr;
  (prq_rds + (unsigned long )i)->ring_size = rds_ring->num_desc;
  (prq_rds + (unsigned long )i)->ring_kind = (unsigned int )i;
  (prq_rds + (unsigned long )i)->buff_size = (unsigned long long )rds_ring->dma_size;
  i = i + 1;
  ldv_48448: ;
  if (i < nrds_rings) {
    goto ldv_48447;
  } else {
  }
  prq_sds = (nx_hostrq_sds_ring_t *)(& prq->data) + (unsigned long )prq->sds_ring_offset;
  i = 0;
  goto ldv_48451;
  ldv_48450:
  sds_ring = recv_ctx->sds_rings + (unsigned long )i;
  (prq_sds + (unsigned long )i)->host_phys_addr = sds_ring->phys_addr;
  (prq_sds + (unsigned long )i)->ring_size = sds_ring->num_desc;
  (prq_sds + (unsigned long )i)->msi_index = (unsigned short )i;
  i = i + 1;
  ldv_48451: ;
  if (i < nsds_rings) {
    goto ldv_48450;
  } else {
  }
  {
  phys_addr = hostrq_phys_addr;
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = (unsigned int )(phys_addr >> 32);
  cmd.req.arg2 = (unsigned int )phys_addr;
  cmd.req.arg3 = (u32 )rq_size;
  cmd.req.cmd = 7U;
  tmp = netxen_issue_cmd(adapter, & cmd);
  err = (int )tmp;
  }
  if (err != 0) {
    {
    printk("\fFailed to create rx ctx in firmware%d\n", err);
    }
    goto out_free_rsp;
  } else {
  }
  prsp_rds = (nx_cardrsp_rds_ring_t *)(& prsp->data) + (unsigned long )prsp->rds_ring_offset;
  i = 0;
  goto ldv_48455;
  ldv_48454:
  {
  rds_ring = recv_ctx->rds_rings + (unsigned long )i;
  reg = (prsp_rds + (unsigned long )i)->host_producer_crb;
  rds_ring->crb_rcv_producer = netxen_get_ioaddr(adapter, reg + 136323072U);
  i = i + 1;
  }
  ldv_48455: ;
  if (i < (int )prsp->num_rds_rings) {
    goto ldv_48454;
  } else {
  }
  prsp_sds = (nx_cardrsp_sds_ring_t *)(& prsp->data) + (unsigned long )prsp->sds_ring_offset;
  i = 0;
  goto ldv_48458;
  ldv_48457:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )i;
  reg = (prsp_sds + (unsigned long )i)->host_consumer_crb;
  sds_ring->crb_sts_consumer = netxen_get_ioaddr(adapter, reg + 136323072U);
  reg = (prsp_sds + (unsigned long )i)->interrupt_crb;
  sds_ring->crb_intr_mask = netxen_get_ioaddr(adapter, reg + 136323072U);
  i = i + 1;
  }
  ldv_48458: ;
  if (i < (int )prsp->num_sds_rings) {
    goto ldv_48457;
  } else {
  }
  recv_ctx->state = prsp->host_ctx_state;
  recv_ctx->context_id = prsp->context_id;
  recv_ctx->virt_port = (u16 )prsp->virt_port;
  out_free_rsp:
  {
  pci_free_consistent(adapter->pdev, rsp_size, (void *)prsp, cardrsp_phys_addr);
  }
  out_free_rq:
  {
  pci_free_consistent(adapter->pdev, rq_size, (void *)prq, hostrq_phys_addr);
  }
  return (err);
}
}
static void nx_fw_cmd_destroy_rx_ctx(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct netxen_cmd_args cmd ;
  u32 tmp ;
  {
  {
  recv_ctx = & adapter->recv_ctx;
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = (u32 )recv_ctx->context_id;
  cmd.req.arg2 = 0U;
  cmd.req.arg3 = 0U;
  cmd.req.cmd = 8U;
  tmp = netxen_issue_cmd(adapter, & cmd);
  }
  if (tmp != 0U) {
    {
    printk("\f%s: Failed to destroy rx ctx in firmware\n", (char *)(& netxen_nic_driver_name));
    }
  } else {
  }
  return;
}
}
static int nx_fw_cmd_create_tx_ctx(struct netxen_adapter *adapter )
{
  nx_hostrq_tx_ctx_t *prq ;
  nx_hostrq_cds_ring_t *prq_cds ;
  nx_cardrsp_tx_ctx_t *prsp ;
  void *rq_addr ;
  void *rsp_addr ;
  size_t rq_size ;
  size_t rsp_size ;
  u32 temp ;
  int err ;
  u64 offset ;
  u64 phys_addr ;
  dma_addr_t rq_phys_addr ;
  dma_addr_t rsp_phys_addr ;
  struct nx_host_tx_ring *tx_ring ;
  struct netxen_recv_context *recv_ctx ;
  struct netxen_cmd_args cmd ;
  u32 tmp ;
  {
  {
  err = 0;
  tx_ring = adapter->tx_ring;
  recv_ctx = & adapter->recv_ctx;
  rq_size = 200UL;
  rq_addr = pci_alloc_consistent(adapter->pdev, rq_size, & rq_phys_addr);
  }
  if ((unsigned long )rq_addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  rsp_size = 144UL;
  rsp_addr = pci_alloc_consistent(adapter->pdev, rsp_size, & rsp_phys_addr);
  }
  if ((unsigned long )rsp_addr == (unsigned long )((void *)0)) {
    err = -12;
    goto out_free_rq;
  } else {
  }
  {
  memset(rq_addr, 0, rq_size);
  prq = (nx_hostrq_tx_ctx_t *)rq_addr;
  memset(rsp_addr, 0, rsp_size);
  prsp = (nx_cardrsp_tx_ctx_t *)rsp_addr;
  prq->host_rsp_dma_addr = rsp_phys_addr;
  temp = 69U;
  prq->capabilities[0] = temp;
  prq->host_int_crb_mode = 1U;
  prq->interrupt_ctl = 0U;
  prq->msi_index = 0U;
  prq->dummy_dma_addr = adapter->dummy_dma.phys_addr;
  offset = recv_ctx->phys_addr + 192ULL;
  prq->cmd_cons_dma_addr = offset;
  prq_cds = & prq->cds_ring;
  prq_cds->host_phys_addr = tx_ring->phys_addr;
  prq_cds->ring_size = tx_ring->num_desc;
  phys_addr = rq_phys_addr;
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = (unsigned int )(phys_addr >> 32);
  cmd.req.arg2 = (unsigned int )phys_addr;
  cmd.req.arg3 = (u32 )rq_size;
  cmd.req.cmd = 9U;
  tmp = netxen_issue_cmd(adapter, & cmd);
  err = (int )tmp;
  }
  if (err == 0) {
    {
    temp = prsp->cds_ring.host_producer_crb;
    tx_ring->crb_cmd_producer = netxen_get_ioaddr(adapter, temp + 136323072U);
    adapter->tx_context_id = prsp->context_id;
    }
  } else {
    {
    printk("\fFailed to create tx ctx in firmware%d\n", err);
    err = -5;
    }
  }
  {
  pci_free_consistent(adapter->pdev, rsp_size, rsp_addr, rsp_phys_addr);
  }
  out_free_rq:
  {
  pci_free_consistent(adapter->pdev, rq_size, rq_addr, rq_phys_addr);
  }
  return (err);
}
}
static void nx_fw_cmd_destroy_tx_ctx(struct netxen_adapter *adapter )
{
  struct netxen_cmd_args cmd ;
  u32 tmp ;
  {
  {
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = (u32 )adapter->tx_context_id;
  cmd.req.arg2 = 0U;
  cmd.req.arg3 = 0U;
  cmd.req.cmd = 10U;
  tmp = netxen_issue_cmd(adapter, & cmd);
  }
  if (tmp != 0U) {
    {
    printk("\f%s: Failed to destroy tx ctx in firmware\n", (char *)(& netxen_nic_driver_name));
    }
  } else {
  }
  return;
}
}
int nx_fw_cmd_query_phy(struct netxen_adapter *adapter , u32 reg , u32 *val )
{
  u32 rcode ;
  struct netxen_cmd_args cmd ;
  {
  {
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = reg;
  cmd.req.arg2 = 0U;
  cmd.req.arg3 = 0U;
  cmd.req.cmd = 19U;
  cmd.rsp.arg1 = 1U;
  rcode = netxen_issue_cmd(adapter, & cmd);
  }
  if (rcode != 0U) {
    return (-5);
  } else {
  }
  if ((unsigned long )val == (unsigned long )((u32 *)0U)) {
    return (-5);
  } else {
  }
  *val = cmd.rsp.arg1;
  return (0);
}
}
int nx_fw_cmd_set_phy(struct netxen_adapter *adapter , u32 reg , u32 val )
{
  u32 rcode ;
  struct netxen_cmd_args cmd ;
  {
  {
  memset((void *)(& cmd), 0, 32UL);
  cmd.req.arg1 = reg;
  cmd.req.arg2 = val;
  cmd.req.arg3 = 0U;
  cmd.req.cmd = 20U;
  rcode = netxen_issue_cmd(adapter, & cmd);
  }
  if (rcode != 0U) {
    return (-5);
  } else {
  }
  return (0);
}
}
static u64 ctx_addr_sig_regs[4U][3U] = { { 136323976ULL, 136323980ULL, 136324032ULL},
   { 136323984ULL, 136323988ULL, 136324036ULL},
   { 136323992ULL, 136323996ULL, 136324040ULL},
   { 136324000ULL, 136324004ULL, 136324044ULL}};
static struct netxen_recv_crb recv_crb_registers[4U] = { {{136323840U, 136323856U, 136323872U}, {136323896U, 136324864U, 136324868U, 136324872U},
      {136324056U, 136324932U, 136324936U, 136324940U}},
        {{136323908U, 136323924U, 136323940U}, {136323964U, 136324896U, 136324900U, 136324904U},
      {136324064U, 136324964U, 136324968U, 136324972U}},
        {{136324056U, 136324088U, 136324104U}, {136324128U, 136324924U, 136324924U, 136324924U},
      {136324068U, 136324924U, 136324924U, 136324924U}},
        {{136324140U, 136324156U, 136324172U}, {136324196U, 136324924U, 136324924U, 136324924U},
      {136324072U, 136324924U, 136324924U, 136324924U}}};
static int netxen_init_old_ctx(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  int ring ;
  int port ;
  struct netxen_ring_ctx *hwctx ;
  u32 signature ;
  {
  port = (int )adapter->portnum;
  tx_ring = adapter->tx_ring;
  recv_ctx = & adapter->recv_ctx;
  hwctx = recv_ctx->hwctx;
  hwctx->cmd_ring_addr = tx_ring->phys_addr;
  hwctx->cmd_ring_size = tx_ring->num_desc;
  ring = 0;
  goto ldv_48517;
  ldv_48516:
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  hwctx->rcv_rings[ring].addr = rds_ring->phys_addr;
  hwctx->rcv_rings[ring].size = rds_ring->num_desc;
  ring = ring + 1;
  ldv_48517: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48516;
  } else {
  }
  ring = 0;
  goto ldv_48520;
  ldv_48519:
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  if (ring == 0) {
    hwctx->sts_ring_addr = sds_ring->phys_addr;
    hwctx->sts_ring_size = sds_ring->num_desc;
  } else {
  }
  hwctx->sts_rings[ring].addr = sds_ring->phys_addr;
  hwctx->sts_rings[ring].size = sds_ring->num_desc;
  hwctx->sts_rings[ring].msi_index = (unsigned short )ring;
  ring = ring + 1;
  ldv_48520: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_48519;
  } else {
  }
  {
  hwctx->sts_ring_count = (unsigned int )adapter->max_sds_rings;
  signature = (unsigned int )adapter->max_sds_rings > 1U ? 188128U : 57056U;
  (*(adapter->crb_write))(adapter, (ulong )ctx_addr_sig_regs[port][0], (unsigned int )recv_ctx->phys_addr);
  (*(adapter->crb_write))(adapter, (ulong )ctx_addr_sig_regs[port][2], (unsigned int )(recv_ctx->phys_addr >> 32));
  (*(adapter->crb_write))(adapter, (ulong )ctx_addr_sig_regs[port][1], signature | (u32 )port);
  }
  return (0);
}
}
int netxen_alloc_hw_resources(struct netxen_adapter *adapter )
{
  void *addr ;
  int err ;
  int ring ;
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  struct pci_dev *pdev ;
  struct net_device *netdev ;
  int port ;
  int tmp ;
  {
  {
  err = 0;
  pdev = adapter->pdev;
  netdev = adapter->netdev;
  port = (int )adapter->portnum;
  recv_ctx = & adapter->recv_ctx;
  tx_ring = adapter->tx_ring;
  addr = pci_alloc_consistent(pdev, 196UL, & recv_ctx->phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to allocate hw context\n");
    }
    return (-12);
  } else {
  }
  {
  memset(addr, 0, 192UL);
  recv_ctx->hwctx = (struct netxen_ring_ctx *)addr;
  (recv_ctx->hwctx)->ctx_id = (unsigned int )port;
  (recv_ctx->hwctx)->cmd_consumer_offset = recv_ctx->phys_addr + 192ULL;
  tx_ring->hw_consumer = (__le32 *)addr + 192U;
  addr = pci_alloc_consistent(pdev, (unsigned long )tx_ring->num_desc * 64UL, & tx_ring->phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: failed to allocate tx desc ring\n",
            (char *)(& netdev->name));
    err = -12;
    }
    goto err_out_free;
  } else {
  }
  tx_ring->desc_head = (struct cmd_desc_type0 *)addr;
  ring = 0;
  goto ldv_48537;
  ldv_48536:
  {
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  addr = pci_alloc_consistent(adapter->pdev, (unsigned long )rds_ring->num_desc * 16UL,
                              & rds_ring->phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: failed to allocate rds ring [%d]\n",
            (char *)(& netdev->name), ring);
    err = -12;
    }
    goto err_out_free;
  } else {
  }
  rds_ring->desc_head = (struct rcv_desc *)addr;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    rds_ring->crb_rcv_producer = netxen_get_ioaddr(adapter, recv_crb_registers[port].crb_rcv_producer[ring]);
    }
  } else {
  }
  ring = ring + 1;
  ldv_48537: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48536;
  } else {
  }
  ring = 0;
  goto ldv_48540;
  ldv_48539:
  {
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  addr = pci_alloc_consistent(adapter->pdev, (unsigned long )sds_ring->num_desc * 16UL,
                              & sds_ring->phys_addr);
  }
  if ((unsigned long )addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "%s: failed to allocate sds ring [%d]\n",
            (char *)(& netdev->name), ring);
    err = -12;
    }
    goto err_out_free;
  } else {
  }
  sds_ring->desc_head = (struct status_desc *)addr;
  if ((unsigned int )adapter->ahw.revision_id <= 37U) {
    {
    sds_ring->crb_sts_consumer = netxen_get_ioaddr(adapter, recv_crb_registers[port].crb_sts_consumer[ring]);
    sds_ring->crb_intr_mask = netxen_get_ioaddr(adapter, recv_crb_registers[port].sw_int_mask[ring]);
    }
  } else {
  }
  ring = ring + 1;
  ldv_48540: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_48539;
  } else {
  }
  if ((unsigned int )adapter->ahw.revision_id > 37U) {
    {
    tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& adapter->state));
    }
    if (tmp != 0) {
      goto done;
    } else {
    }
    {
    err = nx_fw_cmd_create_rx_ctx(adapter);
    }
    if (err != 0) {
      goto err_out_free;
    } else {
    }
    {
    err = nx_fw_cmd_create_tx_ctx(adapter);
    }
    if (err != 0) {
      goto err_out_free;
    } else {
    }
  } else {
    {
    err = netxen_init_old_ctx(adapter);
    }
    if (err != 0) {
      goto err_out_free;
    } else {
    }
  }
  done: ;
  return (0);
  err_out_free:
  {
  netxen_free_hw_resources(adapter);
  }
  return (err);
}
}
void netxen_free_hw_resources(struct netxen_adapter *adapter )
{
  struct netxen_recv_context *recv_ctx ;
  struct nx_host_rds_ring *rds_ring ;
  struct nx_host_sds_ring *sds_ring ;
  struct nx_host_tx_ring *tx_ring ;
  int ring ;
  int port ;
  int tmp ;
  {
  port = (int )adapter->portnum;
  if ((unsigned int )adapter->ahw.revision_id > 37U) {
    {
    tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& adapter->state));
    }
    if (tmp == 0) {
      goto done;
    } else {
    }
    {
    nx_fw_cmd_destroy_rx_ctx(adapter);
    nx_fw_cmd_destroy_tx_ctx(adapter);
    }
  } else {
    {
    netxen_pcie_sem_lock(adapter, 5, 0U);
    (*(adapter->crb_write))(adapter, (ulong )ctx_addr_sig_regs[port][1], (u32 )(port | 44224));
    netxen_pcie_sem_unlock(adapter, 5);
    }
  }
  {
  msleep(20U);
  }
  done:
  recv_ctx = & adapter->recv_ctx;
  if ((unsigned long )recv_ctx->hwctx != (unsigned long )((struct netxen_ring_ctx *)0)) {
    {
    pci_free_consistent(adapter->pdev, 196UL, (void *)recv_ctx->hwctx, recv_ctx->phys_addr);
    recv_ctx->hwctx = (struct netxen_ring_ctx *)0;
    }
  } else {
  }
  tx_ring = adapter->tx_ring;
  if ((unsigned long )tx_ring->desc_head != (unsigned long )((struct cmd_desc_type0 *)0)) {
    {
    pci_free_consistent(adapter->pdev, (unsigned long )tx_ring->num_desc * 64UL, (void *)tx_ring->desc_head,
                        tx_ring->phys_addr);
    tx_ring->desc_head = (struct cmd_desc_type0 *)0;
    }
  } else {
  }
  ring = 0;
  goto ldv_48554;
  ldv_48553:
  rds_ring = recv_ctx->rds_rings + (unsigned long )ring;
  if ((unsigned long )rds_ring->desc_head != (unsigned long )((struct rcv_desc *)0)) {
    {
    pci_free_consistent(adapter->pdev, (unsigned long )rds_ring->num_desc * 16UL,
                        (void *)rds_ring->desc_head, rds_ring->phys_addr);
    rds_ring->desc_head = (struct rcv_desc *)0;
    }
  } else {
  }
  ring = ring + 1;
  ldv_48554: ;
  if (ring < (int )adapter->max_rds_rings) {
    goto ldv_48553;
  } else {
  }
  ring = 0;
  goto ldv_48557;
  ldv_48556:
  sds_ring = recv_ctx->sds_rings + (unsigned long )ring;
  if ((unsigned long )sds_ring->desc_head != (unsigned long )((struct status_desc *)0)) {
    {
    pci_free_consistent(adapter->pdev, (unsigned long )sds_ring->num_desc * 16UL,
                        (void *)sds_ring->desc_head, sds_ring->phys_addr);
    sds_ring->desc_head = (struct status_desc *)0;
    }
  } else {
  }
  ring = ring + 1;
  ldv_48557: ;
  if (ring < (int )adapter->max_sds_rings) {
    goto ldv_48556;
  } else {
  }
  return;
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin__xmit_lock_of_netdev_queue = 1;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended__xmit_lock_of_netdev_queue(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_addr_list_lock_of_net_device = 1;
void ldv_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_addr_list_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_nx_host_rds_ring = 1;
void ldv_spin_lock_lock_of_nx_host_rds_ring(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_assume(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_spin_lock_of_nx_host_rds_ring = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_nx_host_rds_ring(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_nx_host_rds_ring == 2);
  ldv_assume(ldv_spin_lock_of_nx_host_rds_ring == 2);
  ldv_spin_lock_of_nx_host_rds_ring = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_nx_host_rds_ring(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_assume(ldv_spin_lock_of_nx_host_rds_ring == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_nx_host_rds_ring = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_nx_host_rds_ring(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_assume(ldv_spin_lock_of_nx_host_rds_ring == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_nx_host_rds_ring(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_nx_host_rds_ring == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_nx_host_rds_ring(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_nx_host_rds_ring();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_nx_host_rds_ring(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_nx_host_rds_ring(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_assume(ldv_spin_lock_of_nx_host_rds_ring == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_nx_host_rds_ring = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_res_counter = 1;
void ldv_spin_lock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  ldv_spin_lock_of_res_counter = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_res_counter == 2);
  ldv_assume(ldv_spin_lock_of_res_counter == 2);
  ldv_spin_lock_of_res_counter = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_res_counter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_res_counter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_res_counter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_res_counter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_res_counter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lru_lock_of_netns_frags = 1;
void ldv_spin_lock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_spin_lru_lock_of_netns_frags = 2;
  }
  return;
}
}
void ldv_spin_unlock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_spin_lru_lock_of_netns_frags = 1;
  }
  return;
}
}
int ldv_spin_trylock_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lru_lock_of_netns_frags == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lru_lock_of_netns_frags();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lru_lock_of_netns_frags(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lru_lock_of_netns_frags(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_mem_lock_of_netxen_hardware_context = 1;
void ldv_spin_lock_mem_lock_of_netxen_hardware_context(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_assume(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_spin_mem_lock_of_netxen_hardware_context = 2;
  }
  return;
}
}
void ldv_spin_unlock_mem_lock_of_netxen_hardware_context(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_mem_lock_of_netxen_hardware_context == 2);
  ldv_assume(ldv_spin_mem_lock_of_netxen_hardware_context == 2);
  ldv_spin_mem_lock_of_netxen_hardware_context = 1;
  }
  return;
}
}
int ldv_spin_trylock_mem_lock_of_netxen_hardware_context(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_assume(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_mem_lock_of_netxen_hardware_context = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_mem_lock_of_netxen_hardware_context(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_assume(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  }
  return;
}
}
int ldv_spin_is_locked_mem_lock_of_netxen_hardware_context(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_mem_lock_of_netxen_hardware_context == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_mem_lock_of_netxen_hardware_context(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_mem_lock_of_netxen_hardware_context();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_mem_lock_of_netxen_hardware_context(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_mem_lock_of_netxen_hardware_context(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_assume(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_mem_lock_of_netxen_hardware_context = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_sk_dst_lock_of_sock = 1;
void ldv_spin_lock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_spin_sk_dst_lock_of_sock = 2;
  }
  return;
}
}
void ldv_spin_unlock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_spin_sk_dst_lock_of_sock = 1;
  }
  return;
}
}
int ldv_spin_trylock_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_sk_dst_lock_of_sock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_sk_dst_lock_of_sock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_sk_dst_lock_of_sock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_sk_dst_lock_of_sock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_sk_dst_lock_of_sock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_clean_lock_of_netxen_adapter = 1;
void ldv_spin_lock_tx_clean_lock_of_netxen_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_assume(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_spin_tx_clean_lock_of_netxen_adapter = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_clean_lock_of_netxen_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_clean_lock_of_netxen_adapter == 2);
  ldv_assume(ldv_spin_tx_clean_lock_of_netxen_adapter == 2);
  ldv_spin_tx_clean_lock_of_netxen_adapter = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_clean_lock_of_netxen_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_assume(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_clean_lock_of_netxen_adapter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_clean_lock_of_netxen_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_assume(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_clean_lock_of_netxen_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_clean_lock_of_netxen_adapter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_clean_lock_of_netxen_adapter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_clean_lock_of_netxen_adapter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_clean_lock_of_netxen_adapter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_tx_clean_lock_of_netxen_adapter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_assume(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_clean_lock_of_netxen_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_global_lock_of_net_device = 1;
void ldv_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_global_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_nx_host_rds_ring == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_res_counter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_mem_lock_of_netxen_hardware_context == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_clean_lock_of_netxen_adapter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_nx_host_rds_ring == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_res_counter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lru_lock_of_netns_frags == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_mem_lock_of_netxen_hardware_context == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_sk_dst_lock_of_sock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_clean_lock_of_netxen_adapter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
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
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
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
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
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
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return (unsigned char *)external_alloc();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_read_lock(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock(rwlock_t *arg0) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _raw_spin_trylock(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_write_lock_irqsave(rwlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_write_unlock_irqrestore(rwlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
__wsum csum_partial(const void *arg0, int arg1, __wsum arg2) {
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_bin_file(struct device *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_bin_file(struct device *arg0, const struct bin_attribute *arg1) {
  return;
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void disable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_stack() {
  return;
}
void enable_irq(unsigned int arg0) {
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
void in_dev_finish_destroy(struct in_device *arg0) {
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
void jiffies_to_timespec(const unsigned long arg0, struct timespec *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
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
void ldv_initialize() {
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
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
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
void *external_alloc(void);
struct net_device *netdev_master_upper_dev_get_rcu(struct net_device *arg0) {
  return (struct net_device *)external_alloc();
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
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_ext_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return (void *)external_alloc();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_inetaddr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdevice_notifier(struct notifier_block *arg0) {
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
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
void *external_alloc(void);
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
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
int __VERIFIER_nondet_int(void);
int unregister_inetaddr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *vlan_dev_real_dev(const struct net_device *arg0) {
  return (struct net_device *)external_alloc();
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
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
