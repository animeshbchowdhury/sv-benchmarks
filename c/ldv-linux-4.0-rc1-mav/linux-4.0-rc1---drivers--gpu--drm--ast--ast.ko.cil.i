typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
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
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
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
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
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
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
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
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
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
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
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
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
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
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
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
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
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
   bool ignore_lockdep ;
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
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
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
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_53 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_53 nodemask_t;
struct path;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_118 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_118 mm_context_t;
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
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
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
   bool active ;
   bool autosleep_enabled ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_151 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_152 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField34 ;
   struct __anonstruct____missing_field_name_152 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_153 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_155 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_159 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_158 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_159 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_156 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_157 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField38 ;
   union __anonunion____missing_field_name_156 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_161 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_162 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_160 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_161 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_162 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_163 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_153 __annonCompField37 ;
   struct __anonstruct____missing_field_name_154 __annonCompField43 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   union __anonunion____missing_field_name_163 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_164 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_164 shared ;
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
   u32 vmacache_seqnum ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
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
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_173 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_173 _addr_bnd ;
};
struct __anonstruct__sigpoll_174 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_175 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_174 _sigpoll ;
   struct __anonstruct__sigsys_175 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_180 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_181 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_183 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_182 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_183 __annonCompField52 ;
};
union __anonunion_type_data_184 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_186 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_185 {
   union __anonunion_payload_186 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_180 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_181 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_182 __annonCompField53 ;
   union __anonunion_type_data_184 type_data ;
   union __anonunion____missing_field_name_185 __annonCompField54 ;
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
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
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
   seqlock_t stats_lock ;
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
struct backing_dev_info;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
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
   int depth ;
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
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
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
   struct sysv_shm sysvshm ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
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
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_191 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned char ignore_hotplug : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char no_64bit_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   unsigned char irq_managed : 1 ;
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
   union __anonunion____missing_field_name_191 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   unsigned char is_added : 1 ;
};
struct pci_ops {
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
   void (*reset_notify)(struct pci_dev * , bool ) ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
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
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_193 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_192 {
   struct __anonstruct____missing_field_name_193 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_192 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_195 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_194 {
   struct __anonstruct____missing_field_name_195 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_194 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_196 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_196 d_u ;
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
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_198 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_197 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
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
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct __anonstruct_kprojid_t_200 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_200 kprojid_t;
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
union __anonunion____missing_field_name_201 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_201 __annonCompField66 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
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
union __anonunion____missing_field_name_204 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_205 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_206 {
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
   union __anonunion____missing_field_name_204 __annonCompField67 ;
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
   union __anonunion____missing_field_name_205 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_206 __annonCompField69 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_207 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_207 f_u ;
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
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
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
struct __anonstruct_afs_209 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_208 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_209 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_208 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion____missing_field_name_218 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_218 __annonCompField73 ;
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
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
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
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
enum chipset_type {
    NOT_SUPPORTED = 0,
    SUPPORTED = 1
} ;
struct agp_version {
   u16 major ;
   u16 minor ;
};
struct agp_kern_info {
   struct agp_version version ;
   struct pci_dev *device ;
   enum chipset_type chipset ;
   unsigned long mode ;
   unsigned long aper_base ;
   size_t aper_size ;
   int max_memory ;
   int current_memory ;
   bool cant_use_aperture ;
   unsigned long page_mask ;
   struct vm_operations_struct const *vm_ops ;
};
struct agp_bridge_data;
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef unsigned int drm_magic_t;
struct drm_clip_rect {
   unsigned short x1 ;
   unsigned short y1 ;
   unsigned short x2 ;
   unsigned short y2 ;
};
struct drm_hw_lock {
   unsigned int volatile lock ;
   char padding[60U] ;
};
struct drm_mode_fb_cmd2 {
   __u32 fb_id ;
   __u32 width ;
   __u32 height ;
   __u32 pixel_format ;
   __u32 flags ;
   __u32 handles[4U] ;
   __u32 pitches[4U] ;
   __u32 offsets[4U] ;
};
struct drm_mode_create_dumb {
   uint32_t height ;
   uint32_t width ;
   uint32_t bpp ;
   uint32_t flags ;
   uint32_t handle ;
   uint32_t pitch ;
   uint64_t size ;
};
struct drm_event {
   __u32 type ;
   __u32 length ;
};
struct drm_event_vblank {
   struct drm_event base ;
   __u64 user_data ;
   __u32 tv_sec ;
   __u32 tv_usec ;
   __u32 sequence ;
   __u32 reserved ;
};
struct drm_device;
struct drm_file;
struct drm_agp_head {
   struct agp_kern_info agp_info ;
   struct list_head memory ;
   unsigned long mode ;
   struct agp_bridge_data *bridge ;
   int enabled ;
   int acquired ;
   unsigned long base ;
   int agp_mtrr ;
   int cant_use_aperture ;
   unsigned long page_mask ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct fb_fix_screeninfo {
   char id[16U] ;
   unsigned long smem_start ;
   __u32 smem_len ;
   __u32 type ;
   __u32 type_aux ;
   __u32 visual ;
   __u16 xpanstep ;
   __u16 ypanstep ;
   __u16 ywrapstep ;
   __u32 line_length ;
   unsigned long mmio_start ;
   __u32 mmio_len ;
   __u32 accel ;
   __u16 capabilities ;
   __u16 reserved[2U] ;
};
struct fb_bitfield {
   __u32 offset ;
   __u32 length ;
   __u32 msb_right ;
};
struct fb_var_screeninfo {
   __u32 xres ;
   __u32 yres ;
   __u32 xres_virtual ;
   __u32 yres_virtual ;
   __u32 xoffset ;
   __u32 yoffset ;
   __u32 bits_per_pixel ;
   __u32 grayscale ;
   struct fb_bitfield red ;
   struct fb_bitfield green ;
   struct fb_bitfield blue ;
   struct fb_bitfield transp ;
   __u32 nonstd ;
   __u32 activate ;
   __u32 height ;
   __u32 width ;
   __u32 accel_flags ;
   __u32 pixclock ;
   __u32 left_margin ;
   __u32 right_margin ;
   __u32 upper_margin ;
   __u32 lower_margin ;
   __u32 hsync_len ;
   __u32 vsync_len ;
   __u32 sync ;
   __u32 vmode ;
   __u32 rotate ;
   __u32 colorspace ;
   __u32 reserved[4U] ;
};
struct fb_cmap {
   __u32 start ;
   __u32 len ;
   __u16 *red ;
   __u16 *green ;
   __u16 *blue ;
   __u16 *transp ;
};
struct fb_copyarea {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 sx ;
   __u32 sy ;
};
struct fb_fillrect {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 color ;
   __u32 rop ;
};
struct fb_image {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 fg_color ;
   __u32 bg_color ;
   __u8 depth ;
   char const *data ;
   struct fb_cmap cmap ;
};
struct fbcurpos {
   __u16 x ;
   __u16 y ;
};
struct fb_cursor {
   __u16 set ;
   __u16 enable ;
   __u16 rop ;
   char const *mask ;
   struct fbcurpos hot ;
   struct fb_image image ;
};
enum backlight_type {
    BACKLIGHT_RAW = 1,
    BACKLIGHT_PLATFORM = 2,
    BACKLIGHT_FIRMWARE = 3,
    BACKLIGHT_TYPE_MAX = 4
} ;
struct backlight_device;
struct fb_info;
struct backlight_ops {
   unsigned int options ;
   int (*update_status)(struct backlight_device * ) ;
   int (*get_brightness)(struct backlight_device * ) ;
   int (*check_fb)(struct backlight_device * , struct fb_info * ) ;
};
struct backlight_properties {
   int brightness ;
   int max_brightness ;
   int power ;
   int fb_blank ;
   enum backlight_type type ;
   unsigned int state ;
};
struct backlight_device {
   struct backlight_properties props ;
   struct mutex update_lock ;
   struct mutex ops_lock ;
   struct backlight_ops const *ops ;
   struct notifier_block fb_notif ;
   struct list_head entry ;
   struct device dev ;
   bool fb_bl_on[32U] ;
   int use_count ;
};
struct fb_chroma {
   __u32 redx ;
   __u32 greenx ;
   __u32 bluex ;
   __u32 whitex ;
   __u32 redy ;
   __u32 greeny ;
   __u32 bluey ;
   __u32 whitey ;
};
struct fb_videomode;
struct fb_monspecs {
   struct fb_chroma chroma ;
   struct fb_videomode *modedb ;
   __u8 manufacturer[4U] ;
   __u8 monitor[14U] ;
   __u8 serial_no[14U] ;
   __u8 ascii[14U] ;
   __u32 modedb_len ;
   __u32 model ;
   __u32 serial ;
   __u32 year ;
   __u32 week ;
   __u32 hfmin ;
   __u32 hfmax ;
   __u32 dclkmin ;
   __u32 dclkmax ;
   __u16 input ;
   __u16 dpms ;
   __u16 signal ;
   __u16 vfmin ;
   __u16 vfmax ;
   __u16 gamma ;
   unsigned char gtf : 1 ;
   __u16 misc ;
   __u8 version ;
   __u8 revision ;
   __u8 max_x ;
   __u8 max_y ;
};
struct fb_blit_caps {
   u32 x ;
   u32 y ;
   u32 len ;
   u32 flags ;
};
struct fb_pixmap {
   u8 *addr ;
   u32 size ;
   u32 offset ;
   u32 buf_align ;
   u32 scan_align ;
   u32 access_align ;
   u32 flags ;
   u32 blit_x ;
   u32 blit_y ;
   void (*writeio)(struct fb_info * , void * , void * , unsigned int ) ;
   void (*readio)(struct fb_info * , void * , void * , unsigned int ) ;
};
struct fb_deferred_io {
   unsigned long delay ;
   struct mutex lock ;
   struct list_head pagelist ;
   void (*first_io)(struct fb_info * ) ;
   void (*deferred_io)(struct fb_info * , struct list_head * ) ;
};
struct fb_ops {
   struct module *owner ;
   int (*fb_open)(struct fb_info * , int ) ;
   int (*fb_release)(struct fb_info * , int ) ;
   ssize_t (*fb_read)(struct fb_info * , char * , size_t , loff_t * ) ;
   ssize_t (*fb_write)(struct fb_info * , char const * , size_t , loff_t * ) ;
   int (*fb_check_var)(struct fb_var_screeninfo * , struct fb_info * ) ;
   int (*fb_set_par)(struct fb_info * ) ;
   int (*fb_setcolreg)(unsigned int , unsigned int , unsigned int , unsigned int ,
                       unsigned int , struct fb_info * ) ;
   int (*fb_setcmap)(struct fb_cmap * , struct fb_info * ) ;
   int (*fb_blank)(int , struct fb_info * ) ;
   int (*fb_pan_display)(struct fb_var_screeninfo * , struct fb_info * ) ;
   void (*fb_fillrect)(struct fb_info * , struct fb_fillrect const * ) ;
   void (*fb_copyarea)(struct fb_info * , struct fb_copyarea const * ) ;
   void (*fb_imageblit)(struct fb_info * , struct fb_image const * ) ;
   int (*fb_cursor)(struct fb_info * , struct fb_cursor * ) ;
   void (*fb_rotate)(struct fb_info * , int ) ;
   int (*fb_sync)(struct fb_info * ) ;
   int (*fb_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_compat_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_mmap)(struct fb_info * , struct vm_area_struct * ) ;
   void (*fb_get_caps)(struct fb_info * , struct fb_blit_caps * , struct fb_var_screeninfo * ) ;
   void (*fb_destroy)(struct fb_info * ) ;
   int (*fb_debug_enter)(struct fb_info * ) ;
   int (*fb_debug_leave)(struct fb_info * ) ;
};
struct fb_tilemap {
   __u32 width ;
   __u32 height ;
   __u32 depth ;
   __u32 length ;
   __u8 const *data ;
};
struct fb_tilerect {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 index ;
   __u32 fg ;
   __u32 bg ;
   __u32 rop ;
};
struct fb_tilearea {
   __u32 sx ;
   __u32 sy ;
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
};
struct fb_tileblit {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 fg ;
   __u32 bg ;
   __u32 length ;
   __u32 *indices ;
};
struct fb_tilecursor {
   __u32 sx ;
   __u32 sy ;
   __u32 mode ;
   __u32 shape ;
   __u32 fg ;
   __u32 bg ;
};
struct fb_tile_ops {
   void (*fb_settile)(struct fb_info * , struct fb_tilemap * ) ;
   void (*fb_tilecopy)(struct fb_info * , struct fb_tilearea * ) ;
   void (*fb_tilefill)(struct fb_info * , struct fb_tilerect * ) ;
   void (*fb_tileblit)(struct fb_info * , struct fb_tileblit * ) ;
   void (*fb_tilecursor)(struct fb_info * , struct fb_tilecursor * ) ;
   int (*fb_get_tilemax)(struct fb_info * ) ;
};
struct aperture {
   resource_size_t base ;
   resource_size_t size ;
};
struct apertures_struct {
   unsigned int count ;
   struct aperture ranges[0U] ;
};
struct fb_info {
   atomic_t count ;
   int node ;
   int flags ;
   struct mutex lock ;
   struct mutex mm_lock ;
   struct fb_var_screeninfo var ;
   struct fb_fix_screeninfo fix ;
   struct fb_monspecs monspecs ;
   struct work_struct queue ;
   struct fb_pixmap pixmap ;
   struct fb_pixmap sprite ;
   struct fb_cmap cmap ;
   struct list_head modelist ;
   struct fb_videomode *mode ;
   struct backlight_device *bl_dev ;
   struct mutex bl_curve_mutex ;
   u8 bl_curve[128U] ;
   struct delayed_work deferred_work ;
   struct fb_deferred_io *fbdefio ;
   struct fb_ops *fbops ;
   struct device *device ;
   struct device *dev ;
   int class_flag ;
   struct fb_tile_ops *tileops ;
   char *screen_base ;
   unsigned long screen_size ;
   void *pseudo_palette ;
   u32 state ;
   void *fbcon_par ;
   void *par ;
   struct apertures_struct *apertures ;
   bool skip_vt_switch ;
};
struct fb_videomode {
   char const *name ;
   u32 refresh ;
   u32 xres ;
   u32 yres ;
   u32 pixclock ;
   u32 left_margin ;
   u32 right_margin ;
   u32 upper_margin ;
   u32 lower_margin ;
   u32 hsync_len ;
   u32 vsync_len ;
   u32 sync ;
   u32 vmode ;
   u32 flag ;
};
enum hdmi_picture_aspect {
    HDMI_PICTURE_ASPECT_NONE = 0,
    HDMI_PICTURE_ASPECT_4_3 = 1,
    HDMI_PICTURE_ASPECT_16_9 = 2,
    HDMI_PICTURE_ASPECT_RESERVED = 3
} ;
struct ww_class {
   atomic_long_t stamp ;
   struct lock_class_key acquire_key ;
   struct lock_class_key mutex_key ;
   char const *acquire_name ;
   char const *mutex_name ;
};
struct ww_mutex;
struct ww_acquire_ctx {
   struct task_struct *task ;
   unsigned long stamp ;
   unsigned int acquired ;
   unsigned int done_acquire ;
   struct ww_class *ww_class ;
   struct ww_mutex *contending_lock ;
   struct lockdep_map dep_map ;
   unsigned int deadlock_inject_interval ;
   unsigned int deadlock_inject_countdown ;
};
struct ww_mutex {
   struct mutex base ;
   struct ww_acquire_ctx *ctx ;
   struct ww_class *ww_class ;
};
struct drm_modeset_lock;
struct drm_modeset_acquire_ctx {
   struct ww_acquire_ctx ww_ctx ;
   struct drm_modeset_lock *contended ;
   struct list_head locked ;
   bool trylock_only ;
};
struct drm_modeset_lock {
   struct ww_mutex mutex ;
   struct list_head head ;
};
struct drm_crtc;
struct drm_plane;
struct drm_mode_set;
struct drm_framebuffer;
struct drm_object_properties;
struct fence;
struct drm_mode_object {
   uint32_t id ;
   uint32_t type ;
   struct drm_object_properties *properties ;
};
struct drm_property;
struct drm_object_properties {
   int count ;
   int atomic_count ;
   struct drm_property *properties[24U] ;
   uint64_t values[24U] ;
};
enum drm_connector_force {
    DRM_FORCE_UNSPECIFIED = 0,
    DRM_FORCE_OFF = 1,
    DRM_FORCE_ON = 2,
    DRM_FORCE_ON_DIGITAL = 3
} ;
enum drm_mode_status {
    MODE_OK = 0,
    MODE_HSYNC = 1,
    MODE_VSYNC = 2,
    MODE_H_ILLEGAL = 3,
    MODE_V_ILLEGAL = 4,
    MODE_BAD_WIDTH = 5,
    MODE_NOMODE = 6,
    MODE_NO_INTERLACE = 7,
    MODE_NO_DBLESCAN = 8,
    MODE_NO_VSCAN = 9,
    MODE_MEM = 10,
    MODE_VIRTUAL_X = 11,
    MODE_VIRTUAL_Y = 12,
    MODE_MEM_VIRT = 13,
    MODE_NOCLOCK = 14,
    MODE_CLOCK_HIGH = 15,
    MODE_CLOCK_LOW = 16,
    MODE_CLOCK_RANGE = 17,
    MODE_BAD_HVALUE = 18,
    MODE_BAD_VVALUE = 19,
    MODE_BAD_VSCAN = 20,
    MODE_HSYNC_NARROW = 21,
    MODE_HSYNC_WIDE = 22,
    MODE_HBLANK_NARROW = 23,
    MODE_HBLANK_WIDE = 24,
    MODE_VSYNC_NARROW = 25,
    MODE_VSYNC_WIDE = 26,
    MODE_VBLANK_NARROW = 27,
    MODE_VBLANK_WIDE = 28,
    MODE_PANEL = 29,
    MODE_INTERLACE_WIDTH = 30,
    MODE_ONE_WIDTH = 31,
    MODE_ONE_HEIGHT = 32,
    MODE_ONE_SIZE = 33,
    MODE_NO_REDUCED = 34,
    MODE_NO_STEREO = 35,
    MODE_UNVERIFIED = -3,
    MODE_BAD = -2,
    MODE_ERROR = -1
} ;
struct drm_display_mode {
   struct list_head head ;
   struct drm_mode_object base ;
   char name[32U] ;
   enum drm_mode_status status ;
   unsigned int type ;
   int clock ;
   int hdisplay ;
   int hsync_start ;
   int hsync_end ;
   int htotal ;
   int hskew ;
   int vdisplay ;
   int vsync_start ;
   int vsync_end ;
   int vtotal ;
   int vscan ;
   unsigned int flags ;
   int width_mm ;
   int height_mm ;
   int crtc_clock ;
   int crtc_hdisplay ;
   int crtc_hblank_start ;
   int crtc_hblank_end ;
   int crtc_hsync_start ;
   int crtc_hsync_end ;
   int crtc_htotal ;
   int crtc_hskew ;
   int crtc_vdisplay ;
   int crtc_vblank_start ;
   int crtc_vblank_end ;
   int crtc_vsync_start ;
   int crtc_vsync_end ;
   int crtc_vtotal ;
   int *private ;
   int private_flags ;
   int vrefresh ;
   int hsync ;
   enum hdmi_picture_aspect picture_aspect_ratio ;
};
struct drm_cmdline_mode {
   bool specified ;
   bool refresh_specified ;
   bool bpp_specified ;
   int xres ;
   int yres ;
   int bpp ;
   int refresh ;
   bool rb ;
   bool interlace ;
   bool cvt ;
   bool margins ;
   enum drm_connector_force force ;
};
struct drm_connector;
enum drm_connector_status {
    connector_status_connected = 1,
    connector_status_disconnected = 2,
    connector_status_unknown = 3
} ;
enum subpixel_order {
    SubPixelUnknown = 0,
    SubPixelHorizontalRGB = 1,
    SubPixelHorizontalBGR = 2,
    SubPixelVerticalRGB = 3,
    SubPixelVerticalBGR = 4,
    SubPixelNone = 5
} ;
struct drm_display_info {
   char name[32U] ;
   unsigned int width_mm ;
   unsigned int height_mm ;
   unsigned int min_vfreq ;
   unsigned int max_vfreq ;
   unsigned int min_hfreq ;
   unsigned int max_hfreq ;
   unsigned int pixel_clock ;
   unsigned int bpc ;
   enum subpixel_order subpixel_order ;
   u32 color_formats ;
   u32 const *bus_formats ;
   unsigned int num_bus_formats ;
   u8 edid_hdmi_dc_modes ;
   u8 cea_rev ;
};
struct drm_tile_group {
   struct kref refcount ;
   struct drm_device *dev ;
   int id ;
   u8 group_data[8U] ;
};
struct drm_framebuffer_funcs {
   void (*destroy)(struct drm_framebuffer * ) ;
   int (*create_handle)(struct drm_framebuffer * , struct drm_file * , unsigned int * ) ;
   int (*dirty)(struct drm_framebuffer * , struct drm_file * , unsigned int , unsigned int ,
                struct drm_clip_rect * , unsigned int ) ;
};
struct drm_framebuffer {
   struct drm_device *dev ;
   struct kref refcount ;
   struct list_head head ;
   struct drm_mode_object base ;
   struct drm_framebuffer_funcs const *funcs ;
   unsigned int pitches[4U] ;
   unsigned int offsets[4U] ;
   unsigned int width ;
   unsigned int height ;
   unsigned int depth ;
   int bits_per_pixel ;
   int flags ;
   uint32_t pixel_format ;
   struct list_head filp_head ;
   void *helper_private ;
};
struct drm_property_blob {
   struct drm_mode_object base ;
   struct list_head head ;
   size_t length ;
   unsigned char data[] ;
};
struct drm_property {
   struct list_head head ;
   struct drm_mode_object base ;
   uint32_t flags ;
   char name[32U] ;
   uint32_t num_values ;
   uint64_t *values ;
   struct drm_device *dev ;
   struct list_head enum_list ;
};
struct drm_encoder;
struct drm_pending_vblank_event;
struct drm_bridge;
struct drm_atomic_state;
struct drm_crtc_state {
   struct drm_crtc *crtc ;
   bool enable ;
   bool active ;
   bool planes_changed ;
   bool mode_changed ;
   bool active_changed ;
   u32 plane_mask ;
   u32 last_vblank_count ;
   struct drm_display_mode adjusted_mode ;
   struct drm_display_mode mode ;
   struct drm_pending_vblank_event *event ;
   struct drm_atomic_state *state ;
};
struct drm_crtc_funcs {
   void (*save)(struct drm_crtc * ) ;
   void (*restore)(struct drm_crtc * ) ;
   void (*reset)(struct drm_crtc * ) ;
   int (*cursor_set)(struct drm_crtc * , struct drm_file * , uint32_t , uint32_t ,
                     uint32_t ) ;
   int (*cursor_set2)(struct drm_crtc * , struct drm_file * , uint32_t , uint32_t ,
                      uint32_t , int32_t , int32_t ) ;
   int (*cursor_move)(struct drm_crtc * , int , int ) ;
   void (*gamma_set)(struct drm_crtc * , u16 * , u16 * , u16 * , uint32_t , uint32_t ) ;
   void (*destroy)(struct drm_crtc * ) ;
   int (*set_config)(struct drm_mode_set * ) ;
   int (*page_flip)(struct drm_crtc * , struct drm_framebuffer * , struct drm_pending_vblank_event * ,
                    uint32_t ) ;
   int (*set_property)(struct drm_crtc * , struct drm_property * , uint64_t ) ;
   struct drm_crtc_state *(*atomic_duplicate_state)(struct drm_crtc * ) ;
   void (*atomic_destroy_state)(struct drm_crtc * , struct drm_crtc_state * ) ;
   int (*atomic_set_property)(struct drm_crtc * , struct drm_crtc_state * , struct drm_property * ,
                              uint64_t ) ;
   int (*atomic_get_property)(struct drm_crtc * , struct drm_crtc_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
struct drm_crtc {
   struct drm_device *dev ;
   struct device_node *port ;
   struct list_head head ;
   struct drm_modeset_lock mutex ;
   struct drm_mode_object base ;
   struct drm_plane *primary ;
   struct drm_plane *cursor ;
   int cursor_x ;
   int cursor_y ;
   bool enabled ;
   struct drm_display_mode mode ;
   struct drm_display_mode hwmode ;
   bool invert_dimensions ;
   int x ;
   int y ;
   struct drm_crtc_funcs const *funcs ;
   uint32_t gamma_size ;
   uint16_t *gamma_store ;
   int framedur_ns ;
   int linedur_ns ;
   int pixeldur_ns ;
   void *helper_private ;
   struct drm_object_properties properties ;
   struct drm_crtc_state *state ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
};
struct drm_connector_state {
   struct drm_connector *connector ;
   struct drm_crtc *crtc ;
   struct drm_encoder *best_encoder ;
   struct drm_atomic_state *state ;
};
struct drm_connector_funcs {
   void (*dpms)(struct drm_connector * , int ) ;
   void (*save)(struct drm_connector * ) ;
   void (*restore)(struct drm_connector * ) ;
   void (*reset)(struct drm_connector * ) ;
   enum drm_connector_status (*detect)(struct drm_connector * , bool ) ;
   int (*fill_modes)(struct drm_connector * , uint32_t , uint32_t ) ;
   int (*set_property)(struct drm_connector * , struct drm_property * , uint64_t ) ;
   void (*destroy)(struct drm_connector * ) ;
   void (*force)(struct drm_connector * ) ;
   struct drm_connector_state *(*atomic_duplicate_state)(struct drm_connector * ) ;
   void (*atomic_destroy_state)(struct drm_connector * , struct drm_connector_state * ) ;
   int (*atomic_set_property)(struct drm_connector * , struct drm_connector_state * ,
                              struct drm_property * , uint64_t ) ;
   int (*atomic_get_property)(struct drm_connector * , struct drm_connector_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
struct drm_encoder_funcs {
   void (*reset)(struct drm_encoder * ) ;
   void (*destroy)(struct drm_encoder * ) ;
};
struct drm_encoder {
   struct drm_device *dev ;
   struct list_head head ;
   struct drm_mode_object base ;
   char *name ;
   int encoder_type ;
   uint32_t possible_crtcs ;
   uint32_t possible_clones ;
   struct drm_crtc *crtc ;
   struct drm_bridge *bridge ;
   struct drm_encoder_funcs const *funcs ;
   void *helper_private ;
};
struct drm_connector {
   struct drm_device *dev ;
   struct device *kdev ;
   struct device_attribute *attr ;
   struct list_head head ;
   struct drm_mode_object base ;
   char *name ;
   int connector_type ;
   int connector_type_id ;
   bool interlace_allowed ;
   bool doublescan_allowed ;
   bool stereo_allowed ;
   struct list_head modes ;
   enum drm_connector_status status ;
   struct list_head probed_modes ;
   struct drm_display_info display_info ;
   struct drm_connector_funcs const *funcs ;
   struct drm_property_blob *edid_blob_ptr ;
   struct drm_object_properties properties ;
   struct drm_property_blob *path_blob_ptr ;
   struct drm_property_blob *tile_blob_ptr ;
   uint8_t polled ;
   int dpms ;
   void *helper_private ;
   struct drm_cmdline_mode cmdline_mode ;
   enum drm_connector_force force ;
   bool override_edid ;
   uint32_t encoder_ids[3U] ;
   struct drm_encoder *encoder ;
   uint8_t eld[128U] ;
   bool dvi_dual ;
   int max_tmds_clock ;
   bool latency_present[2U] ;
   int video_latency[2U] ;
   int audio_latency[2U] ;
   int null_edid_counter ;
   unsigned int bad_edid_counter ;
   struct dentry *debugfs_entry ;
   struct drm_connector_state *state ;
   bool has_tile ;
   struct drm_tile_group *tile_group ;
   bool tile_is_single_monitor ;
   uint8_t num_h_tile ;
   uint8_t num_v_tile ;
   uint8_t tile_h_loc ;
   uint8_t tile_v_loc ;
   uint16_t tile_h_size ;
   uint16_t tile_v_size ;
};
struct drm_plane_state {
   struct drm_plane *plane ;
   struct drm_crtc *crtc ;
   struct drm_framebuffer *fb ;
   struct fence *fence ;
   int32_t crtc_x ;
   int32_t crtc_y ;
   uint32_t crtc_w ;
   uint32_t crtc_h ;
   uint32_t src_x ;
   uint32_t src_y ;
   uint32_t src_h ;
   uint32_t src_w ;
   unsigned int rotation ;
   struct drm_atomic_state *state ;
};
struct drm_plane_funcs {
   int (*update_plane)(struct drm_plane * , struct drm_crtc * , struct drm_framebuffer * ,
                       int , int , unsigned int , unsigned int , uint32_t , uint32_t ,
                       uint32_t , uint32_t ) ;
   int (*disable_plane)(struct drm_plane * ) ;
   void (*destroy)(struct drm_plane * ) ;
   void (*reset)(struct drm_plane * ) ;
   int (*set_property)(struct drm_plane * , struct drm_property * , uint64_t ) ;
   struct drm_plane_state *(*atomic_duplicate_state)(struct drm_plane * ) ;
   void (*atomic_destroy_state)(struct drm_plane * , struct drm_plane_state * ) ;
   int (*atomic_set_property)(struct drm_plane * , struct drm_plane_state * , struct drm_property * ,
                              uint64_t ) ;
   int (*atomic_get_property)(struct drm_plane * , struct drm_plane_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
enum drm_plane_type {
    DRM_PLANE_TYPE_OVERLAY = 0,
    DRM_PLANE_TYPE_PRIMARY = 1,
    DRM_PLANE_TYPE_CURSOR = 2
} ;
struct drm_plane {
   struct drm_device *dev ;
   struct list_head head ;
   struct drm_modeset_lock mutex ;
   struct drm_mode_object base ;
   uint32_t possible_crtcs ;
   uint32_t *format_types ;
   uint32_t format_count ;
   struct drm_crtc *crtc ;
   struct drm_framebuffer *fb ;
   struct drm_framebuffer *old_fb ;
   struct drm_plane_funcs const *funcs ;
   struct drm_object_properties properties ;
   enum drm_plane_type type ;
   void *helper_private ;
   struct drm_plane_state *state ;
};
struct drm_bridge_funcs {
   int (*attach)(struct drm_bridge * ) ;
   bool (*mode_fixup)(struct drm_bridge * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   void (*disable)(struct drm_bridge * ) ;
   void (*post_disable)(struct drm_bridge * ) ;
   void (*mode_set)(struct drm_bridge * , struct drm_display_mode * , struct drm_display_mode * ) ;
   void (*pre_enable)(struct drm_bridge * ) ;
   void (*enable)(struct drm_bridge * ) ;
};
struct drm_bridge {
   struct drm_device *dev ;
   struct drm_encoder *encoder ;
   struct list_head list ;
   struct drm_bridge_funcs const *funcs ;
   void *driver_private ;
};
struct drm_atomic_state {
   struct drm_device *dev ;
   bool allow_modeset ;
   bool legacy_cursor_update ;
   struct drm_plane **planes ;
   struct drm_plane_state **plane_states ;
   struct drm_crtc **crtcs ;
   struct drm_crtc_state **crtc_states ;
   int num_connector ;
   struct drm_connector **connectors ;
   struct drm_connector_state **connector_states ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
};
struct drm_mode_set {
   struct drm_framebuffer *fb ;
   struct drm_crtc *crtc ;
   struct drm_display_mode *mode ;
   uint32_t x ;
   uint32_t y ;
   struct drm_connector **connectors ;
   size_t num_connectors ;
};
struct drm_mode_config_funcs {
   struct drm_framebuffer *(*fb_create)(struct drm_device * , struct drm_file * ,
                                        struct drm_mode_fb_cmd2 * ) ;
   void (*output_poll_changed)(struct drm_device * ) ;
   int (*atomic_check)(struct drm_device * , struct drm_atomic_state * ) ;
   int (*atomic_commit)(struct drm_device * , struct drm_atomic_state * , bool ) ;
};
struct drm_mode_group {
   uint32_t num_crtcs ;
   uint32_t num_encoders ;
   uint32_t num_connectors ;
   uint32_t *id_list ;
};
struct drm_mode_config {
   struct mutex mutex ;
   struct drm_modeset_lock connection_mutex ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
   struct mutex idr_mutex ;
   struct idr crtc_idr ;
   struct idr tile_idr ;
   struct mutex fb_lock ;
   int num_fb ;
   struct list_head fb_list ;
   int num_connector ;
   struct list_head connector_list ;
   int num_encoder ;
   struct list_head encoder_list ;
   int num_overlay_plane ;
   int num_total_plane ;
   struct list_head plane_list ;
   int num_crtc ;
   struct list_head crtc_list ;
   struct list_head property_list ;
   int min_width ;
   int min_height ;
   int max_width ;
   int max_height ;
   struct drm_mode_config_funcs const *funcs ;
   resource_size_t fb_base ;
   bool poll_enabled ;
   bool poll_running ;
   bool delayed_event ;
   struct delayed_work output_poll_work ;
   struct list_head property_blob_list ;
   struct drm_property *edid_property ;
   struct drm_property *dpms_property ;
   struct drm_property *path_property ;
   struct drm_property *tile_property ;
   struct drm_property *plane_type_property ;
   struct drm_property *rotation_property ;
   struct drm_property *prop_src_x ;
   struct drm_property *prop_src_y ;
   struct drm_property *prop_src_w ;
   struct drm_property *prop_src_h ;
   struct drm_property *prop_crtc_x ;
   struct drm_property *prop_crtc_y ;
   struct drm_property *prop_crtc_w ;
   struct drm_property *prop_crtc_h ;
   struct drm_property *prop_fb_id ;
   struct drm_property *prop_crtc_id ;
   struct drm_property *prop_active ;
   struct drm_property *dvi_i_subconnector_property ;
   struct drm_property *dvi_i_select_subconnector_property ;
   struct drm_property *tv_subconnector_property ;
   struct drm_property *tv_select_subconnector_property ;
   struct drm_property *tv_mode_property ;
   struct drm_property *tv_left_margin_property ;
   struct drm_property *tv_right_margin_property ;
   struct drm_property *tv_top_margin_property ;
   struct drm_property *tv_bottom_margin_property ;
   struct drm_property *tv_brightness_property ;
   struct drm_property *tv_contrast_property ;
   struct drm_property *tv_flicker_reduction_property ;
   struct drm_property *tv_overscan_property ;
   struct drm_property *tv_saturation_property ;
   struct drm_property *tv_hue_property ;
   struct drm_property *scaling_mode_property ;
   struct drm_property *aspect_ratio_property ;
   struct drm_property *dirty_info_property ;
   struct drm_property *suggested_x_property ;
   struct drm_property *suggested_y_property ;
   uint32_t preferred_depth ;
   uint32_t prefer_shadow ;
   bool async_page_flip ;
   uint32_t cursor_width ;
   uint32_t cursor_height ;
};
struct drm_open_hash {
   struct hlist_head *table ;
   u8 order ;
};
struct drm_mm;
struct drm_mm_node {
   struct list_head node_list ;
   struct list_head hole_stack ;
   unsigned char hole_follows : 1 ;
   unsigned char scanned_block : 1 ;
   unsigned char scanned_prev_free : 1 ;
   unsigned char scanned_next_free : 1 ;
   unsigned char scanned_preceeds_hole : 1 ;
   unsigned char allocated : 1 ;
   unsigned long color ;
   unsigned long start ;
   unsigned long size ;
   struct drm_mm *mm ;
};
struct drm_mm {
   struct list_head hole_stack ;
   struct drm_mm_node head_node ;
   unsigned char scan_check_range : 1 ;
   unsigned int scan_alignment ;
   unsigned long scan_color ;
   unsigned long scan_size ;
   unsigned long scan_hit_start ;
   unsigned long scan_hit_end ;
   unsigned int scanned_blocks ;
   unsigned long scan_start ;
   unsigned long scan_end ;
   struct drm_mm_node *prev_scanned_node ;
   void (*color_adjust)(struct drm_mm_node * , unsigned long , unsigned long * ,
                        unsigned long * ) ;
};
struct drm_vma_offset_node {
   rwlock_t vm_lock ;
   struct drm_mm_node vm_node ;
   struct rb_node vm_rb ;
   struct rb_root vm_files ;
};
struct drm_vma_offset_manager {
   rwlock_t vm_lock ;
   struct rb_root vm_addr_space_rb ;
   struct drm_mm vm_addr_space_mm ;
};
struct drm_local_map;
struct drm_device_dma;
struct drm_gem_object;
struct reservation_object;
struct dma_buf_attachment;
typedef int drm_ioctl_t(struct drm_device * , void * , struct drm_file * );
struct drm_ioctl_desc {
   unsigned int cmd ;
   int flags ;
   drm_ioctl_t *func ;
   unsigned int cmd_drv ;
   char const *name ;
};
struct drm_pending_event {
   struct drm_event *event ;
   struct list_head link ;
   struct drm_file *file_priv ;
   pid_t pid ;
   void (*destroy)(struct drm_pending_event * ) ;
};
struct drm_prime_file_private {
   struct list_head head ;
   struct mutex lock ;
};
struct drm_minor;
struct drm_master;
struct drm_file {
   unsigned char authenticated : 1 ;
   unsigned char is_master : 1 ;
   unsigned char stereo_allowed : 1 ;
   unsigned char universal_planes : 1 ;
   unsigned char atomic : 1 ;
   struct pid *pid ;
   kuid_t uid ;
   drm_magic_t magic ;
   struct list_head lhead ;
   struct drm_minor *minor ;
   unsigned long lock_count ;
   struct idr object_idr ;
   spinlock_t table_lock ;
   struct file *filp ;
   void *driver_priv ;
   struct drm_master *master ;
   struct list_head fbs ;
   struct mutex fbs_lock ;
   wait_queue_head_t event_wait ;
   struct list_head event_list ;
   int event_space ;
   struct drm_prime_file_private prime ;
};
struct drm_lock_data {
   struct drm_hw_lock *hw_lock ;
   struct drm_file *file_priv ;
   wait_queue_head_t lock_queue ;
   unsigned long lock_time ;
   spinlock_t spinlock ;
   uint32_t kernel_waiters ;
   uint32_t user_waiters ;
   int idle_has_lock ;
};
struct drm_master {
   struct kref refcount ;
   struct drm_minor *minor ;
   char *unique ;
   int unique_len ;
   struct drm_open_hash magiclist ;
   struct list_head magicfree ;
   struct drm_lock_data lock ;
   void *driver_priv ;
};
struct dma_buf;
struct drm_driver {
   int (*load)(struct drm_device * , unsigned long ) ;
   int (*firstopen)(struct drm_device * ) ;
   int (*open)(struct drm_device * , struct drm_file * ) ;
   void (*preclose)(struct drm_device * , struct drm_file * ) ;
   void (*postclose)(struct drm_device * , struct drm_file * ) ;
   void (*lastclose)(struct drm_device * ) ;
   int (*unload)(struct drm_device * ) ;
   int (*suspend)(struct drm_device * , pm_message_t ) ;
   int (*resume)(struct drm_device * ) ;
   int (*dma_ioctl)(struct drm_device * , void * , struct drm_file * ) ;
   int (*dma_quiescent)(struct drm_device * ) ;
   int (*context_dtor)(struct drm_device * , int ) ;
   int (*set_busid)(struct drm_device * , struct drm_master * ) ;
   u32 (*get_vblank_counter)(struct drm_device * , int ) ;
   int (*enable_vblank)(struct drm_device * , int ) ;
   void (*disable_vblank)(struct drm_device * , int ) ;
   int (*device_is_agp)(struct drm_device * ) ;
   int (*get_scanout_position)(struct drm_device * , int , unsigned int , int * ,
                               int * , ktime_t * , ktime_t * ) ;
   int (*get_vblank_timestamp)(struct drm_device * , int , int * , struct timeval * ,
                               unsigned int ) ;
   irqreturn_t (*irq_handler)(int , void * ) ;
   void (*irq_preinstall)(struct drm_device * ) ;
   int (*irq_postinstall)(struct drm_device * ) ;
   void (*irq_uninstall)(struct drm_device * ) ;
   int (*master_create)(struct drm_device * , struct drm_master * ) ;
   void (*master_destroy)(struct drm_device * , struct drm_master * ) ;
   int (*master_set)(struct drm_device * , struct drm_file * , bool ) ;
   void (*master_drop)(struct drm_device * , struct drm_file * , bool ) ;
   int (*debugfs_init)(struct drm_minor * ) ;
   void (*debugfs_cleanup)(struct drm_minor * ) ;
   void (*gem_free_object)(struct drm_gem_object * ) ;
   int (*gem_open_object)(struct drm_gem_object * , struct drm_file * ) ;
   void (*gem_close_object)(struct drm_gem_object * , struct drm_file * ) ;
   int (*prime_handle_to_fd)(struct drm_device * , struct drm_file * , uint32_t ,
                             uint32_t , int * ) ;
   int (*prime_fd_to_handle)(struct drm_device * , struct drm_file * , int , uint32_t * ) ;
   struct dma_buf *(*gem_prime_export)(struct drm_device * , struct drm_gem_object * ,
                                       int ) ;
   struct drm_gem_object *(*gem_prime_import)(struct drm_device * , struct dma_buf * ) ;
   int (*gem_prime_pin)(struct drm_gem_object * ) ;
   void (*gem_prime_unpin)(struct drm_gem_object * ) ;
   struct reservation_object *(*gem_prime_res_obj)(struct drm_gem_object * ) ;
   struct sg_table *(*gem_prime_get_sg_table)(struct drm_gem_object * ) ;
   struct drm_gem_object *(*gem_prime_import_sg_table)(struct drm_device * , struct dma_buf_attachment * ,
                                                       struct sg_table * ) ;
   void *(*gem_prime_vmap)(struct drm_gem_object * ) ;
   void (*gem_prime_vunmap)(struct drm_gem_object * , void * ) ;
   int (*gem_prime_mmap)(struct drm_gem_object * , struct vm_area_struct * ) ;
   void (*vgaarb_irq)(struct drm_device * , bool ) ;
   int (*dumb_create)(struct drm_file * , struct drm_device * , struct drm_mode_create_dumb * ) ;
   int (*dumb_map_offset)(struct drm_file * , struct drm_device * , uint32_t , uint64_t * ) ;
   int (*dumb_destroy)(struct drm_file * , struct drm_device * , uint32_t ) ;
   struct vm_operations_struct const *gem_vm_ops ;
   int major ;
   int minor ;
   int patchlevel ;
   char *name ;
   char *desc ;
   char *date ;
   u32 driver_features ;
   int dev_priv_size ;
   struct drm_ioctl_desc const *ioctls ;
   int num_ioctls ;
   struct file_operations const *fops ;
   struct list_head legacy_dev_list ;
};
struct drm_minor {
   int index ;
   int type ;
   struct device *kdev ;
   struct drm_device *dev ;
   struct dentry *debugfs_root ;
   struct list_head debugfs_list ;
   struct mutex debugfs_lock ;
   struct drm_master *master ;
   struct drm_mode_group mode_group ;
};
struct drm_pending_vblank_event {
   struct drm_pending_event base ;
   int pipe ;
   struct drm_event_vblank event ;
};
struct drm_vblank_crtc {
   struct drm_device *dev ;
   wait_queue_head_t queue ;
   struct timeval time[2U] ;
   struct timer_list disable_timer ;
   atomic_t count ;
   atomic_t refcount ;
   u32 last ;
   u32 last_wait ;
   unsigned int inmodeset ;
   int crtc ;
   bool enabled ;
};
struct drm_sg_mem;
struct __anonstruct_sigdata_222 {
   int context ;
   struct drm_hw_lock *lock ;
};
struct drm_device {
   struct list_head legacy_dev_list ;
   int if_version ;
   struct kref ref ;
   struct device *dev ;
   struct drm_driver *driver ;
   void *dev_private ;
   struct drm_minor *control ;
   struct drm_minor *primary ;
   struct drm_minor *render ;
   atomic_t unplugged ;
   struct inode *anon_inode ;
   char *unique ;
   struct mutex struct_mutex ;
   struct mutex master_mutex ;
   int open_count ;
   spinlock_t buf_lock ;
   int buf_use ;
   atomic_t buf_alloc ;
   struct list_head filelist ;
   struct list_head maplist ;
   struct drm_open_hash map_hash ;
   struct list_head ctxlist ;
   struct mutex ctxlist_mutex ;
   struct idr ctx_idr ;
   struct list_head vmalist ;
   struct drm_device_dma *dma ;
   long volatile context_flag ;
   int last_context ;
   bool irq_enabled ;
   int irq ;
   bool vblank_disable_allowed ;
   bool vblank_disable_immediate ;
   struct drm_vblank_crtc *vblank ;
   spinlock_t vblank_time_lock ;
   spinlock_t vbl_lock ;
   u32 max_vblank_count ;
   struct list_head vblank_event_list ;
   spinlock_t event_lock ;
   struct drm_agp_head *agp ;
   struct pci_dev *pdev ;
   struct platform_device *platformdev ;
   struct drm_sg_mem *sg ;
   unsigned int num_crtcs ;
   sigset_t sigmask ;
   struct __anonstruct_sigdata_222 sigdata ;
   struct drm_local_map *agp_buffer_map ;
   unsigned int agp_buffer_token ;
   struct drm_mode_config mode_config ;
   struct mutex object_name_lock ;
   struct idr object_name_idr ;
   struct drm_vma_offset_manager *vma_offset_manager ;
   int switch_power_state ;
};
struct drm_fb_helper;
struct drm_fb_offset {
   int x ;
   int y ;
};
struct drm_fb_helper_crtc {
   struct drm_mode_set mode_set ;
   struct drm_display_mode *desired_mode ;
   int x ;
   int y ;
};
struct drm_fb_helper_surface_size {
   u32 fb_width ;
   u32 fb_height ;
   u32 surface_width ;
   u32 surface_height ;
   u32 surface_bpp ;
   u32 surface_depth ;
};
struct drm_fb_helper_funcs {
   void (*gamma_set)(struct drm_crtc * , u16 , u16 , u16 , int ) ;
   void (*gamma_get)(struct drm_crtc * , u16 * , u16 * , u16 * , int ) ;
   int (*fb_probe)(struct drm_fb_helper * , struct drm_fb_helper_surface_size * ) ;
   bool (*initial_config)(struct drm_fb_helper * , struct drm_fb_helper_crtc ** ,
                          struct drm_display_mode ** , struct drm_fb_offset * , bool * ,
                          int , int ) ;
};
struct drm_fb_helper_connector {
   struct drm_connector *connector ;
};
struct drm_fb_helper {
   struct drm_framebuffer *fb ;
   struct drm_device *dev ;
   int crtc_count ;
   struct drm_fb_helper_crtc *crtc_info ;
   int connector_count ;
   int connector_info_alloc_count ;
   struct drm_fb_helper_connector **connector_info ;
   struct drm_fb_helper_funcs const *funcs ;
   struct fb_info *fbdev ;
   u32 pseudo_palette[17U] ;
   struct list_head kernel_fb_list ;
   bool delayed_hotplug ;
};
struct fence_ops;
struct fence {
   struct kref refcount ;
   struct fence_ops const *ops ;
   struct callback_head rcu ;
   struct list_head cb_list ;
   spinlock_t *lock ;
   unsigned int context ;
   unsigned int seqno ;
   unsigned long flags ;
   ktime_t timestamp ;
   int status ;
};
struct fence_ops {
   char const *(*get_driver_name)(struct fence * ) ;
   char const *(*get_timeline_name)(struct fence * ) ;
   bool (*enable_signaling)(struct fence * ) ;
   bool (*signaled)(struct fence * ) ;
   long (*wait)(struct fence * , bool , long ) ;
   void (*release)(struct fence * ) ;
   int (*fill_driver_data)(struct fence * , void * , int ) ;
   void (*fence_value_str)(struct fence * , char * , int ) ;
   void (*timeline_value_str)(struct fence * , char * , int ) ;
};
struct reservation_object_list {
   struct callback_head rcu ;
   u32 shared_count ;
   u32 shared_max ;
   struct fence *shared[] ;
};
struct reservation_object {
   struct ww_mutex lock ;
   seqcount_t seq ;
   struct fence *fence_excl ;
   struct reservation_object_list *fence ;
   struct reservation_object_list *staged ;
};
struct ttm_bo_device;
struct ttm_place {
   unsigned int fpfn ;
   unsigned int lpfn ;
   uint32_t flags ;
};
struct ttm_placement {
   unsigned int num_placement ;
   struct ttm_place const *placement ;
   unsigned int num_busy_placement ;
   struct ttm_place const *busy_placement ;
};
struct ttm_bus_placement {
   void *addr ;
   unsigned long base ;
   unsigned long size ;
   unsigned long offset ;
   bool is_iomem ;
   bool io_reserved_vm ;
   uint64_t io_reserved_count ;
};
struct ttm_mem_reg {
   void *mm_node ;
   unsigned long start ;
   unsigned long size ;
   unsigned long num_pages ;
   uint32_t page_alignment ;
   uint32_t mem_type ;
   uint32_t placement ;
   struct ttm_bus_placement bus ;
};
enum ttm_bo_type {
    ttm_bo_type_device = 0,
    ttm_bo_type_kernel = 1,
    ttm_bo_type_sg = 2
} ;
struct ttm_tt;
struct ttm_bo_global;
struct ttm_buffer_object {
   struct ttm_bo_global *glob ;
   struct ttm_bo_device *bdev ;
   enum ttm_bo_type type ;
   void (*destroy)(struct ttm_buffer_object * ) ;
   unsigned long num_pages ;
   size_t acc_size ;
   struct kref kref ;
   struct kref list_kref ;
   struct ttm_mem_reg mem ;
   struct file *persistent_swap_storage ;
   struct ttm_tt *ttm ;
   bool evicted ;
   atomic_t cpu_writers ;
   struct list_head lru ;
   struct list_head ddestroy ;
   struct list_head swap ;
   struct list_head io_reserve_lru ;
   unsigned long priv_flags ;
   struct drm_vma_offset_node vma_node ;
   unsigned long offset ;
   uint32_t cur_placement ;
   struct sg_table *sg ;
   struct reservation_object *resv ;
   struct reservation_object ttm_resv ;
   struct mutex wu_mutex ;
};
struct ttm_mem_shrink {
   int (*do_shrink)(struct ttm_mem_shrink * ) ;
};
struct ttm_mem_zone;
struct ttm_mem_global {
   struct kobject kobj ;
   struct ttm_mem_shrink *shrink ;
   struct workqueue_struct *swap_queue ;
   struct work_struct work ;
   spinlock_t lock ;
   struct ttm_mem_zone *zones[2U] ;
   unsigned int num_zones ;
   struct ttm_mem_zone *zone_kernel ;
   struct ttm_mem_zone *zone_dma32 ;
};
struct ttm_backend_func {
   int (*bind)(struct ttm_tt * , struct ttm_mem_reg * ) ;
   int (*unbind)(struct ttm_tt * ) ;
   void (*destroy)(struct ttm_tt * ) ;
};
enum ttm_caching_state {
    tt_uncached = 0,
    tt_wc = 1,
    tt_cached = 2
} ;
enum ldv_28477 {
    tt_bound = 0,
    tt_unbound = 1,
    tt_unpopulated = 2
} ;
struct ttm_tt {
   struct ttm_bo_device *bdev ;
   struct ttm_backend_func *func ;
   struct page *dummy_read_page ;
   struct page **pages ;
   uint32_t page_flags ;
   unsigned long num_pages ;
   struct sg_table *sg ;
   struct ttm_bo_global *glob ;
   struct file *swap_storage ;
   enum ttm_caching_state caching_state ;
   enum ldv_28477 state ;
};
struct ttm_mem_type_manager;
struct ttm_mem_type_manager_func {
   int (*init)(struct ttm_mem_type_manager * , unsigned long ) ;
   int (*takedown)(struct ttm_mem_type_manager * ) ;
   int (*get_node)(struct ttm_mem_type_manager * , struct ttm_buffer_object * , struct ttm_place const * ,
                   struct ttm_mem_reg * ) ;
   void (*put_node)(struct ttm_mem_type_manager * , struct ttm_mem_reg * ) ;
   void (*debug)(struct ttm_mem_type_manager * , char const * ) ;
};
struct ttm_mem_type_manager {
   struct ttm_bo_device *bdev ;
   bool has_type ;
   bool use_type ;
   uint32_t flags ;
   unsigned long gpu_offset ;
   uint64_t size ;
   uint32_t available_caching ;
   uint32_t default_caching ;
   struct ttm_mem_type_manager_func const *func ;
   void *priv ;
   struct mutex io_reserve_mutex ;
   bool use_io_reserve_lru ;
   bool io_reserve_fastpath ;
   struct list_head io_reserve_lru ;
   struct list_head lru ;
};
struct ttm_bo_driver {
   struct ttm_tt *(*ttm_tt_create)(struct ttm_bo_device * , unsigned long , uint32_t ,
                                   struct page * ) ;
   int (*ttm_tt_populate)(struct ttm_tt * ) ;
   void (*ttm_tt_unpopulate)(struct ttm_tt * ) ;
   int (*invalidate_caches)(struct ttm_bo_device * , uint32_t ) ;
   int (*init_mem_type)(struct ttm_bo_device * , uint32_t , struct ttm_mem_type_manager * ) ;
   void (*evict_flags)(struct ttm_buffer_object * , struct ttm_placement * ) ;
   int (*move)(struct ttm_buffer_object * , bool , bool , bool , struct ttm_mem_reg * ) ;
   int (*verify_access)(struct ttm_buffer_object * , struct file * ) ;
   void (*move_notify)(struct ttm_buffer_object * , struct ttm_mem_reg * ) ;
   int (*fault_reserve_notify)(struct ttm_buffer_object * ) ;
   void (*swap_notify)(struct ttm_buffer_object * ) ;
   int (*io_mem_reserve)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
   void (*io_mem_free)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
};
struct ttm_bo_global {
   struct kobject kobj ;
   struct ttm_mem_global *mem_glob ;
   struct page *dummy_read_page ;
   struct ttm_mem_shrink shrink ;
   struct mutex device_list_mutex ;
   spinlock_t lru_lock ;
   struct list_head device_list ;
   struct list_head swap_lru ;
   atomic_t bo_count ;
};
struct ttm_bo_device {
   struct list_head device_list ;
   struct ttm_bo_global *glob ;
   struct ttm_bo_driver *driver ;
   struct ttm_mem_type_manager man[8U] ;
   struct drm_vma_offset_manager vma_manager ;
   struct list_head ddestroy ;
   uint32_t val_seq ;
   struct address_space *dev_mapping ;
   struct delayed_work wq ;
   bool need_dma32 ;
};
struct drm_gem_object {
   struct kref refcount ;
   unsigned int handle_count ;
   struct drm_device *dev ;
   struct file *filp ;
   struct drm_vma_offset_node vma_node ;
   size_t size ;
   int name ;
   uint32_t read_domains ;
   uint32_t write_domain ;
   uint32_t pending_read_domains ;
   uint32_t pending_write_domain ;
   struct dma_buf *dma_buf ;
   struct dma_buf_attachment *import_attach ;
};
struct ldv_struct_dummy_resourceless_instance_5 {
   struct drm_connector *arg0 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_3 {
   int signal_pending ;
};
enum hrtimer_restart;
enum drm_global_types {
    DRM_GLOBAL_TTM_MEM = 0,
    DRM_GLOBAL_TTM_BO = 1,
    DRM_GLOBAL_TTM_OBJECT = 2,
    DRM_GLOBAL_NUM = 3
} ;
struct drm_global_reference {
   enum drm_global_types global_type ;
   size_t size ;
   void *object ;
   int (*init)(struct drm_global_reference * ) ;
   void (*release)(struct drm_global_reference * ) ;
};
enum ldv_28185 {
    ttm_bo_map_iomap = 129,
    ttm_bo_map_vmap = 2,
    ttm_bo_map_kmap = 3,
    ttm_bo_map_premapped = 132
} ;
struct ttm_bo_kmap_obj {
   void *virtual ;
   struct page *page ;
   enum ldv_28185 bo_kmap_type ;
   struct ttm_buffer_object *bo ;
};
struct ttm_bo_global_ref {
   struct drm_global_reference ref ;
   struct ttm_mem_global *mem_glob ;
};
enum ast_chip {
    AST2000 = 0,
    AST2100 = 1,
    AST1100 = 2,
    AST2200 = 3,
    AST2150 = 4,
    AST2300 = 5,
    AST2400 = 6,
    AST1180 = 7
} ;
enum ast_tx_chip {
    AST_TX_NONE = 0,
    AST_TX_SIL164 = 1,
    AST_TX_ITE66121 = 2,
    AST_TX_DP501 = 3
} ;
struct ast_fbdev;
struct __anonstruct_ttm_223 {
   struct drm_global_reference mem_global_ref ;
   struct ttm_bo_global_ref bo_global_ref ;
   struct ttm_bo_device bdev ;
};
struct firmware;
struct ast_private {
   struct drm_device *dev ;
   void *regs ;
   void *ioregs ;
   enum ast_chip chip ;
   bool vga2_clone ;
   uint32_t dram_bus_width ;
   uint32_t dram_type ;
   uint32_t mclk ;
   uint32_t vram_size ;
   struct ast_fbdev *fbdev ;
   int fb_mtrr ;
   struct __anonstruct_ttm_223 ttm ;
   struct drm_gem_object *cursor_cache ;
   uint64_t cursor_cache_gpu_addr ;
   struct ttm_bo_kmap_obj cache_kmap ;
   int next_cursor ;
   bool support_wide_screen ;
   enum ast_tx_chip tx_chip_type ;
   u8 dp501_maxclk ;
   u8 *dp501_fw_addr ;
   struct firmware const *dp501_fw ;
};
struct ast_framebuffer {
   struct drm_framebuffer base ;
   struct drm_gem_object *obj ;
};
struct ast_fbdev {
   struct drm_fb_helper helper ;
   struct ast_framebuffer afb ;
   struct list_head fbdev_list ;
   void *sysram ;
   int size ;
   struct ttm_bo_kmap_obj mapping ;
   int x1 ;
   int y1 ;
   int x2 ;
   int y2 ;
   spinlock_t dirty_lock ;
};
struct ast_bo {
   struct ttm_buffer_object bo ;
   struct ttm_placement placement ;
   struct ttm_bo_kmap_obj kmap ;
   struct drm_gem_object gem ;
   struct ttm_place placements[3U] ;
   int pin_count ;
};
enum hrtimer_restart;
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_REQ_READ_START = 0,
    I2C_SLAVE_REQ_READ_END = 1,
    I2C_SLAVE_REQ_WRITE_START = 2,
    I2C_SLAVE_REQ_WRITE_END = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct edid;
enum mode_set_atomic {
    LEAVE_ATOMIC_MODE_SET = 0,
    ENTER_ATOMIC_MODE_SET = 1
} ;
struct drm_crtc_helper_funcs {
   void (*dpms)(struct drm_crtc * , int ) ;
   void (*prepare)(struct drm_crtc * ) ;
   void (*commit)(struct drm_crtc * ) ;
   bool (*mode_fixup)(struct drm_crtc * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   int (*mode_set)(struct drm_crtc * , struct drm_display_mode * , struct drm_display_mode * ,
                   int , int , struct drm_framebuffer * ) ;
   void (*mode_set_nofb)(struct drm_crtc * ) ;
   int (*mode_set_base)(struct drm_crtc * , int , int , struct drm_framebuffer * ) ;
   int (*mode_set_base_atomic)(struct drm_crtc * , struct drm_framebuffer * , int ,
                               int , enum mode_set_atomic ) ;
   void (*load_lut)(struct drm_crtc * ) ;
   void (*disable)(struct drm_crtc * ) ;
   void (*enable)(struct drm_crtc * ) ;
   int (*atomic_check)(struct drm_crtc * , struct drm_crtc_state * ) ;
   void (*atomic_begin)(struct drm_crtc * ) ;
   void (*atomic_flush)(struct drm_crtc * ) ;
};
struct drm_encoder_helper_funcs {
   void (*dpms)(struct drm_encoder * , int ) ;
   void (*save)(struct drm_encoder * ) ;
   void (*restore)(struct drm_encoder * ) ;
   bool (*mode_fixup)(struct drm_encoder * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   void (*prepare)(struct drm_encoder * ) ;
   void (*commit)(struct drm_encoder * ) ;
   void (*mode_set)(struct drm_encoder * , struct drm_display_mode * , struct drm_display_mode * ) ;
   struct drm_crtc *(*get_crtc)(struct drm_encoder * ) ;
   enum drm_connector_status (*detect)(struct drm_encoder * , struct drm_connector * ) ;
   void (*disable)(struct drm_encoder * ) ;
   void (*enable)(struct drm_encoder * ) ;
   int (*atomic_check)(struct drm_encoder * , struct drm_crtc_state * , struct drm_connector_state * ) ;
};
struct drm_connector_helper_funcs {
   int (*get_modes)(struct drm_connector * ) ;
   enum drm_mode_status (*mode_valid)(struct drm_connector * , struct drm_display_mode * ) ;
   struct drm_encoder *(*best_encoder)(struct drm_connector * ) ;
};
struct i2c_algo_bit_data {
   void *data ;
   void (*setsda)(void * , int ) ;
   void (*setscl)(void * , int ) ;
   int (*getsda)(void * ) ;
   int (*getscl)(void * ) ;
   int (*pre_xfer)(struct i2c_adapter * ) ;
   void (*post_xfer)(struct i2c_adapter * ) ;
   int udelay ;
   int timeout ;
};
struct ast_i2c_chan {
   struct i2c_adapter adapter ;
   struct drm_device *dev ;
   struct i2c_algo_bit_data bit ;
};
struct ast_connector {
   struct drm_connector base ;
   struct ast_i2c_chan *i2c ;
};
struct ast_crtc {
   struct drm_crtc base ;
   u8 lut_r[256U] ;
   u8 lut_g[256U] ;
   u8 lut_b[256U] ;
   struct drm_gem_object *cursor_bo ;
   uint64_t cursor_addr ;
   int cursor_width ;
   int cursor_height ;
   u8 offset_x ;
   u8 offset_y ;
};
struct ast_encoder {
   struct drm_encoder base ;
};
struct ast_vbios_stdtable {
   u8 misc ;
   u8 seq[4U] ;
   u8 crtc[25U] ;
   u8 ar[20U] ;
   u8 gr[9U] ;
};
struct ast_vbios_enhtable {
   u32 ht ;
   u32 hde ;
   u32 hfp ;
   u32 hsync ;
   u32 vt ;
   u32 vde ;
   u32 vfp ;
   u32 vsync ;
   u32 dclk_index ;
   u32 flags ;
   u32 refresh_rate ;
   u32 refresh_rate_index ;
   u32 mode_id ;
};
struct ast_vbios_dclk_info {
   u8 param1 ;
   u8 param2 ;
   u8 param3 ;
};
struct ast_vbios_mode_info {
   struct ast_vbios_stdtable *std_table ;
   struct ast_vbios_enhtable *enh_table ;
};
union __anonunion_srcdata32_225 {
   u32 ul ;
   u8 b[4U] ;
};
union __anonunion_data32_226 {
   u32 ul ;
   u8 b[4U] ;
};
union __anonunion_data16_228 {
   u16 us ;
   u8 b[2U] ;
};
typedef int ldv_func_ret_type___0;
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
struct llist_head {
   struct llist_node *first ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_219 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_219 __annonCompField74 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   spinlock_t flow_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct ldv_struct_drm_framebuffer_unregister_private_14 {
   struct drm_framebuffer *arg0 ;
   int signal_pending ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct ast_dramstruct {
   u16 index ;
   u32 data ;
};
struct ast2300_dram_param {
   u32 dram_type ;
   u32 dram_chipid ;
   u32 dram_freq ;
   u32 vram_size ;
   u32 odt ;
   u32 wodt ;
   u32 rodt ;
   u32 dram_config ;
   u32 reg_PERIOD ;
   u32 reg_MADJ ;
   u32 reg_SADJ ;
   u32 reg_MRS ;
   u32 reg_EMRS ;
   u32 reg_AC1 ;
   u32 reg_AC2 ;
   u32 reg_DQSIC ;
   u32 reg_DRV ;
   u32 reg_IOZ ;
   u32 reg_DQIDLY ;
   u32 reg_FREQ ;
   u32 madj_max ;
   u32 dll2_finetune_step ;
};
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
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
   struct kthread_worker *worker ;
};
struct dma_chan;
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
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class();
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_115(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_112(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_116(void) ;
static void ldv_ldv_pre_probe_118(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_117(int retval ) ;
static int ldv_ldv_post_probe_119(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_113(void) ;
static void ldv_ldv_check_final_state_114(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_alloc_macro(gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc_unknown_size();
  }
  return (tmp);
}
}
extern struct module __this_module ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
extern void console_lock(void) ;
extern void console_unlock(void) ;
extern bool vgacon_text_force(void) ;
extern void drm_mode_config_reset(struct drm_device * ) ;
extern long drm_ioctl(struct file * , unsigned int , unsigned long ) ;
extern long drm_compat_ioctl(struct file * , unsigned int , unsigned long ) ;
extern int drm_open(struct inode * , struct file * ) ;
extern ssize_t drm_read(struct file * , char * , size_t , loff_t * ) ;
extern int drm_release(struct inode * , struct file * ) ;
extern unsigned int drm_poll(struct file * , struct poll_table_struct * ) ;
extern void drm_put_dev(struct drm_device * ) ;
extern int drm_pci_init(struct drm_driver * , struct pci_driver * ) ;
extern void drm_pci_exit(struct drm_driver * , struct pci_driver * ) ;
extern int drm_get_pci_dev(struct pci_dev * , struct pci_device_id const * , struct drm_driver * ) ;
extern int drm_pci_set_busid(struct drm_device * , struct drm_master * ) ;
extern void drm_helper_resume_force_mode(struct drm_device * ) ;
extern void drm_kms_helper_poll_disable(struct drm_device * ) ;
extern void drm_kms_helper_poll_enable(struct drm_device * ) ;
extern int drm_gem_dumb_destroy(struct drm_file * , struct drm_device * , uint32_t ) ;
int ast_driver_load(struct drm_device *dev , unsigned long flags ) ;
int ast_driver_unload(struct drm_device *dev ) ;
void ast_fbdev_set_suspend(struct drm_device *dev , int state ) ;
int ast_dumb_create(struct drm_file *file , struct drm_device *dev , struct drm_mode_create_dumb *args ) ;
void ast_gem_free_object(struct drm_gem_object *obj ) ;
int ast_dumb_mmap_offset(struct drm_file *file , struct drm_device *dev , uint32_t handle ,
                         uint64_t *offset ) ;
int ast_mmap(struct file *filp , struct vm_area_struct *vma ) ;
void ast_post_gpu(struct drm_device *dev ) ;
int ast_modeset = -1;
static struct drm_driver driver ;
static struct pci_device_id const pciidlist[3U] = { {6659U, 8192U, 4294967295U, 4294967295U, 196608U, 16711680U, 0UL},
        {6659U, 8208U, 4294967295U, 4294967295U, 196608U, 16711680U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__pciidlist_device_table[3U] ;
static int ast_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int tmp ;
  {
  {
  tmp = drm_get_pci_dev(pdev, ent, & driver);
  }
  return (tmp);
}
}
static void ast_pci_remove(struct pci_dev *pdev )
{
  struct drm_device *dev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct drm_device *)tmp;
  drm_put_dev(dev);
  }
  return;
}
}
static int ast_drm_freeze(struct drm_device *dev )
{
  {
  {
  drm_kms_helper_poll_disable(dev);
  pci_save_state(dev->pdev);
  console_lock();
  ast_fbdev_set_suspend(dev, 1);
  console_unlock();
  }
  return (0);
}
}
static int ast_drm_thaw(struct drm_device *dev )
{
  int error ;
  {
  {
  error = 0;
  ast_post_gpu(dev);
  drm_mode_config_reset(dev);
  drm_helper_resume_force_mode(dev);
  console_lock();
  ast_fbdev_set_suspend(dev, 0);
  console_unlock();
  }
  return (error);
}
}
static int ast_drm_resume(struct drm_device *dev )
{
  int ret ;
  int tmp ;
  {
  {
  tmp = pci_enable_device(dev->pdev);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  {
  ret = ast_drm_thaw(dev);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  drm_kms_helper_poll_enable(dev);
  }
  return (0);
}
}
static int ast_pm_suspend(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *ddev ;
  void *tmp ;
  int error ;
  {
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  ddev = (struct drm_device *)tmp;
  error = ast_drm_freeze(ddev);
  }
  if (error != 0) {
    return (error);
  } else {
  }
  {
  pci_disable_device(pdev);
  pci_set_power_state(pdev, 3);
  }
  return (0);
}
}
static int ast_pm_resume(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *ddev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  ddev = (struct drm_device *)tmp;
  tmp___0 = ast_drm_resume(ddev);
  }
  return (tmp___0);
}
}
static int ast_pm_freeze(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *ddev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  ddev = (struct drm_device *)tmp;
  }
  if ((unsigned long )ddev == (unsigned long )((struct drm_device *)0) || (unsigned long )ddev->dev_private == (unsigned long )((void *)0)) {
    return (-19);
  } else {
  }
  {
  tmp___0 = ast_drm_freeze(ddev);
  }
  return (tmp___0);
}
}
static int ast_pm_thaw(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *ddev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  ddev = (struct drm_device *)tmp;
  tmp___0 = ast_drm_thaw(ddev);
  }
  return (tmp___0);
}
}
static int ast_pm_poweroff(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *ddev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  ddev = (struct drm_device *)tmp;
  tmp___0 = ast_drm_freeze(ddev);
  }
  return (tmp___0);
}
}
static struct dev_pm_ops const ast_pm_ops =
     {0, 0, & ast_pm_suspend, & ast_pm_resume, & ast_pm_freeze, & ast_pm_thaw, & ast_pm_poweroff,
    & ast_pm_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct pci_driver ast_pci_driver =
     {{0, 0}, "ast", (struct pci_device_id const *)(& pciidlist), & ast_pci_probe,
    & ast_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                            0, 0, & ast_pm_ops, 0}, {{{{{{0U}}, 0U,
                                                                        0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                     {0, 0}}};
static struct file_operations const ast_fops =
     {& __this_module, 0, & drm_read, 0, 0, 0, 0, 0, 0, & drm_poll, & drm_ioctl, & drm_compat_ioctl,
    & ast_mmap, 0, & drm_open, 0, & drm_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static struct drm_driver driver =
     {& ast_driver_load, 0, 0, 0, 0, 0, & ast_driver_unload, 0, 0, 0, 0, 0, & drm_pci_set_busid,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ast_gem_free_object, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ast_dumb_create, & ast_dumb_mmap_offset,
    & drm_gem_dumb_destroy, 0, 0, 1, 0, (char *)"ast", (char *)"AST", (char *)"20120228",
    12288U, 0, 0, 0, & ast_fops, {0, 0}};
static int ast_init(void)
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = vgacon_text_force();
  }
  if ((int )tmp && ast_modeset == -1) {
    return (-22);
  } else {
  }
  if (ast_modeset == 0) {
    return (-22);
  } else {
  }
  {
  tmp___0 = drm_pci_init(& driver, & ast_pci_driver);
  }
  return (tmp___0);
}
}
static void ast_exit(void)
{
  {
  {
  drm_pci_exit(& driver, & ast_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_ast_exit_15_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_ast_init_15_26(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_15_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_15_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_15_15_7(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_15_8(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_15_9(void) ;
void ldv_dispatch_deregister_file_operations_instance_1_15_10(void) ;
void ldv_dispatch_deregister_pci_instance_2_15_11(void) ;
void ldv_dispatch_deregister_platform_instance_4_15_12(void) ;
void ldv_dispatch_pm_deregister_3_5(void) ;
void ldv_dispatch_pm_register_3_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_15_13(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_15_14(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_15_15(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_15_16(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_15_15_17(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_15_18(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_15_19(void) ;
void ldv_dispatch_register_file_operations_instance_1_15_20(void) ;
void ldv_dispatch_register_pci_instance_2_15_21(void) ;
void ldv_dispatch_register_platform_instance_4_15_22(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(struct drm_framebuffer *(*arg0)(struct drm_device * ,
                                                                                   struct drm_file * ,
                                                                                   struct drm_mode_fb_cmd2 * ) ,
                                                   struct drm_device *arg1 , struct drm_file *arg2 ,
                                                   struct drm_mode_fb_cmd2 *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_11(void (*arg0)(struct ttm_bo_device * ,
                                                                 struct ttm_mem_reg * ) ,
                                                    struct ttm_bo_device *arg1 , struct ttm_mem_reg *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_12(int (*arg0)(struct ttm_bo_device * ,
                                                                struct ttm_mem_reg * ) ,
                                                    struct ttm_bo_device *arg1 , struct ttm_mem_reg *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct ttm_buffer_object * ,
                                                                _Bool , _Bool ,
                                                                _Bool , struct ttm_mem_reg * ) ,
                                                    struct ttm_buffer_object *arg1 ,
                                                    _Bool arg2 , _Bool arg3 , _Bool arg4 ,
                                                    struct ttm_mem_reg *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_11_16(struct ttm_tt *(*arg0)(struct ttm_bo_device * ,
                                                                           unsigned long ,
                                                                           unsigned int ,
                                                                           struct page * ) ,
                                                    struct ttm_bo_device *arg1 , unsigned long arg2 ,
                                                    unsigned int arg3 , struct page *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_19(int (*arg0)(struct ttm_tt * ) ,
                                                    struct ttm_tt *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_20(void (*arg0)(struct ttm_tt * ) ,
                                                    struct ttm_tt *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_21(int (*arg0)(struct ttm_buffer_object * ,
                                                                struct file * ) ,
                                                    struct ttm_buffer_object *arg1 ,
                                                    struct file *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct ttm_tt * ) ,
                                                   struct ttm_tt *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_11_7(void (*arg0)(struct ttm_buffer_object * ,
                                                                struct ttm_placement * ) ,
                                                   struct ttm_buffer_object *arg1 ,
                                                   struct ttm_placement *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct ttm_bo_device * ,
                                                               unsigned int , struct ttm_mem_type_manager * ) ,
                                                   struct ttm_bo_device *arg1 , unsigned int arg2 ,
                                                   struct ttm_mem_type_manager *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_10(void (*arg0)(struct drm_connector * ,
                                                                int ) , struct drm_connector *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct drm_connector * ,
                                                               unsigned int , unsigned int ) ,
                                                   struct drm_connector *arg1 , unsigned int arg2 ,
                                                   unsigned int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(void (*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(enum drm_connector_status (*arg0)(struct drm_connector * ,
                                                                                    _Bool ) ,
                                                  struct drm_connector *arg1 , _Bool arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(struct drm_encoder *(*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(int (*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(enum drm_mode_status (*arg0)(struct drm_connector * ,
                                                                               struct drm_display_mode * ) ,
                                                  struct drm_connector *arg1 , struct drm_display_mode *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_10(int (*arg0)(struct drm_crtc * ,
                                                               struct drm_file * ,
                                                               unsigned int , unsigned int ,
                                                               unsigned int ) , struct drm_crtc *arg1 ,
                                                   struct drm_file *arg2 , unsigned int arg3 ,
                                                   unsigned int arg4 , unsigned int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_6_13(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_14(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_15(void (*arg0)(struct drm_crtc * ,
                                                                int ) , struct drm_crtc *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_18(void (*arg0)(struct drm_crtc * ,
                                                                unsigned short * ,
                                                                unsigned short * ,
                                                                unsigned short * ,
                                                                unsigned int , unsigned int ) ,
                                                   struct drm_crtc *arg1 , unsigned short *arg2 ,
                                                   unsigned short *arg3 , unsigned short *arg4 ,
                                                   unsigned int arg5 , unsigned int arg6 ) ;
void ldv_dummy_resourceless_instance_callback_6_21(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_22(_Bool (*arg0)(struct drm_crtc * ,
                                                                 struct drm_display_mode * ,
                                                                 struct drm_display_mode * ) ,
                                                   struct drm_crtc *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_25(int (*arg0)(struct drm_crtc * ,
                                                               struct drm_display_mode * ,
                                                               struct drm_display_mode * ,
                                                               int , int , struct drm_framebuffer * ) ,
                                                   struct drm_crtc *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 ,
                                                   int arg4 , int arg5 , struct drm_framebuffer *arg6 ) ;
void ldv_dummy_resourceless_instance_callback_6_28(int (*arg0)(struct drm_crtc * ,
                                                               int , int , struct drm_framebuffer * ) ,
                                                   struct drm_crtc *arg1 , int arg2 ,
                                                   int arg3 , struct drm_framebuffer *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(void (*arg0)(struct drm_crtc * ) ,
                                                  struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_31(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_32(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_33(int (*arg0)(struct drm_mode_set * ) ,
                                                   struct drm_mode_set *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct drm_crtc * ,
                                                              int , int ) , struct drm_crtc *arg1 ,
                                                  int arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_11(_Bool (*arg0)(struct drm_encoder * ,
                                                                 struct drm_display_mode * ,
                                                                 struct drm_display_mode * ) ,
                                                   struct drm_encoder *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_14(void (*arg0)(struct drm_encoder * ,
                                                                struct drm_display_mode * ,
                                                                struct drm_display_mode * ) ,
                                                   struct drm_encoder *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_17(void (*arg0)(struct drm_encoder * ) ,
                                                   struct drm_encoder *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(void (*arg0)(struct drm_encoder * ) ,
                                                  struct drm_encoder *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_7(void (*arg0)(struct drm_encoder * ) ,
                                                  struct drm_encoder *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_8(void (*arg0)(struct drm_encoder * ,
                                                               int ) , struct drm_encoder *arg1 ,
                                                  int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_10(void (*arg0)(struct drm_crtc * ,
                                                                unsigned short ,
                                                                unsigned short ,
                                                                unsigned short ,
                                                                int ) , struct drm_crtc *arg1 ,
                                                   unsigned short arg2 , unsigned short arg3 ,
                                                   unsigned short arg4 , int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct drm_fb_helper * ,
                                                              struct drm_fb_helper_surface_size * ) ,
                                                  struct drm_fb_helper *arg1 , struct drm_fb_helper_surface_size *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_7(void (*arg0)(struct drm_crtc * ,
                                                               unsigned short * ,
                                                               unsigned short * ,
                                                               unsigned short * ,
                                                               int ) , struct drm_crtc *arg1 ,
                                                  unsigned short *arg2 , unsigned short *arg3 ,
                                                  unsigned short *arg4 , int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(void (*arg0)(struct drm_framebuffer * ) ,
                                                  struct drm_framebuffer *arg1 ) ;
void ldv_entry_EMGentry_15(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            struct drm_mode_create_dumb * ) ,
                                                struct drm_file *arg1 , struct drm_device *arg2 ,
                                                struct drm_mode_create_dumb *arg3 ) ;
void ldv_file_operations_instance_callback_0_25(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            unsigned int ) , struct drm_file *arg1 ,
                                                struct drm_device *arg2 , unsigned int arg3 ) ;
void ldv_file_operations_instance_callback_0_28(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            unsigned int , unsigned long long * ) ,
                                                struct drm_file *arg1 , struct drm_device *arg2 ,
                                                unsigned int arg3 , unsigned long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_31(int (*arg0)(int , struct fb_info * ) ,
                                                int arg1 , struct fb_info *arg2 ) ;
void ldv_file_operations_instance_callback_0_34(int (*arg0)(struct fb_var_screeninfo * ,
                                                            struct fb_info * ) , struct fb_var_screeninfo *arg1 ,
                                                struct fb_info *arg2 ) ;
void ldv_file_operations_instance_callback_0_35(void (*arg0)(struct fb_info * , struct fb_copyarea * ) ,
                                                struct fb_info *arg1 , struct fb_copyarea *arg2 ) ;
void ldv_file_operations_instance_callback_0_38(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 ) ;
void ldv_file_operations_instance_callback_0_41(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 ) ;
void ldv_file_operations_instance_callback_0_44(void (*arg0)(struct fb_info * , struct fb_fillrect * ) ,
                                                struct fb_info *arg1 , struct fb_fillrect *arg2 ) ;
void ldv_file_operations_instance_callback_0_47(void (*arg0)(struct fb_info * , struct fb_image * ) ,
                                                struct fb_info *arg1 , struct fb_image *arg2 ) ;
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_0_50(int (*arg0)(struct fb_var_screeninfo * ,
                                                            struct fb_info * ) , struct fb_var_screeninfo *arg1 ,
                                                struct fb_info *arg2 ) ;
void ldv_file_operations_instance_callback_0_51(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 ) ;
void ldv_file_operations_instance_callback_0_54(int (*arg0)(struct fb_cmap * , struct fb_info * ) ,
                                                struct fb_cmap *arg1 , struct fb_info *arg2 ) ;
void ldv_file_operations_instance_callback_0_55(void (*arg0)(struct drm_gem_object * ) ,
                                                struct drm_gem_object *arg1 ) ;
void ldv_file_operations_instance_callback_0_58(int (*arg0)(struct drm_device * ,
                                                            unsigned long ) , struct drm_device *arg1 ,
                                                unsigned long arg2 ) ;
void ldv_file_operations_instance_callback_0_61(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_62(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_63(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_66(int (*arg0)(struct drm_device * ,
                                                            struct drm_master * ) ,
                                                struct drm_device *arg1 , struct drm_master *arg2 ) ;
void ldv_file_operations_instance_callback_0_69(int (*arg0)(struct drm_device * ) ,
                                                struct drm_device *arg1 ) ;
void ldv_file_operations_instance_callback_0_72(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_platform_instance_3(void *arg0 ) ;
void ldv_pm_pm_ops_instance_2(void *arg0 ) ;
void ldv_struct_drm_connector_funcs_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_drm_connector_helper_funcs_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_drm_crtc_helper_funcs_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_drm_encoder_helper_funcs_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_drm_fb_helper_funcs_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_drm_framebuffer_funcs_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_drm_mode_config_funcs_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_ttm_bo_driver_dummy_resourceless_instance_11(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_ast_exit_15_2(void (*arg0)(void) )
{
  {
  {
  ast_exit();
  }
  return;
}
}
int ldv_EMGentry_init_ast_init_15_26(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ast_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_15_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_15_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_15_15_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_15_8(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_15_9(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_1_15_10(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_pci_instance_2_15_11(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_platform_instance_4_15_12(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_deregister_3_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_3_6(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_pm_pm_ops_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_15_13(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_encoder_helper_funcs_dummy_resourceless_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_15_14(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_fb_helper_funcs_dummy_resourceless_instance_8((void *)cf_arg_8);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_15_15(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_9 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_framebuffer_funcs_dummy_resourceless_instance_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_15_16(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_10 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_mode_config_funcs_dummy_resourceless_instance_10((void *)cf_arg_10);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_15_15_17(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_11 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_ttm_bo_driver_dummy_resourceless_instance_11((void *)cf_arg_11);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_15_18(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_connector_funcs_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_15_19(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_drm_crtc_helper_funcs_dummy_resourceless_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_1_15_20(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_pci_instance_2_15_21(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_pci_pci_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_platform_instance_4_15_22(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_pm_platform_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_entry_EMGentry_15(void *arg0 )
{
  void (*ldv_15_exit_ast_exit_default)(void) ;
  int (*ldv_15_init_ast_init_default)(void) ;
  int ldv_15_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_15_ret_default = ldv_EMGentry_init_ast_init_15_26(ldv_15_init_ast_init_default);
  ldv_15_ret_default = ldv_ldv_post_init_112(ldv_15_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_15_ret_default != 0);
    ldv_ldv_check_final_state_113();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_15_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_platform_instance_4_15_22();
      ldv_dispatch_register_pci_instance_2_15_21();
      ldv_dispatch_register_file_operations_instance_1_15_20();
      ldv_dispatch_register_dummy_resourceless_instance_9_15_19();
      ldv_dispatch_register_dummy_resourceless_instance_5_15_18();
      ldv_dispatch_register_dummy_resourceless_instance_15_15_17();
      ldv_dispatch_register_dummy_resourceless_instance_14_15_16();
      ldv_dispatch_register_dummy_resourceless_instance_12_15_15();
      ldv_dispatch_register_dummy_resourceless_instance_11_15_14();
      ldv_dispatch_register_dummy_resourceless_instance_10_15_13();
      ldv_dispatch_deregister_platform_instance_4_15_12();
      ldv_dispatch_deregister_pci_instance_2_15_11();
      ldv_dispatch_deregister_file_operations_instance_1_15_10();
      ldv_dispatch_deregister_dummy_resourceless_instance_9_15_9();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_15_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_15_15_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_15_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_11_15_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_ast_exit_15_2(ldv_15_exit_ast_exit_default);
    ldv_ldv_check_final_state_114();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_115();
  ldv_entry_EMGentry_15((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long (*ldv_0_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_0_callback_dumb_create)(struct drm_file * , struct drm_device * , struct drm_mode_create_dumb * ) ;
  int (*ldv_0_callback_dumb_destroy)(struct drm_file * , struct drm_device * , unsigned int ) ;
  int (*ldv_0_callback_dumb_map_offset)(struct drm_file * , struct drm_device * ,
                                        unsigned int , unsigned long long * ) ;
  int (*ldv_0_callback_fb_blank)(int , struct fb_info * ) ;
  int (*ldv_0_callback_fb_check_var)(struct fb_var_screeninfo * , struct fb_info * ) ;
  void (*ldv_0_callback_fb_copyarea)(struct fb_info * , struct fb_copyarea * ) ;
  int (*ldv_0_callback_fb_debug_enter)(struct fb_info * ) ;
  int (*ldv_0_callback_fb_debug_leave)(struct fb_info * ) ;
  void (*ldv_0_callback_fb_fillrect)(struct fb_info * , struct fb_fillrect * ) ;
  void (*ldv_0_callback_fb_imageblit)(struct fb_info * , struct fb_image * ) ;
  int (*ldv_0_callback_fb_pan_display)(struct fb_var_screeninfo * , struct fb_info * ) ;
  int (*ldv_0_callback_fb_set_par)(struct fb_info * ) ;
  int (*ldv_0_callback_fb_setcmap)(struct fb_cmap * , struct fb_info * ) ;
  void (*ldv_0_callback_gem_free_object)(struct drm_gem_object * ) ;
  int (*ldv_0_callback_load)(struct drm_device * , unsigned long ) ;
  int (*ldv_0_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_0_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  int (*ldv_0_callback_set_busid)(struct drm_device * , struct drm_master * ) ;
  int (*ldv_0_callback_unload)(struct drm_device * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  struct drm_file *ldv_0_ldv_param_22_0_default ;
  struct drm_file *ldv_0_ldv_param_25_0_default ;
  unsigned int ldv_0_ldv_param_25_2_default ;
  struct drm_file *ldv_0_ldv_param_28_0_default ;
  unsigned int ldv_0_ldv_param_28_2_default ;
  unsigned long long *ldv_0_ldv_param_28_3_default ;
  int ldv_0_ldv_param_31_0_default ;
  struct fb_info *ldv_0_ldv_param_35_0_default ;
  struct fb_info *ldv_0_ldv_param_38_0_default ;
  struct fb_info *ldv_0_ldv_param_41_0_default ;
  struct fb_info *ldv_0_ldv_param_44_0_default ;
  struct fb_info *ldv_0_ldv_param_47_0_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct fb_info *ldv_0_ldv_param_51_0_default ;
  struct drm_gem_object *ldv_0_ldv_param_55_0_default ;
  struct drm_device *ldv_0_ldv_param_58_0_default ;
  unsigned int ldv_0_ldv_param_5_1_default ;
  char *ldv_0_ldv_param_63_1_default ;
  long long *ldv_0_ldv_param_63_3_default ;
  struct drm_device *ldv_0_ldv_param_66_0_default ;
  struct drm_device *ldv_0_ldv_param_69_0_default ;
  unsigned int ldv_0_ldv_param_72_1_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  struct fb_cmap *ldv_0_resource_struct_fb_cmap_ptr ;
  struct fb_var_screeninfo *ldv_0_resource_struct_fb_var_screeninfo_ptr ;
  int ldv_0_ret_default ;
  struct drm_device *ldv_0_size_cnt_struct_drm_device_ptr ;
  struct drm_master *ldv_0_size_cnt_struct_drm_master_ptr ;
  struct drm_mode_create_dumb *ldv_0_size_cnt_struct_drm_mode_create_dumb_ptr ;
  struct fb_copyarea *ldv_0_size_cnt_struct_fb_copyarea_ptr ;
  struct fb_fillrect *ldv_0_size_cnt_struct_fb_fillrect_ptr ;
  struct fb_image *ldv_0_size_cnt_struct_fb_image_ptr ;
  struct fb_info *ldv_0_size_cnt_struct_fb_info_ptr ;
  struct poll_table_struct *ldv_0_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_0_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
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
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_xmalloc(40UL);
  ldv_0_resource_struct_fb_cmap_ptr = (struct fb_cmap *)tmp___1;
  tmp___2 = ldv_xmalloc(160UL);
  ldv_0_resource_struct_fb_var_screeninfo_ptr = (struct fb_var_screeninfo *)tmp___2;
  tmp___3 = ldv_undef_int();
  ldv_0_size_cnt_struct_drm_device_ptr = (struct drm_device *)((long )tmp___3);
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___4 = ldv_undef_int();
    }
    if (tmp___4 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    ldv_free((void *)ldv_0_resource_struct_fb_cmap_ptr);
    ldv_free((void *)ldv_0_resource_struct_fb_var_screeninfo_ptr);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___6 = ldv_undef_int();
  }
  {
  if (tmp___6 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___6 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___6 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___7 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___7;
  tmp___8 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___8;
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_drm_device_ptr <= (unsigned long )((struct drm_device *)2147479552));
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  {
  if (tmp___9 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___9 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___9 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___9 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___9 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___9 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___9 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___9 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___9 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___9 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___9 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___9 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___9 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___9 == 14) {
    goto case_14;
  } else {
  }
  if (tmp___9 == 15) {
    goto case_15;
  } else {
  }
  if (tmp___9 == 16) {
    goto case_16;
  } else {
  }
  if (tmp___9 == 17) {
    goto case_17;
  } else {
  }
  if (tmp___9 == 18) {
    goto case_18;
  } else {
  }
  if (tmp___9 == 19) {
    goto case_19;
  } else {
  }
  if (tmp___9 == 20) {
    goto case_20;
  } else {
  }
  if (tmp___9 == 21) {
    goto case_21;
  } else {
  }
  if (tmp___9 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_0_72(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                             ldv_0_ldv_param_72_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_41444;
  case_2___0:
  {
  tmp___10 = ldv_xmalloc(3144UL);
  ldv_0_ldv_param_69_0_default = (struct drm_device *)tmp___10;
  ldv_file_operations_instance_callback_0_69(ldv_0_callback_unload, ldv_0_ldv_param_69_0_default);
  ldv_free((void *)ldv_0_ldv_param_69_0_default);
  }
  goto ldv_41444;
  case_3___0:
  {
  tmp___11 = ldv_xmalloc(3144UL);
  ldv_0_ldv_param_66_0_default = (struct drm_device *)tmp___11;
  ldv_file_operations_instance_callback_0_66(ldv_0_callback_set_busid, ldv_0_ldv_param_66_0_default,
                                             ldv_0_size_cnt_struct_drm_master_ptr);
  ldv_free((void *)ldv_0_ldv_param_66_0_default);
  }
  goto ldv_41444;
  case_4:
  {
  tmp___12 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_63_1_default = (char *)tmp___12;
  tmp___13 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_63_3_default = (long long *)tmp___13;
  ldv_file_operations_instance_callback_0_63(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_63_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_63_3_default);
  ldv_free((void *)ldv_0_ldv_param_63_1_default);
  ldv_free((void *)ldv_0_ldv_param_63_3_default);
  }
  goto ldv_41444;
  case_5:
  {
  ldv_file_operations_instance_callback_0_62(ldv_0_callback_poll, ldv_0_resource_file,
                                             ldv_0_size_cnt_struct_poll_table_struct_ptr);
  }
  goto ldv_41444;
  case_6:
  {
  ldv_file_operations_instance_callback_0_61(ldv_0_callback_mmap, ldv_0_resource_file,
                                             ldv_0_size_cnt_struct_vm_area_struct_ptr);
  }
  goto ldv_41444;
  case_7:
  {
  tmp___14 = ldv_xmalloc(3144UL);
  ldv_0_ldv_param_58_0_default = (struct drm_device *)tmp___14;
  ldv_file_operations_instance_callback_0_58(ldv_0_callback_load, ldv_0_ldv_param_58_0_default,
                                             ldv_0_size_cnt_write_size);
  ldv_free((void *)ldv_0_ldv_param_58_0_default);
  }
  goto ldv_41444;
  case_8:
  {
  tmp___15 = ldv_xmalloc(248UL);
  ldv_0_ldv_param_55_0_default = (struct drm_gem_object *)tmp___15;
  ldv_file_operations_instance_callback_0_55(ldv_0_callback_gem_free_object, ldv_0_ldv_param_55_0_default);
  ldv_free((void *)ldv_0_ldv_param_55_0_default);
  }
  goto ldv_41444;
  case_9:
  {
  ldv_file_operations_instance_callback_0_54(ldv_0_callback_fb_setcmap, ldv_0_resource_struct_fb_cmap_ptr,
                                             ldv_0_size_cnt_struct_fb_info_ptr);
  }
  goto ldv_41444;
  case_10:
  {
  tmp___16 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_51_0_default = (struct fb_info *)tmp___16;
  ldv_file_operations_instance_callback_0_51(ldv_0_callback_fb_set_par, ldv_0_ldv_param_51_0_default);
  ldv_free((void *)ldv_0_ldv_param_51_0_default);
  }
  goto ldv_41444;
  case_11:
  {
  ldv_file_operations_instance_callback_0_50(ldv_0_callback_fb_pan_display, ldv_0_resource_struct_fb_var_screeninfo_ptr,
                                             ldv_0_size_cnt_struct_fb_info_ptr);
  }
  goto ldv_41444;
  case_12:
  {
  tmp___17 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_47_0_default = (struct fb_info *)tmp___17;
  ldv_file_operations_instance_callback_0_47(ldv_0_callback_fb_imageblit, ldv_0_ldv_param_47_0_default,
                                             ldv_0_size_cnt_struct_fb_image_ptr);
  ldv_free((void *)ldv_0_ldv_param_47_0_default);
  }
  goto ldv_41444;
  case_13:
  {
  tmp___18 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_44_0_default = (struct fb_info *)tmp___18;
  ldv_file_operations_instance_callback_0_44(ldv_0_callback_fb_fillrect, ldv_0_ldv_param_44_0_default,
                                             ldv_0_size_cnt_struct_fb_fillrect_ptr);
  ldv_free((void *)ldv_0_ldv_param_44_0_default);
  }
  goto ldv_41444;
  case_14:
  {
  tmp___19 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_41_0_default = (struct fb_info *)tmp___19;
  ldv_file_operations_instance_callback_0_41(ldv_0_callback_fb_debug_leave, ldv_0_ldv_param_41_0_default);
  ldv_free((void *)ldv_0_ldv_param_41_0_default);
  }
  goto ldv_41444;
  case_15:
  {
  tmp___20 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_38_0_default = (struct fb_info *)tmp___20;
  ldv_file_operations_instance_callback_0_38(ldv_0_callback_fb_debug_enter, ldv_0_ldv_param_38_0_default);
  ldv_free((void *)ldv_0_ldv_param_38_0_default);
  }
  goto ldv_41444;
  case_16:
  {
  tmp___21 = ldv_xmalloc(1608UL);
  ldv_0_ldv_param_35_0_default = (struct fb_info *)tmp___21;
  ldv_file_operations_instance_callback_0_35(ldv_0_callback_fb_copyarea, ldv_0_ldv_param_35_0_default,
                                             ldv_0_size_cnt_struct_fb_copyarea_ptr);
  ldv_free((void *)ldv_0_ldv_param_35_0_default);
  }
  goto ldv_41444;
  case_17:
  {
  ldv_file_operations_instance_callback_0_34(ldv_0_callback_fb_check_var, ldv_0_resource_struct_fb_var_screeninfo_ptr,
                                             ldv_0_size_cnt_struct_fb_info_ptr);
  }
  goto ldv_41444;
  case_18:
  {
  ldv_file_operations_instance_callback_0_31(ldv_0_callback_fb_blank, ldv_0_ldv_param_31_0_default,
                                             ldv_0_size_cnt_struct_fb_info_ptr);
  }
  goto ldv_41444;
  case_19:
  {
  tmp___22 = ldv_xmalloc(728UL);
  ldv_0_ldv_param_28_0_default = (struct drm_file *)tmp___22;
  tmp___23 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_28_3_default = (unsigned long long *)tmp___23;
  ldv_file_operations_instance_callback_0_28(ldv_0_callback_dumb_map_offset, ldv_0_ldv_param_28_0_default,
                                             ldv_0_size_cnt_struct_drm_device_ptr,
                                             ldv_0_ldv_param_28_2_default, ldv_0_ldv_param_28_3_default);
  ldv_free((void *)ldv_0_ldv_param_28_0_default);
  ldv_free((void *)ldv_0_ldv_param_28_3_default);
  }
  goto ldv_41444;
  case_20:
  {
  tmp___24 = ldv_xmalloc(728UL);
  ldv_0_ldv_param_25_0_default = (struct drm_file *)tmp___24;
  ldv_file_operations_instance_callback_0_25(ldv_0_callback_dumb_destroy, ldv_0_ldv_param_25_0_default,
                                             ldv_0_size_cnt_struct_drm_device_ptr,
                                             ldv_0_ldv_param_25_2_default);
  ldv_free((void *)ldv_0_ldv_param_25_0_default);
  }
  goto ldv_41444;
  case_21:
  {
  tmp___25 = ldv_xmalloc(728UL);
  ldv_0_ldv_param_22_0_default = (struct drm_file *)tmp___25;
  ldv_file_operations_instance_callback_0_22(ldv_0_callback_dumb_create, ldv_0_ldv_param_22_0_default,
                                             ldv_0_size_cnt_struct_drm_device_ptr,
                                             ldv_0_size_cnt_struct_drm_mode_create_dumb_ptr);
  ldv_free((void *)ldv_0_ldv_param_22_0_default);
  }
  goto ldv_41444;
  case_22:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_compat_ioctl, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_41444;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_41444: ;
  goto ldv_41467;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_41467: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            struct drm_mode_create_dumb * ) ,
                                                struct drm_file *arg1 , struct drm_device *arg2 ,
                                                struct drm_mode_create_dumb *arg3 )
{
  {
  {
  ast_dumb_create(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_25(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            unsigned int ) , struct drm_file *arg1 ,
                                                struct drm_device *arg2 , unsigned int arg3 )
{
  {
  {
  drm_gem_dumb_destroy(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_28(int (*arg0)(struct drm_file * , struct drm_device * ,
                                                            unsigned int , unsigned long long * ) ,
                                                struct drm_file *arg1 , struct drm_device *arg2 ,
                                                unsigned int arg3 , unsigned long long *arg4 )
{
  {
  {
  ast_dumb_mmap_offset(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  drm_compat_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_55(void (*arg0)(struct drm_gem_object * ) ,
                                                struct drm_gem_object *arg1 )
{
  {
  {
  ast_gem_free_object(arg1);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_58(int (*arg0)(struct drm_device * ,
                                                            unsigned long ) , struct drm_device *arg1 ,
                                                unsigned long arg2 )
{
  {
  {
  ast_driver_load(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_61(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  ast_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_62(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  drm_poll(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_63(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  drm_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_66(int (*arg0)(struct drm_device * ,
                                                            struct drm_master * ) ,
                                                struct drm_device *arg1 , struct drm_master *arg2 )
{
  {
  {
  drm_pci_set_busid(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_69(int (*arg0)(struct drm_device * ) ,
                                                struct drm_device *arg1 )
{
  {
  {
  ast_driver_unload(arg1);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_72(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  drm_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = drm_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  drm_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = ast_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ast_pci_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_1(void *arg0 )
{
  struct pci_driver *ldv_1_container_pci_driver ;
  struct pci_dev *ldv_1_resource_dev ;
  struct pm_message ldv_1_resource_pm_message ;
  struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
  int ldv_1_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(2968UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_116();
    ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                    ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
    ldv_1_ret_default = ldv_ldv_post_probe_117(ldv_1_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_dev);
    ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_1;
  case_2: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                     ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
    }
  } else {
  }
  goto ldv_call_1;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  }
  goto ldv_main_1;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_freeze(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_poweroff(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  ast_pm_thaw(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_platform_instance_3(void *arg0 )
{
  struct platform_driver *ldv_3_container_platform_driver ;
  struct platform_device *ldv_3_ldv_param_14_0_default ;
  struct platform_device *ldv_3_ldv_param_3_0_default ;
  int ldv_3_probed_default ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  ldv_3_probed_default = 1;
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(1464UL);
    ldv_3_ldv_param_14_0_default = (struct platform_device *)tmp;
    ldv_ldv_pre_probe_118();
    }
    if ((unsigned long )ldv_3_container_platform_driver->probe != (unsigned long )((int (*)(struct platform_device * ))0)) {
      {
      ldv_3_probed_default = ldv_platform_instance_probe_3_14(ldv_3_container_platform_driver->probe,
                                                              ldv_3_ldv_param_14_0_default);
      }
    } else {
    }
    {
    ldv_3_probed_default = ldv_ldv_post_probe_119(ldv_3_probed_default);
    ldv_free((void *)ldv_3_ldv_param_14_0_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_3_probed_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_probed_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    return;
  }
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___3 = ldv_xmalloc(1464UL);
  ldv_3_ldv_param_3_0_default = (struct platform_device *)tmp___3;
  }
  if ((unsigned long )ldv_3_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_3_3(ldv_3_container_platform_driver->remove, ldv_3_ldv_param_3_0_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_3_0_default);
  ldv_3_probed_default = 1;
  }
  goto ldv_main_3;
  case_2: ;
  goto ldv_call_3;
  case_3:
  {
  ldv_dispatch_pm_register_3_6();
  ldv_dispatch_pm_deregister_3_5();
  }
  goto ldv_call_3;
  goto ldv_call_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_pm_ops_instance_2(void *arg0 )
{
  struct device *ldv_2_device_device ;
  struct dev_pm_ops *ldv_2_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_2;
  return;
  ldv_do_2:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default___0;
  case_1: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_2_27(ldv_2_pm_ops_dev_pm_ops->runtime_idle, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_2: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_2_25(ldv_2_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_2_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_2_24(ldv_2_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_3: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_2_22(ldv_2_pm_ops_dev_pm_ops->prepare, ldv_2_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  {
  if (tmp___0 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___0 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___0 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_instance_suspend_2_21(ldv_2_pm_ops_dev_pm_ops->suspend, ldv_2_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_2_20(ldv_2_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_2_19(ldv_2_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_2_18(ldv_2_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_2_17(ldv_2_pm_ops_dev_pm_ops->resume_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_resume_2_16(ldv_2_pm_ops_dev_pm_ops->resume, ldv_2_device_device);
  }
  goto ldv_41793;
  case_2___0:
  {
  ldv_pm_ops_instance_freeze_2_15(ldv_2_pm_ops_dev_pm_ops->freeze, ldv_2_device_device);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_2_14(ldv_2_pm_ops_dev_pm_ops->freeze_late, ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_2_13(ldv_2_pm_ops_dev_pm_ops->thaw_early, ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_2_12(ldv_2_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_2_11(ldv_2_pm_ops_dev_pm_ops->thaw_noirq, ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_thaw_2_10(ldv_2_pm_ops_dev_pm_ops->thaw, ldv_2_device_device);
  }
  goto ldv_41793;
  case_3___0:
  {
  ldv_pm_ops_instance_poweroff_2_9(ldv_2_pm_ops_dev_pm_ops->poweroff, ldv_2_device_device);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_2_8(ldv_2_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_2_7(ldv_2_pm_ops_dev_pm_ops->restore_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_2_6(ldv_2_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_2_5(ldv_2_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_restore_2_4(ldv_2_pm_ops_dev_pm_ops->restore, ldv_2_device_device);
  }
  goto ldv_41793;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_41793: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_2_3(ldv_2_pm_ops_dev_pm_ops->complete, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_4: ;
  return;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_connector_funcs_dummy_resourceless_instance_4(void *arg0 )
{
  void (*ldv_4_callback_destroy)(struct drm_connector * ) ;
  enum drm_connector_status (*ldv_4_callback_detect)(struct drm_connector * , _Bool ) ;
  void (*ldv_4_callback_dpms)(struct drm_connector * , int ) ;
  int (*ldv_4_callback_fill_modes)(struct drm_connector * , unsigned int , unsigned int ) ;
  struct drm_connector *ldv_4_container_struct_drm_connector_ptr ;
  int ldv_4_ldv_param_10_1_default ;
  unsigned int ldv_4_ldv_param_13_1_default ;
  unsigned int ldv_4_ldv_param_13_2_default ;
  _Bool ldv_4_ldv_param_7_1_default ;
  int tmp ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_13(ldv_4_callback_fill_modes, ldv_4_container_struct_drm_connector_ptr,
                                                ldv_4_ldv_param_13_1_default, ldv_4_ldv_param_13_2_default);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_10(ldv_4_callback_dpms, ldv_4_container_struct_drm_connector_ptr,
                                                ldv_4_ldv_param_10_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_detect, ldv_4_container_struct_drm_connector_ptr,
                                               (int )ldv_4_ldv_param_7_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_destroy, ldv_4_container_struct_drm_connector_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_5: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_connector_helper_funcs_dummy_resourceless_instance_5(void *arg0 )
{
  struct drm_encoder *(*ldv_5_callback_best_encoder)(struct drm_connector * ) ;
  int (*ldv_5_callback_get_modes)(struct drm_connector * ) ;
  enum drm_mode_status (*ldv_5_callback_mode_valid)(struct drm_connector * , struct drm_display_mode * ) ;
  struct drm_connector *ldv_5_container_struct_drm_connector_ptr ;
  struct drm_display_mode *ldv_5_container_struct_drm_display_mode_ptr ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_5_container_struct_drm_connector_ptr = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp = ldv_undef_int();
  }
  {
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
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_mode_valid, ldv_5_container_struct_drm_connector_ptr,
                                               ldv_5_container_struct_drm_display_mode_ptr);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_get_modes, ldv_5_container_struct_drm_connector_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_best_encoder, ldv_5_container_struct_drm_connector_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_4: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_crtc_helper_funcs_dummy_resourceless_instance_6(void *arg0 )
{
  void (*ldv_6_callback_commit)(struct drm_crtc * ) ;
  int (*ldv_6_callback_cursor_move)(struct drm_crtc * , int , int ) ;
  int (*ldv_6_callback_cursor_set)(struct drm_crtc * , struct drm_file * , unsigned int ,
                                   unsigned int , unsigned int ) ;
  void (*ldv_6_callback_destroy)(struct drm_crtc * ) ;
  void (*ldv_6_callback_disable)(struct drm_crtc * ) ;
  void (*ldv_6_callback_dpms)(struct drm_crtc * , int ) ;
  void (*ldv_6_callback_gamma_set)(struct drm_crtc * , unsigned short * , unsigned short * ,
                                   unsigned short * , unsigned int , unsigned int ) ;
  void (*ldv_6_callback_load_lut)(struct drm_crtc * ) ;
  _Bool (*ldv_6_callback_mode_fixup)(struct drm_crtc * , struct drm_display_mode * ,
                                     struct drm_display_mode * ) ;
  int (*ldv_6_callback_mode_set)(struct drm_crtc * , struct drm_display_mode * , struct drm_display_mode * ,
                                 int , int , struct drm_framebuffer * ) ;
  int (*ldv_6_callback_mode_set_base)(struct drm_crtc * , int , int , struct drm_framebuffer * ) ;
  void (*ldv_6_callback_prepare)(struct drm_crtc * ) ;
  void (*ldv_6_callback_reset)(struct drm_crtc * ) ;
  int (*ldv_6_callback_set_config)(struct drm_mode_set * ) ;
  struct drm_crtc *ldv_6_container_struct_drm_crtc_ptr ;
  struct drm_display_mode *ldv_6_container_struct_drm_display_mode_ptr ;
  struct drm_file *ldv_6_container_struct_drm_file_ptr ;
  struct drm_framebuffer *ldv_6_container_struct_drm_framebuffer_ptr ;
  struct drm_mode_set *ldv_6_container_struct_drm_mode_set_ptr ;
  unsigned int ldv_6_ldv_param_10_2_default ;
  unsigned int ldv_6_ldv_param_10_3_default ;
  unsigned int ldv_6_ldv_param_10_4_default ;
  int ldv_6_ldv_param_15_1_default ;
  unsigned short *ldv_6_ldv_param_18_1_default ;
  unsigned short *ldv_6_ldv_param_18_2_default ;
  unsigned short *ldv_6_ldv_param_18_3_default ;
  unsigned int ldv_6_ldv_param_18_4_default ;
  unsigned int ldv_6_ldv_param_18_5_default ;
  struct drm_display_mode *ldv_6_ldv_param_22_2_default ;
  struct drm_display_mode *ldv_6_ldv_param_25_2_default ;
  int ldv_6_ldv_param_25_3_default ;
  int ldv_6_ldv_param_25_4_default ;
  int ldv_6_ldv_param_28_1_default ;
  int ldv_6_ldv_param_28_2_default ;
  int ldv_6_ldv_param_7_1_default ;
  int ldv_6_ldv_param_7_2_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_6_33(ldv_6_callback_set_config, ldv_6_container_struct_drm_mode_set_ptr);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_6_32(ldv_6_callback_reset, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_6_31(ldv_6_callback_prepare, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_6_28(ldv_6_callback_mode_set_base, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_ldv_param_28_1_default, ldv_6_ldv_param_28_2_default,
                                                ldv_6_container_struct_drm_framebuffer_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_5:
  {
  tmp___0 = ldv_xmalloc(208UL);
  ldv_6_ldv_param_25_2_default = (struct drm_display_mode *)tmp___0;
  ldv_dummy_resourceless_instance_callback_6_25(ldv_6_callback_mode_set, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_container_struct_drm_display_mode_ptr,
                                                ldv_6_ldv_param_25_2_default, ldv_6_ldv_param_25_3_default,
                                                ldv_6_ldv_param_25_4_default, ldv_6_container_struct_drm_framebuffer_ptr);
  ldv_free((void *)ldv_6_ldv_param_25_2_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_6:
  {
  tmp___1 = ldv_xmalloc(208UL);
  ldv_6_ldv_param_22_2_default = (struct drm_display_mode *)tmp___1;
  ldv_dummy_resourceless_instance_callback_6_22(ldv_6_callback_mode_fixup, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_container_struct_drm_display_mode_ptr,
                                                ldv_6_ldv_param_22_2_default);
  ldv_free((void *)ldv_6_ldv_param_22_2_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_6_21(ldv_6_callback_load_lut, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_8:
  {
  tmp___2 = ldv_xmalloc(2UL);
  ldv_6_ldv_param_18_1_default = (unsigned short *)tmp___2;
  tmp___3 = ldv_xmalloc(2UL);
  ldv_6_ldv_param_18_2_default = (unsigned short *)tmp___3;
  tmp___4 = ldv_xmalloc(2UL);
  ldv_6_ldv_param_18_3_default = (unsigned short *)tmp___4;
  ldv_dummy_resourceless_instance_callback_6_18(ldv_6_callback_gamma_set, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_ldv_param_18_1_default, ldv_6_ldv_param_18_2_default,
                                                ldv_6_ldv_param_18_3_default, ldv_6_ldv_param_18_4_default,
                                                ldv_6_ldv_param_18_5_default);
  ldv_free((void *)ldv_6_ldv_param_18_1_default);
  ldv_free((void *)ldv_6_ldv_param_18_2_default);
  ldv_free((void *)ldv_6_ldv_param_18_3_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_6_15(ldv_6_callback_dpms, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_ldv_param_15_1_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_6_14(ldv_6_callback_disable, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_6_13(ldv_6_callback_destroy, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_6_10(ldv_6_callback_cursor_set, ldv_6_container_struct_drm_crtc_ptr,
                                                ldv_6_container_struct_drm_file_ptr,
                                                ldv_6_ldv_param_10_2_default, ldv_6_ldv_param_10_3_default,
                                                ldv_6_ldv_param_10_4_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_6_7(ldv_6_callback_cursor_move, ldv_6_container_struct_drm_crtc_ptr,
                                               ldv_6_ldv_param_7_1_default, ldv_6_ldv_param_7_2_default);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_commit, ldv_6_container_struct_drm_crtc_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  goto ldv_call_6;
  case_15: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_encoder_helper_funcs_dummy_resourceless_instance_7(void *arg0 )
{
  void (*ldv_7_callback_commit)(struct drm_encoder * ) ;
  void (*ldv_7_callback_destroy)(struct drm_encoder * ) ;
  void (*ldv_7_callback_dpms)(struct drm_encoder * , int ) ;
  _Bool (*ldv_7_callback_mode_fixup)(struct drm_encoder * , struct drm_display_mode * ,
                                     struct drm_display_mode * ) ;
  void (*ldv_7_callback_mode_set)(struct drm_encoder * , struct drm_display_mode * ,
                                  struct drm_display_mode * ) ;
  void (*ldv_7_callback_prepare)(struct drm_encoder * ) ;
  struct drm_display_mode *ldv_7_container_struct_drm_display_mode_ptr ;
  struct drm_encoder *ldv_7_container_struct_drm_encoder_ptr ;
  struct drm_display_mode *ldv_7_ldv_param_11_2_default ;
  struct drm_display_mode *ldv_7_ldv_param_14_2_default ;
  int ldv_7_ldv_param_8_1_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_7_17(ldv_7_callback_prepare, ldv_7_container_struct_drm_encoder_ptr);
  }
  goto ldv_call_7;
  case_2:
  {
  tmp___0 = ldv_xmalloc(208UL);
  ldv_7_ldv_param_14_2_default = (struct drm_display_mode *)tmp___0;
  ldv_dummy_resourceless_instance_callback_7_14(ldv_7_callback_mode_set, ldv_7_container_struct_drm_encoder_ptr,
                                                ldv_7_container_struct_drm_display_mode_ptr,
                                                ldv_7_ldv_param_14_2_default);
  ldv_free((void *)ldv_7_ldv_param_14_2_default);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  case_3:
  {
  tmp___1 = ldv_xmalloc(208UL);
  ldv_7_ldv_param_11_2_default = (struct drm_display_mode *)tmp___1;
  ldv_dummy_resourceless_instance_callback_7_11(ldv_7_callback_mode_fixup, ldv_7_container_struct_drm_encoder_ptr,
                                                ldv_7_container_struct_drm_display_mode_ptr,
                                                ldv_7_ldv_param_11_2_default);
  ldv_free((void *)ldv_7_ldv_param_11_2_default);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_7_8(ldv_7_callback_dpms, ldv_7_container_struct_drm_encoder_ptr,
                                               ldv_7_ldv_param_8_1_default);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_7_7(ldv_7_callback_destroy, ldv_7_container_struct_drm_encoder_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_commit, ldv_7_container_struct_drm_encoder_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  goto ldv_call_7;
  case_7: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_fb_helper_funcs_dummy_resourceless_instance_8(void *arg0 )
{
  int (*ldv_8_callback_fb_probe)(struct drm_fb_helper * , struct drm_fb_helper_surface_size * ) ;
  void (*ldv_8_callback_gamma_get)(struct drm_crtc * , unsigned short * , unsigned short * ,
                                   unsigned short * , int ) ;
  void (*ldv_8_callback_gamma_set)(struct drm_crtc * , unsigned short , unsigned short ,
                                   unsigned short , int ) ;
  struct drm_crtc *ldv_8_container_struct_drm_crtc_ptr ;
  struct drm_fb_helper *ldv_8_container_struct_drm_fb_helper_ptr ;
  struct drm_fb_helper_surface_size *ldv_8_container_struct_drm_fb_helper_surface_size_ptr ;
  unsigned short ldv_8_ldv_param_10_1_default ;
  unsigned short ldv_8_ldv_param_10_2_default ;
  unsigned short ldv_8_ldv_param_10_3_default ;
  int ldv_8_ldv_param_10_4_default ;
  unsigned short *ldv_8_ldv_param_7_1_default ;
  unsigned short *ldv_8_ldv_param_7_2_default ;
  unsigned short *ldv_8_ldv_param_7_3_default ;
  int ldv_8_ldv_param_7_4_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
  {
  tmp = ldv_undef_int();
  }
  {
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
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_8_10(ldv_8_callback_gamma_set, ldv_8_container_struct_drm_crtc_ptr,
                                                (int )ldv_8_ldv_param_10_1_default,
                                                (int )ldv_8_ldv_param_10_2_default,
                                                (int )ldv_8_ldv_param_10_3_default,
                                                ldv_8_ldv_param_10_4_default);
  }
  goto ldv_call_8;
  case_2:
  {
  tmp___0 = ldv_xmalloc(2UL);
  ldv_8_ldv_param_7_1_default = (unsigned short *)tmp___0;
  tmp___1 = ldv_xmalloc(2UL);
  ldv_8_ldv_param_7_2_default = (unsigned short *)tmp___1;
  tmp___2 = ldv_xmalloc(2UL);
  ldv_8_ldv_param_7_3_default = (unsigned short *)tmp___2;
  ldv_dummy_resourceless_instance_callback_8_7(ldv_8_callback_gamma_get, ldv_8_container_struct_drm_crtc_ptr,
                                               ldv_8_ldv_param_7_1_default, ldv_8_ldv_param_7_2_default,
                                               ldv_8_ldv_param_7_3_default, ldv_8_ldv_param_7_4_default);
  ldv_free((void *)ldv_8_ldv_param_7_1_default);
  ldv_free((void *)ldv_8_ldv_param_7_2_default);
  ldv_free((void *)ldv_8_ldv_param_7_3_default);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_fb_probe, ldv_8_container_struct_drm_fb_helper_ptr,
                                               ldv_8_container_struct_drm_fb_helper_surface_size_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
  goto ldv_call_8;
  case_4: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_drm_framebuffer_funcs_dummy_resourceless_instance_9(void *arg0 )
{
  void (*ldv_9_callback_destroy)(struct drm_framebuffer * ) ;
  struct drm_framebuffer *ldv_9_container_struct_drm_framebuffer_ptr ;
  int tmp ;
  {
  goto ldv_call_9;
  return;
  ldv_call_9:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_destroy, ldv_9_container_struct_drm_framebuffer_ptr);
    }
    goto ldv_call_9;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_drm_mode_config_funcs_dummy_resourceless_instance_10(void *arg0 )
{
  struct drm_framebuffer *(*ldv_10_callback_fb_create)(struct drm_device * , struct drm_file * ,
                                                       struct drm_mode_fb_cmd2 * ) ;
  struct drm_device *ldv_10_container_struct_drm_device_ptr ;
  struct drm_file *ldv_10_container_struct_drm_file_ptr ;
  struct drm_mode_fb_cmd2 *ldv_10_container_struct_drm_mode_fb_cmd2_ptr ;
  int tmp ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_fb_create, ldv_10_container_struct_drm_device_ptr,
                                                  ldv_10_container_struct_drm_file_ptr,
                                                  ldv_10_container_struct_drm_mode_fb_cmd2_ptr);
    }
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_ttm_bo_driver_dummy_resourceless_instance_11(void *arg0 )
{
  void (*ldv_11_callback_destroy)(struct ttm_tt * ) ;
  void (*ldv_11_callback_evict_flags)(struct ttm_buffer_object * , struct ttm_placement * ) ;
  int (*ldv_11_callback_init_mem_type)(struct ttm_bo_device * , unsigned int , struct ttm_mem_type_manager * ) ;
  void (*ldv_11_callback_io_mem_free)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
  int (*ldv_11_callback_io_mem_reserve)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
  int (*ldv_11_callback_move)(struct ttm_buffer_object * , _Bool , _Bool , _Bool ,
                              struct ttm_mem_reg * ) ;
  struct ttm_tt *(*ldv_11_callback_ttm_tt_create)(struct ttm_bo_device * , unsigned long ,
                                                  unsigned int , struct page * ) ;
  int (*ldv_11_callback_ttm_tt_populate)(struct ttm_tt * ) ;
  void (*ldv_11_callback_ttm_tt_unpopulate)(struct ttm_tt * ) ;
  int (*ldv_11_callback_verify_access)(struct ttm_buffer_object * , struct file * ) ;
  struct file *ldv_11_container_struct_file_ptr ;
  struct page *ldv_11_container_struct_page_ptr ;
  struct ttm_bo_device *ldv_11_container_struct_ttm_bo_device_ptr ;
  struct ttm_buffer_object *ldv_11_container_struct_ttm_buffer_object_ptr ;
  struct ttm_mem_reg *ldv_11_container_struct_ttm_mem_reg_ptr ;
  struct ttm_mem_type_manager *ldv_11_container_struct_ttm_mem_type_manager_ptr ;
  struct ttm_placement *ldv_11_container_struct_ttm_placement_ptr ;
  struct ttm_tt *ldv_11_container_struct_ttm_tt_ptr ;
  _Bool ldv_11_ldv_param_13_1_default ;
  _Bool ldv_11_ldv_param_13_2_default ;
  _Bool ldv_11_ldv_param_13_3_default ;
  unsigned long ldv_11_ldv_param_16_1_default ;
  unsigned int ldv_11_ldv_param_16_2_default ;
  unsigned int ldv_11_ldv_param_8_1_default ;
  int tmp ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_11_21(ldv_11_callback_verify_access, ldv_11_container_struct_ttm_buffer_object_ptr,
                                                 ldv_11_container_struct_file_ptr);
  }
  goto ldv_call_11;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_11_20(ldv_11_callback_ttm_tt_unpopulate,
                                                 ldv_11_container_struct_ttm_tt_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_11_19(ldv_11_callback_ttm_tt_populate,
                                                 ldv_11_container_struct_ttm_tt_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_11_16(ldv_11_callback_ttm_tt_create, ldv_11_container_struct_ttm_bo_device_ptr,
                                                 ldv_11_ldv_param_16_1_default, ldv_11_ldv_param_16_2_default,
                                                 ldv_11_container_struct_page_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_11_13(ldv_11_callback_move, ldv_11_container_struct_ttm_buffer_object_ptr,
                                                 (int )ldv_11_ldv_param_13_1_default,
                                                 (int )ldv_11_ldv_param_13_2_default,
                                                 (int )ldv_11_ldv_param_13_3_default,
                                                 ldv_11_container_struct_ttm_mem_reg_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_11_12(ldv_11_callback_io_mem_reserve, ldv_11_container_struct_ttm_bo_device_ptr,
                                                 ldv_11_container_struct_ttm_mem_reg_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_11_11(ldv_11_callback_io_mem_free, ldv_11_container_struct_ttm_bo_device_ptr,
                                                 ldv_11_container_struct_ttm_mem_reg_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_11_8(ldv_11_callback_init_mem_type, ldv_11_container_struct_ttm_bo_device_ptr,
                                                ldv_11_ldv_param_8_1_default, ldv_11_container_struct_ttm_mem_type_manager_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_11_7(ldv_11_callback_evict_flags, ldv_11_container_struct_ttm_buffer_object_ptr,
                                                ldv_11_container_struct_ttm_placement_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_destroy, ldv_11_container_struct_ttm_tt_ptr);
  }
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  goto ldv_call_11;
  case_11: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
static int ldv_ldv_post_init_112(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_113(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_114(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_115(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_116(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_117(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
static void ldv_ldv_pre_probe_118(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_119(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_err_ptr(long error ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(struct mutex *lock ) ;
extern int printk(char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void *ERR_PTR(long error ) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
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
  goto ldv_6246;
  case_2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_6246;
  case_4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_6246;
  case_8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_6246;
  switch_default:
  {
  __cmpxchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_6246: ;
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
  ldv_6275:
  {
  tmp = ldv__builtin_expect(c == u, 0L);
  }
  if (tmp != 0L) {
    goto ldv_6274;
  } else {
  }
  {
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  }
  if (tmp___0 != 0L) {
    goto ldv_6274;
  } else {
  }
  c = old;
  goto ldv_6275;
  ldv_6274: ;
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
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/kref.h", 71);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  }
  if (tmp___0 != 0) {
    {
    (*release)(kref);
    }
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  {
  tmp = kref_sub(kref, 1U, release);
  }
  return (tmp);
}
}
extern unsigned int ioread8(void * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite8(u8 , void * ) ;
extern void iowrite16(u16 , void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void drm_mode_config_init(struct drm_device * ) ;
extern void drm_mode_config_cleanup(struct drm_device * ) ;
extern int drm_framebuffer_init(struct drm_device * , struct drm_framebuffer * , struct drm_framebuffer_funcs const * ) ;
extern void drm_framebuffer_cleanup(struct drm_framebuffer * ) ;
__inline static __u64 drm_vma_node_offset_addr(struct drm_vma_offset_node *node )
{
  {
  return ((unsigned long long )node->vm_node.start << 12);
}
}
extern void drm_err(char const * , ...) ;
extern void ttm_bo_unref(struct ttm_buffer_object ** ) ;
extern void drm_gem_object_free(struct kref * ) ;
__inline static void drm_gem_object_unreference(struct drm_gem_object *obj )
{
  {
  if ((unsigned long )obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    kref_put(& obj->refcount, & drm_gem_object_free);
    }
  } else {
  }
  return;
}
}
__inline static void drm_gem_object_unreference_unlocked(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    tmp___1 = atomic_add_unless(& obj->refcount.refcount, -1, 1);
    }
    if (tmp___1 == 0) {
      {
      dev = obj->dev;
      ldv_mutex_lock_110(& dev->struct_mutex);
      tmp = atomic_dec_and_test(& obj->refcount.refcount);
      tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
      }
      if (tmp___0 != 0L) {
        {
        drm_gem_object_free(& obj->refcount);
        }
      } else {
      }
      {
      ldv_mutex_unlock_111(& dev->struct_mutex);
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern int drm_gem_handle_create(struct drm_file * , struct drm_gem_object * , u32 * ) ;
extern struct drm_gem_object *drm_gem_object_lookup(struct drm_device * , struct drm_file * ,
                                                    u32 ) ;
__inline static u32 ast_read32(struct ast_private *ast , u32 reg )
{
  u32 val ;
  {
  {
  val = 0U;
  val = ioread32(ast->regs + (unsigned long )reg);
  }
  return (val);
}
}
__inline static u8 ast_io_read8(struct ast_private *ast , u32 reg )
{
  u8 val ;
  unsigned int tmp ;
  {
  {
  val = 0U;
  tmp = ioread8(ast->ioregs + (unsigned long )reg);
  val = (u8 )tmp;
  }
  return (val);
}
}
__inline static void ast_write32(struct ast_private *ast , u32 reg , u32 val )
{
  {
  {
  iowrite32(val, ast->regs + (unsigned long )reg);
  }
  return;
}
}
__inline static void ast_io_write8(struct ast_private *ast , u32 reg , u8 val )
{
  {
  {
  iowrite8((int )val, ast->ioregs + (unsigned long )reg);
  }
  return;
}
}
__inline static void ast_io_write16(struct ast_private *ast , u32 reg , u16 val )
{
  {
  {
  iowrite16((int )val, ast->ioregs + (unsigned long )reg);
  }
  return;
}
}
__inline static void ast_set_index_reg(struct ast_private *ast , uint32_t base , uint8_t index ,
                                       uint8_t val )
{
  {
  {
  ast_io_write16(ast, base, (int )((u16 )((int )((short )((int )val << 8)) | (int )((short )index))));
  }
  return;
}
}
void ast_set_index_reg_mask(struct ast_private *ast , uint32_t base , uint8_t index ,
                            uint8_t mask , uint8_t val ) ;
uint8_t ast_get_index_reg(struct ast_private *ast , uint32_t base , uint8_t index ) ;
uint8_t ast_get_index_reg_mask(struct ast_private *ast , uint32_t base , uint8_t index ,
                               uint8_t mask ) ;
__inline static void ast_open_key(struct ast_private *ast )
{
  {
  {
  ast_set_index_reg(ast, 84U, 128, 168);
  }
  return;
}
}
int ast_mode_init(struct drm_device *dev ) ;
void ast_mode_fini(struct drm_device *dev ) ;
int ast_framebuffer_init(struct drm_device *dev , struct ast_framebuffer *ast_fb ,
                         struct drm_mode_fb_cmd2 *mode_cmd , struct drm_gem_object *obj ) ;
int ast_fbdev_init(struct drm_device *dev ) ;
void ast_fbdev_fini(struct drm_device *dev ) ;
int ast_mm_init(struct ast_private *ast ) ;
void ast_mm_fini(struct ast_private *ast ) ;
int ast_bo_create(struct drm_device *dev , int size , int align , uint32_t flags ,
                  struct ast_bo **pastbo ) ;
int ast_gem_create(struct drm_device *dev , u32 size , bool iskernel , struct drm_gem_object **obj ) ;
void ast_enable_vga(struct drm_device *dev ) ;
void ast_enable_mmio(struct drm_device *dev ) ;
bool ast_is_vga_enabled(struct drm_device *dev ) ;
bool ast_backup_fw(struct drm_device *dev , u8 *addr , u32 size ) ;
extern void drm_helper_mode_fill_fb_struct(struct drm_framebuffer * , struct drm_mode_fb_cmd2 * ) ;
void ast_set_index_reg_mask(struct ast_private *ast , uint32_t base , uint8_t index ,
                            uint8_t mask , uint8_t val )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  {
  ast_io_write8(ast, base, (int )index);
  tmp___0 = ast_io_read8(ast, base + 1U);
  tmp = (u8 )(((int )tmp___0 & (int )mask) | (int )val);
  ast_set_index_reg(ast, base, (int )index, (int )tmp);
  }
  return;
}
}
uint8_t ast_get_index_reg(struct ast_private *ast , uint32_t base , uint8_t index )
{
  uint8_t ret ;
  {
  {
  ast_io_write8(ast, base, (int )index);
  ret = ast_io_read8(ast, base + 1U);
  }
  return (ret);
}
}
uint8_t ast_get_index_reg_mask(struct ast_private *ast , uint32_t base , uint8_t index ,
                               uint8_t mask )
{
  uint8_t ret ;
  u8 tmp ;
  {
  {
  ast_io_write8(ast, base, (int )index);
  tmp = ast_io_read8(ast, base + 1U);
  ret = (uint8_t )((int )tmp & (int )mask);
  }
  return (ret);
}
}
static int ast_detect_chip(struct drm_device *dev , bool *need_post )
{
  struct ast_private *ast ;
  uint32_t data ;
  uint32_t jreg ;
  uint32_t data___0 ;
  bool tmp ;
  int tmp___0 ;
  uint8_t tmp___1 ;
  uint8_t tmp___2 ;
  uint8_t tmp___3 ;
  void *tmp___4 ;
  bool tmp___5 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_open_key(ast);
  }
  if ((unsigned int )(dev->pdev)->device == 4480U) {
    {
    ast->chip = 2;
    printk("\016[drm] AST 1180 detected\n");
    }
  } else
  if ((unsigned int )(dev->pdev)->revision > 47U) {
    {
    ast->chip = 6;
    printk("\016[drm] AST 2400 detected\n");
    }
  } else
  if ((unsigned int )(dev->pdev)->revision > 31U) {
    {
    ast->chip = 5;
    printk("\016[drm] AST 2300 detected\n");
    }
  } else
  if ((unsigned int )(dev->pdev)->revision > 15U) {
    {
    ast_write32(ast, 61444U, 510525440U);
    ast_write32(ast, 61440U, 1U);
    data___0 = ast_read32(ast, 73852U);
    }
    {
    if ((data___0 & 768U) == 512U) {
      goto case_512;
    } else {
    }
    if ((data___0 & 768U) == 256U) {
      goto case_256;
    } else {
    }
    if ((data___0 & 768U) == 0U) {
      goto case_0;
    } else {
    }
    goto switch_default;
    case_512:
    {
    ast->chip = 2;
    printk("\016[drm] AST 1100 detected\n");
    }
    goto ldv_40246;
    case_256:
    {
    ast->chip = 3;
    printk("\016[drm] AST 2200 detected\n");
    }
    goto ldv_40246;
    case_0:
    {
    ast->chip = 4;
    printk("\016[drm] AST 2150 detected\n");
    }
    goto ldv_40246;
    switch_default:
    {
    ast->chip = 1;
    printk("\016[drm] AST 2100 detected\n");
    }
    goto ldv_40246;
    switch_break: ;
    }
    ldv_40246:
    ast->vga2_clone = 0;
  } else {
    {
    ast->chip = 0;
    printk("\016[drm] AST 2000 detected\n");
    }
  }
  {
  tmp = ast_is_vga_enabled(dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    ast_enable_vga(dev);
    ast_enable_mmio(dev);
    printk("\016[drm] VGA not enabled on entry, requesting chip POST\n");
    *need_post = 1;
    }
  } else {
    *need_post = 0;
  }
  {
  if ((unsigned int )ast->chip == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )ast->chip == 0U) {
    goto case_0___0;
  } else {
  }
  goto switch_default___0;
  case_7:
  ast->support_wide_screen = 1;
  goto ldv_40251;
  case_0___0:
  ast->support_wide_screen = 0;
  goto ldv_40251;
  switch_default___0:
  {
  tmp___1 = ast_get_index_reg_mask(ast, 84U, 208, 255);
  jreg = (uint32_t )tmp___1;
  }
  if ((jreg & 128U) == 0U) {
    ast->support_wide_screen = 1;
  } else
  if ((int )jreg & 1) {
    ast->support_wide_screen = 1;
  } else {
    {
    ast->support_wide_screen = 0;
    ast_write32(ast, 61444U, 510525440U);
    ast_write32(ast, 61440U, 1U);
    data = ast_read32(ast, 73852U);
    data = data & 768U;
    }
    if ((unsigned int )ast->chip == 5U && data == 0U) {
      ast->support_wide_screen = 1;
    } else {
    }
    if ((unsigned int )ast->chip == 6U && data == 256U) {
      ast->support_wide_screen = 1;
    } else {
    }
  }
  goto ldv_40251;
  switch_break___0: ;
  }
  ldv_40251:
  ast->tx_chip_type = 0;
  if (! *need_post) {
    {
    tmp___2 = ast_get_index_reg_mask(ast, 84U, 163, 255);
    jreg = (uint32_t )tmp___2;
    }
    if ((jreg & 128U) != 0U) {
      ast->tx_chip_type = 1;
    } else {
    }
  } else {
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    {
    tmp___3 = ast_get_index_reg_mask(ast, 84U, 209, 255);
    jreg = (uint32_t )tmp___3;
    }
    {
    if (jreg == 4U) {
      goto case_4;
    } else {
    }
    if (jreg == 8U) {
      goto case_8;
    } else {
    }
    if (jreg == 12U) {
      goto case_12;
    } else {
    }
    goto switch_break___1;
    case_4:
    ast->tx_chip_type = 1;
    goto ldv_40255;
    case_8:
    {
    tmp___4 = kzalloc(32768UL, 208U);
    ast->dp501_fw_addr = (u8 *)tmp___4;
    }
    if ((unsigned long )ast->dp501_fw_addr != (unsigned long )((u8 *)0U)) {
      {
      tmp___5 = ast_backup_fw(dev, ast->dp501_fw_addr, 32768U);
      }
      if ((int )tmp___5) {
        {
        kfree((void const *)ast->dp501_fw_addr);
        ast->dp501_fw_addr = (u8 *)0U;
        }
      } else {
      }
    } else {
    }
    case_12:
    ast->tx_chip_type = 3;
    switch_break___1: ;
    }
    ldv_40255: ;
  } else {
  }
  {
  if ((unsigned int )ast->tx_chip_type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )ast->tx_chip_type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default___1;
  case_1:
  {
  printk("\016[drm] Using Sil164 TMDS transmitter\n");
  }
  goto ldv_40259;
  case_3:
  {
  printk("\016[drm] Using DP501 DisplayPort transmitter\n");
  }
  goto ldv_40259;
  switch_default___1:
  {
  printk("\016[drm] Analog VGA only\n");
  }
  switch_break___2: ;
  }
  ldv_40259: ;
  return (0);
}
}
static int ast_get_dram_info(struct drm_device *dev )
{
  struct ast_private *ast ;
  uint32_t data ;
  uint32_t data2 ;
  uint32_t denum ;
  uint32_t num ;
  uint32_t div ;
  uint32_t ref_pll ;
  u32 tmp ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_write32(ast, 61444U, 510525440U);
  ast_write32(ast, 61440U, 1U);
  ast_write32(ast, 65536U, 4234150665U);
  }
  ldv_40272:
  {
  tmp = ast_read32(ast, 65536U);
  }
  if (tmp != 1U) {
    goto ldv_40272;
  } else {
  }
  {
  data = ast_read32(ast, 65540U);
  }
  if ((data & 1024U) != 0U) {
    ast->dram_bus_width = 16U;
  } else {
    ast->dram_bus_width = 32U;
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    {
    if ((data & 3U) == 0U) {
      goto case_0;
    } else {
    }
    if ((data & 3U) == 1U) {
      goto case_1;
    } else {
    }
    if ((data & 3U) == 2U) {
      goto case_2;
    } else {
    }
    if ((data & 3U) == 3U) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0:
    ast->dram_type = 0U;
    goto ldv_40275;
    switch_default: ;
    case_1:
    ast->dram_type = 1U;
    goto ldv_40275;
    case_2:
    ast->dram_type = 6U;
    goto ldv_40275;
    case_3:
    ast->dram_type = 7U;
    goto ldv_40275;
    switch_break: ;
    }
    ldv_40275: ;
  } else {
    {
    if ((data & 12U) == 0U) {
      goto case_0___0;
    } else {
    }
    if ((data & 12U) == 4U) {
      goto case_4;
    } else {
    }
    if ((data & 12U) == 8U) {
      goto case_8;
    } else {
    }
    if ((data & 12U) == 12U) {
      goto case_12;
    } else {
    }
    goto switch_break___0;
    case_0___0: ;
    case_4:
    ast->dram_type = 0U;
    goto ldv_40282;
    case_8: ;
    if ((data & 64U) != 0U) {
      ast->dram_type = 1U;
    } else {
      ast->dram_type = 2U;
    }
    goto ldv_40282;
    case_12:
    ast->dram_type = 3U;
    goto ldv_40282;
    switch_break___0: ;
    }
    ldv_40282: ;
  }
  {
  data = ast_read32(ast, 65824U);
  data2 = ast_read32(ast, 65904U);
  }
  if ((data2 & 8192U) != 0U) {
    ref_pll = 14318U;
  } else {
    ref_pll = 12000U;
  }
  denum = data & 31U;
  num = (data & 16352U) >> 5;
  data = (data & 49152U) >> 14;
  {
  if (data == 3U) {
    goto case_3___0;
  } else {
  }
  if (data == 2U) {
    goto case_2___0;
  } else {
  }
  if (data == 1U) {
    goto case_1___0;
  } else {
  }
  goto switch_default___0;
  case_3___0:
  div = 4U;
  goto ldv_40286;
  case_2___0: ;
  case_1___0:
  div = 2U;
  goto ldv_40286;
  switch_default___0:
  div = 1U;
  goto ldv_40286;
  switch_break___1: ;
  }
  ldv_40286:
  ast->mclk = (((ref_pll * (num + 2U)) / (denum + 2U)) * div) * 1000U;
  return (0);
}
}
static void ast_user_framebuffer_destroy(struct drm_framebuffer *fb )
{
  struct ast_framebuffer *ast_fb ;
  struct drm_framebuffer const *__mptr ;
  {
  __mptr = (struct drm_framebuffer const *)fb;
  ast_fb = (struct ast_framebuffer *)__mptr;
  if ((unsigned long )ast_fb->obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    drm_gem_object_unreference_unlocked(ast_fb->obj);
    }
  } else {
  }
  {
  drm_framebuffer_cleanup(fb);
  kfree((void const *)fb);
  }
  return;
}
}
static struct drm_framebuffer_funcs const ast_fb_funcs = {& ast_user_framebuffer_destroy, 0, 0};
int ast_framebuffer_init(struct drm_device *dev , struct ast_framebuffer *ast_fb ,
                         struct drm_mode_fb_cmd2 *mode_cmd , struct drm_gem_object *obj )
{
  int ret ;
  {
  {
  drm_helper_mode_fill_fb_struct(& ast_fb->base, mode_cmd);
  ast_fb->obj = obj;
  ret = drm_framebuffer_init(dev, & ast_fb->base, & ast_fb_funcs);
  }
  if (ret != 0) {
    {
    drm_err("framebuffer init failed %d\n", ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static struct drm_framebuffer *ast_user_framebuffer_create(struct drm_device *dev ,
                                                           struct drm_file *filp ,
                                                           struct drm_mode_fb_cmd2 *mode_cmd )
{
  struct drm_gem_object *obj ;
  struct ast_framebuffer *ast_fb ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  obj = drm_gem_object_lookup(dev, filp, mode_cmd->handles[0]);
  }
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    {
    tmp = ERR_PTR(-2L);
    }
    return ((struct drm_framebuffer *)tmp);
  } else {
  }
  {
  tmp___0 = kzalloc(144UL, 208U);
  ast_fb = (struct ast_framebuffer *)tmp___0;
  }
  if ((unsigned long )ast_fb == (unsigned long )((struct ast_framebuffer *)0)) {
    {
    drm_gem_object_unreference_unlocked(obj);
    tmp___1 = ERR_PTR(-12L);
    }
    return ((struct drm_framebuffer *)tmp___1);
  } else {
  }
  {
  ret = ast_framebuffer_init(dev, ast_fb, mode_cmd, obj);
  }
  if (ret != 0) {
    {
    drm_gem_object_unreference_unlocked(obj);
    kfree((void const *)ast_fb);
    tmp___2 = ERR_PTR((long )ret);
    }
    return ((struct drm_framebuffer *)tmp___2);
  } else {
  }
  return (& ast_fb->base);
}
}
static struct drm_mode_config_funcs const ast_mode_funcs = {& ast_user_framebuffer_create, 0, 0, 0};
static u32 ast_get_vram_info(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 jreg ;
  u32 vram_size ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_open_key(ast);
  vram_size = 8388608U;
  jreg = ast_get_index_reg_mask(ast, 84U, 170, 255);
  }
  {
  if (((int )jreg & 3) == 0) {
    goto case_0;
  } else {
  }
  if (((int )jreg & 3) == 1) {
    goto case_1;
  } else {
  }
  if (((int )jreg & 3) == 2) {
    goto case_2;
  } else {
  }
  if (((int )jreg & 3) == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  vram_size = 8388608U;
  goto ldv_40320;
  case_1:
  vram_size = 16777216U;
  goto ldv_40320;
  case_2:
  vram_size = 33554432U;
  goto ldv_40320;
  case_3:
  vram_size = 67108864U;
  goto ldv_40320;
  switch_break: ;
  }
  ldv_40320:
  {
  jreg = ast_get_index_reg_mask(ast, 84U, 153, 255);
  }
  {
  if (((int )jreg & 3) == 1) {
    goto case_1___0;
  } else {
  }
  if (((int )jreg & 3) == 2) {
    goto case_2___0;
  } else {
  }
  if (((int )jreg & 3) == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_break___0;
  case_1___0:
  vram_size = vram_size - 1048576U;
  goto ldv_40325;
  case_2___0:
  vram_size = vram_size - 2097152U;
  goto ldv_40325;
  case_3___0:
  vram_size = vram_size - 4194304U;
  goto ldv_40325;
  switch_break___0: ;
  }
  ldv_40325: ;
  return (vram_size);
}
}
int ast_driver_load(struct drm_device *dev , unsigned long flags )
{
  struct ast_private *ast ;
  bool need_post ;
  int ret ;
  void *tmp ;
  {
  {
  ret = 0;
  tmp = kzalloc(2824UL, 208U);
  ast = (struct ast_private *)tmp;
  }
  if ((unsigned long )ast == (unsigned long )((struct ast_private *)0)) {
    return (-12);
  } else {
  }
  {
  dev->dev_private = (void *)ast;
  ast->dev = dev;
  ast->regs = pci_iomap(dev->pdev, 1, 0UL);
  }
  if ((unsigned long )ast->regs == (unsigned long )((void *)0)) {
    ret = -5;
    goto out_free;
  } else {
  }
  if (((dev->pdev)->resource[2].flags & 256UL) == 0UL) {
    {
    printk("\016[drm] platform has no IO space, trying MMIO\n");
    ast->ioregs = ast->regs + 896UL;
    }
  } else {
  }
  if ((unsigned long )ast->ioregs == (unsigned long )((void *)0)) {
    {
    ast->ioregs = pci_iomap(dev->pdev, 2, 0UL);
    }
    if ((unsigned long )ast->ioregs == (unsigned long )((void *)0)) {
      ret = -5;
      goto out_free;
    } else {
    }
  } else {
  }
  {
  ast_detect_chip(dev, & need_post);
  }
  if ((unsigned int )ast->chip != 7U) {
    {
    ast_get_dram_info(dev);
    ast->vram_size = ast_get_vram_info(dev);
    printk("\016[drm] dram %d %d %d %08x\n", ast->mclk, ast->dram_type, ast->dram_bus_width,
           ast->vram_size);
    }
  } else {
  }
  if ((int )need_post) {
    {
    ast_post_gpu(dev);
    }
  } else {
  }
  {
  ret = ast_mm_init(ast);
  }
  if (ret != 0) {
    goto out_free;
  } else {
  }
  {
  drm_mode_config_init(dev);
  dev->mode_config.funcs = & ast_mode_funcs;
  dev->mode_config.min_width = 0;
  dev->mode_config.min_height = 0;
  dev->mode_config.preferred_depth = 24U;
  dev->mode_config.prefer_shadow = 1U;
  }
  if (((((unsigned int )ast->chip == 1U || (unsigned int )ast->chip == 3U) || (unsigned int )ast->chip == 5U) || (unsigned int )ast->chip == 6U) || (unsigned int )ast->chip == 7U) {
    dev->mode_config.max_width = 1920;
    dev->mode_config.max_height = 2048;
  } else {
    dev->mode_config.max_width = 1600;
    dev->mode_config.max_height = 1200;
  }
  {
  ret = ast_mode_init(dev);
  }
  if (ret != 0) {
    goto out_free;
  } else {
  }
  {
  ret = ast_fbdev_init(dev);
  }
  if (ret != 0) {
    goto out_free;
  } else {
  }
  return (0);
  out_free:
  {
  kfree((void const *)ast);
  dev->dev_private = (void *)0;
  }
  return (ret);
}
}
int ast_driver_unload(struct drm_device *dev )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  kfree((void const *)ast->dp501_fw_addr);
  ast_mode_fini(dev);
  ast_fbdev_fini(dev);
  drm_mode_config_cleanup(dev);
  ast_mm_fini(ast);
  pci_iounmap(dev->pdev, ast->ioregs);
  pci_iounmap(dev->pdev, ast->regs);
  kfree((void const *)ast);
  }
  return (0);
}
}
int ast_gem_create(struct drm_device *dev , u32 size , bool iskernel , struct drm_gem_object **obj )
{
  struct ast_bo *astbo ;
  int ret ;
  unsigned long __y ;
  {
  *obj = (struct drm_gem_object *)0;
  __y = 4096UL;
  size = (u32 )((((unsigned long )size + 4095UL) / 4096UL) * 4096UL);
  if (size == 0U) {
    return (-22);
  } else {
  }
  {
  ret = ast_bo_create(dev, (int )size, 0, 0U, & astbo);
  }
  if (ret != 0) {
    if (ret != -512) {
      {
      drm_err("failed to allocate GEM object\n");
      }
    } else {
    }
    return (ret);
  } else {
  }
  *obj = & astbo->gem;
  return (0);
}
}
int ast_dumb_create(struct drm_file *file , struct drm_device *dev , struct drm_mode_create_dumb *args )
{
  int ret ;
  struct drm_gem_object *gobj ;
  u32 handle ;
  {
  {
  args->pitch = args->width * ((args->bpp + 7U) / 8U);
  args->size = (uint64_t )(args->pitch * args->height);
  ret = ast_gem_create(dev, (u32 )args->size, 0, & gobj);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = drm_gem_handle_create(file, gobj, & handle);
  drm_gem_object_unreference_unlocked(gobj);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  args->handle = handle;
  return (0);
}
}
static void ast_bo_unref(struct ast_bo **bo )
{
  struct ttm_buffer_object *tbo ;
  {
  if ((unsigned long )*bo == (unsigned long )((struct ast_bo *)0)) {
    return;
  } else {
  }
  {
  tbo = & (*bo)->bo;
  ttm_bo_unref(& tbo);
  *bo = (struct ast_bo *)0;
  }
  return;
}
}
void ast_gem_free_object(struct drm_gem_object *obj )
{
  struct ast_bo *ast_bo___0 ;
  struct drm_gem_object const *__mptr ;
  {
  {
  __mptr = (struct drm_gem_object const *)obj;
  ast_bo___0 = (struct ast_bo *)__mptr + 0xfffffffffffffc58UL;
  ast_bo_unref(& ast_bo___0);
  }
  return;
}
}
__inline static u64 ast_bo_mmap_offset(struct ast_bo *bo )
{
  __u64 tmp ;
  {
  {
  tmp = drm_vma_node_offset_addr(& bo->bo.vma_node);
  }
  return (tmp);
}
}
int ast_dumb_mmap_offset(struct drm_file *file , struct drm_device *dev , uint32_t handle ,
                         uint64_t *offset )
{
  struct drm_gem_object *obj ;
  int ret ;
  struct ast_bo *bo ;
  struct drm_gem_object const *__mptr ;
  {
  {
  ldv_mutex_lock_112(& dev->struct_mutex);
  obj = drm_gem_object_lookup(dev, file, handle);
  }
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    ret = -2;
    goto out_unlock;
  } else {
  }
  {
  __mptr = (struct drm_gem_object const *)obj;
  bo = (struct ast_bo *)__mptr + 0xfffffffffffffc58UL;
  *offset = ast_bo_mmap_offset(bo);
  drm_gem_object_unreference(obj);
  ret = 0;
  }
  out_unlock:
  {
  ldv_mutex_unlock_113(& dev->struct_mutex);
  }
  return (ret);
}
}
void ldv_dummy_resourceless_instance_callback_10_3(struct drm_framebuffer *(*arg0)(struct drm_device * ,
                                                                                   struct drm_file * ,
                                                                                   struct drm_mode_fb_cmd2 * ) ,
                                                   struct drm_device *arg1 , struct drm_file *arg2 ,
                                                   struct drm_mode_fb_cmd2 *arg3 )
{
  {
  {
  ast_user_framebuffer_create(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(void (*arg0)(struct drm_framebuffer * ) ,
                                                  struct drm_framebuffer *arg1 )
{
  {
  {
  ast_user_framebuffer_destroy(arg1);
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
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_sub_and_test(i, v);
  }
  return (tmp);
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_dec_and_test(v);
  }
  return (tmp);
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
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_100(struct mutex *ldv_func_arg1 ) ;
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_base_of_ww_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_base_of_ww_mutex(struct mutex *lock ) ;
int ldv_linux_kernel_locking_mutex_mutex_trylock_base_of_ww_mutex(struct mutex *lock ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
__inline static int atomic_cmpxchg___0(atomic_t *v , int old , int new )
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
  goto ldv_6242;
  case_2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_6242;
  case_4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_6242;
  case_8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_6242;
  switch_default:
  {
  __cmpxchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_6242: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless___0(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  {
  c = atomic_read((atomic_t const *)v);
  }
  ldv_6271:
  {
  tmp = ldv__builtin_expect(c == u, 0L);
  }
  if (tmp != 0L) {
    goto ldv_6270;
  } else {
  }
  {
  old = atomic_cmpxchg___0(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  }
  if (tmp___0 != 0L) {
    goto ldv_6270;
  } else {
  }
  c = old;
  goto ldv_6271;
  ldv_6270: ;
  return (c);
}
}
__inline static int atomic_add_unless___0(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  {
  tmp = __atomic_add_unless___0(v, a, u);
  }
  return (tmp != u);
}
}
void ldv_linux_kernel_locking_spinlock_spin_lock_lru_lock_of_ttm_bo_global(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lru_lock_of_ttm_bo_global(void) ;
static int ldv_mutex_trylock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
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
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  dev_set_drvdata(& dev->dev, data);
  }
  return;
}
}
extern void i2c_del_adapter(struct i2c_adapter * ) ;
extern int __ww_mutex_lock(struct ww_mutex * , struct ww_acquire_ctx * ) ;
extern int __ww_mutex_lock_interruptible(struct ww_mutex * , struct ww_acquire_ctx * ) ;
__inline static int ww_mutex_lock(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    {
    tmp = __ww_mutex_lock(lock, ctx);
    }
    return (tmp);
  } else {
  }
  {
  ldv_mutex_lock_99(& lock->base);
  }
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    }
    return (tmp);
  } else {
    {
    tmp___0 = ldv_mutex_lock_interruptible_100(& lock->base);
    }
    return (tmp___0);
  }
}
}
extern void ww_mutex_unlock(struct ww_mutex * ) ;
__inline static int ww_mutex_trylock(struct ww_mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_trylock_101(& lock->base);
  }
  return (tmp);
}
}
extern int drm_mode_vrefresh(struct drm_display_mode const * ) ;
extern void drm_crtc_cleanup(struct drm_crtc * ) ;
extern int drm_connector_init(struct drm_device * , struct drm_connector * , struct drm_connector_funcs const * ,
                              int ) ;
extern int drm_connector_register(struct drm_connector * ) ;
static int ldv_drm_connector_register_113(struct drm_connector *ldv_func_arg1 ) ;
extern void drm_connector_unregister(struct drm_connector * ) ;
static void ldv_drm_connector_unregister_112(struct drm_connector *ldv_func_arg1 ) ;
extern void drm_connector_cleanup(struct drm_connector * ) ;
extern int drm_encoder_init(struct drm_device * , struct drm_encoder * , struct drm_encoder_funcs const * ,
                            int ) ;
extern void drm_encoder_cleanup(struct drm_encoder * ) ;
extern struct edid *drm_get_edid(struct drm_connector * , struct i2c_adapter * ) ;
extern int drm_add_edid_modes(struct drm_connector * , struct edid * ) ;
extern int drm_mode_connector_update_edid_property(struct drm_connector * , struct edid const * ) ;
extern int drm_mode_connector_attach_encoder(struct drm_connector * , struct drm_encoder * ) ;
extern int drm_mode_crtc_set_gamma_size(struct drm_crtc * , int ) ;
extern struct drm_mode_object *drm_mode_object_find(struct drm_device * , uint32_t ,
                                                    uint32_t ) ;
__inline static struct drm_encoder *drm_encoder_find(struct drm_device *dev , uint32_t id )
{
  struct drm_mode_object *mo ;
  struct drm_mode_object const *__mptr ;
  struct drm_encoder *tmp ;
  {
  {
  mo = drm_mode_object_find(dev, id, 3772834016U);
  }
  if ((unsigned long )mo != (unsigned long )((struct drm_mode_object *)0)) {
    __mptr = (struct drm_mode_object const *)mo;
    tmp = (struct drm_encoder *)__mptr + 0xffffffffffffffe8UL;
  } else {
    tmp = (struct drm_encoder *)0;
  }
  return (tmp);
}
}
extern void drm_ut_debug_printk(char const * , char const * , ...) ;
extern unsigned int drm_debug ;
extern int drm_crtc_helper_set_config(struct drm_mode_set * ) ;
extern void drm_helper_connector_dpms(struct drm_connector * , int ) ;
__inline static void drm_crtc_helper_add(struct drm_crtc *crtc , struct drm_crtc_helper_funcs const *funcs )
{
  {
  crtc->helper_private = (void *)funcs;
  return;
}
}
__inline static void drm_encoder_helper_add(struct drm_encoder *encoder , struct drm_encoder_helper_funcs const *funcs )
{
  {
  encoder->helper_private = (void *)funcs;
  return;
}
}
__inline static void drm_connector_helper_add(struct drm_connector *connector , struct drm_connector_helper_funcs const *funcs )
{
  {
  connector->helper_private = (void *)funcs;
  return;
}
}
extern int drm_helper_probe_single_connector_modes(struct drm_connector * , uint32_t ,
                                                   uint32_t ) ;
extern int drm_crtc_init(struct drm_device * , struct drm_crtc * , struct drm_crtc_funcs const * ) ;
extern void ttm_bo_add_to_lru(struct ttm_buffer_object * ) ;
__inline static void *ttm_kmap_obj_virtual(struct ttm_bo_kmap_obj *map , bool *is_iomem )
{
  {
  *is_iomem = ((unsigned int )map->bo_kmap_type & 128U) != 0U;
  return (map->virtual);
}
}
extern int ttm_bo_kmap(struct ttm_buffer_object * , unsigned long , unsigned long ,
                       struct ttm_bo_kmap_obj * ) ;
extern void ttm_bo_kunmap(struct ttm_bo_kmap_obj * ) ;
extern void ttm_bo_del_sub_from_lru(struct ttm_buffer_object * ) ;
__inline static int __ttm_bo_reserve(struct ttm_buffer_object *bo , bool interruptible ,
                                     bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    {
    tmp___1 = ww_mutex_trylock(& (bo->resv)->lock);
    success = tmp___1 != 0;
    }
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    {
    ret = ww_mutex_lock_interruptible(& (bo->resv)->lock, ticket);
    }
  } else {
    {
    ret = ww_mutex_lock(& (bo->resv)->lock, ticket);
    }
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve(struct ttm_buffer_object *bo , bool interruptible ,
                                   bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                         ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  }
  if (tmp___1 != 0L) {
    {
    ttm_bo_del_sub_from_lru(bo);
    }
  } else {
  }
  return (ret);
}
}
__inline static void __ttm_bo_unreserve(struct ttm_buffer_object *bo )
{
  {
  {
  ww_mutex_unlock(& (bo->resv)->lock);
  }
  return;
}
}
__inline static void ttm_bo_unreserve(struct ttm_buffer_object *bo )
{
  {
  if ((bo->mem.placement & 2097152U) == 0U) {
    {
    ldv_spin_lock_108(& (bo->glob)->lru_lock);
    ttm_bo_add_to_lru(bo);
    ldv_spin_unlock_109(& (bo->glob)->lru_lock);
    }
  } else {
  }
  {
  __ttm_bo_unreserve(bo);
  }
  return;
}
}
__inline static void drm_gem_object_unreference_unlocked___0(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    tmp___1 = atomic_add_unless___0(& obj->refcount.refcount, -1, 1);
    }
    if (tmp___1 == 0) {
      {
      dev = obj->dev;
      ldv_mutex_lock_110___0(& dev->struct_mutex);
      tmp = atomic_dec_and_test(& obj->refcount.refcount);
      tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
      }
      if (tmp___0 != 0L) {
        {
        drm_gem_object_free(& obj->refcount);
        }
      } else {
      }
      {
      ldv_mutex_unlock_111___0(& dev->struct_mutex);
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern int i2c_bit_add_bus(struct i2c_adapter * ) ;
int ast_bo_pin(struct ast_bo *bo , u32 pl_flag , u64 *gpu_addr ) ;
__inline static int ast_bo_reserve(struct ast_bo *bo , bool no_wait )
{
  int ret ;
  {
  {
  ret = ttm_bo_reserve(& bo->bo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  }
  if (ret != 0) {
    if (ret != -512 && ret != -16) {
      {
      drm_err("reserve failed %p\n", bo);
      }
    } else {
    }
    return (ret);
  } else {
  }
  return (0);
}
}
__inline static void ast_bo_unreserve(struct ast_bo *bo )
{
  {
  {
  ttm_bo_unreserve(& bo->bo);
  }
  return;
}
}
int ast_bo_push_sysram(struct ast_bo *bo ) ;
void ast_set_dp501_video_output(struct drm_device *dev , u8 mode ) ;
bool ast_dp501_read_edid(struct drm_device *dev , u8 *ediddata ) ;
u8 ast_get_dp501_max_clk(struct drm_device *dev ) ;
static struct ast_vbios_dclk_info dclk_table[27U] =
  { {44U, 231U, 3U},
        {149U, 98U, 3U},
        {103U, 99U, 1U},
        {118U, 99U, 1U},
        {238U, 103U, 1U},
        {130U, 98U, 1U},
        {198U, 100U, 1U},
        {148U, 98U, 1U},
        {128U, 100U, 0U},
        {123U, 99U, 0U},
        {103U, 98U, 0U},
        {124U, 98U, 0U},
        {142U, 98U, 0U},
        {133U, 36U, 0U},
        {103U, 34U, 0U},
        {106U, 34U, 0U},
        {77U, 76U, 128U},
        {167U, 120U, 128U},
        {40U, 73U, 128U},
        {55U, 73U, 128U},
        {31U, 69U, 128U},
        {71U, 108U, 128U},
        {37U, 101U, 128U},
        {119U, 88U, 128U},
        {50U, 103U, 128U},
        {106U, 109U, 128U},
        {59U, 44U, 129U}};
static struct ast_vbios_stdtable vbios_stdtable[5U] = { {103U, {0U, 3U, 0U, 2U}, {95U, 79U, 80U, 130U, 85U, 129U, 191U, 31U, 0U, 79U,
                               13U, 14U, 0U, 0U, 0U, 0U, 156U, 142U, 143U, 40U, 31U,
                               150U, 185U, 163U, 255U}, {0U, 1U, 2U, 3U, 4U, 5U, 20U,
                                                         7U, 56U, 57U, 58U, 59U, 60U,
                                                         61U, 62U, 63U, 12U, 0U, 15U,
                                                         8U}, {0U, 0U, 0U, 0U, 0U,
                                                               16U, 14U, 0U, 255U}},
        {227U,
      {1U, 15U, 0U, 6U}, {95U, 79U, 80U, 130U, 85U, 129U, 11U, 62U, 0U, 64U, 0U, 0U,
                          0U, 0U, 0U, 0U, 233U, 139U, 223U, 40U, 0U, 231U, 4U, 227U,
                          255U}, {0U, 1U, 2U, 3U, 4U, 5U, 20U, 7U, 56U, 57U, 58U,
                                  59U, 60U, 61U, 62U, 63U, 1U, 0U, 15U, 0U}, {0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              5U,
                                                                              15U,
                                                                              255U}},
        {47U,
      {1U, 15U, 0U, 14U}, {95U, 79U, 80U, 130U, 84U, 128U, 11U, 62U, 0U, 64U, 0U,
                           0U, 0U, 0U, 0U, 0U, 234U, 140U, 223U, 40U, 64U, 231U, 4U,
                           163U, 255U}, {0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U, 10U,
                                         11U, 12U, 13U, 14U, 15U, 1U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U, 0U, 64U, 5U, 15U, 255U}},
        {47U, {1U, 15U, 0U, 14U}, {95U, 79U, 80U, 130U, 84U, 128U, 11U, 62U, 0U, 64U,
                                0U, 0U, 0U, 0U, 0U, 0U, 234U, 140U, 223U, 40U, 64U,
                                231U, 4U, 163U, 255U}, {0U, 1U, 2U, 3U, 4U, 5U, 6U,
                                                        7U, 8U, 9U, 10U, 11U, 12U,
                                                        13U, 14U, 15U, 1U, 0U, 0U,
                                                        0U}, {0U, 0U, 0U, 0U, 0U,
                                                              0U, 5U, 15U, 255U}},
        {47U,
      {1U, 15U, 0U, 14U}, {95U, 79U, 80U, 130U, 84U, 128U, 11U, 62U, 0U, 64U, 0U,
                           0U, 0U, 0U, 0U, 0U, 234U, 140U, 223U, 40U, 64U, 231U, 4U,
                           163U, 255U}, {0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U, 10U,
                                         11U, 12U, 13U, 14U, 15U, 1U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U, 0U, 0U, 5U, 15U, 255U}}};
static struct ast_vbios_enhtable res_640x480[5U] = { {800U, 640U, 8U, 96U, 525U, 480U, 2U, 2U, 0U, 5169U, 60U, 1U, 46U},
        {832U, 640U, 16U, 40U, 520U, 480U, 1U, 3U, 2U, 5169U, 72U, 2U, 46U},
        {840U, 640U, 16U, 64U, 500U, 480U, 1U, 3U, 2U, 5121U, 75U, 3U, 46U},
        {832U, 640U, 56U, 56U, 509U, 480U, 1U, 3U, 3U, 5121U, 85U, 4U, 46U},
        {832U, 640U, 56U, 56U, 509U, 480U, 1U, 3U, 3U, 5121U, 255U, 4U, 46U}};
static struct ast_vbios_enhtable res_800x600[6U] = { {1024U, 800U, 24U, 72U, 625U, 600U, 1U, 2U, 3U, 10241U, 56U, 1U, 48U},
        {1056U, 800U, 40U, 128U, 628U, 600U, 1U, 4U, 4U, 10241U, 60U, 2U, 48U},
        {1040U, 800U, 56U, 120U, 666U, 600U, 37U, 6U, 6U, 10241U, 72U, 3U, 48U},
        {1056U, 800U, 16U, 80U, 625U, 600U, 1U, 3U, 5U, 10241U, 75U, 4U, 48U},
        {1048U, 800U, 32U, 64U, 631U, 600U, 1U, 3U, 7U, 10241U, 84U, 5U, 48U},
        {1048U, 800U, 32U, 64U, 631U, 600U, 1U, 3U, 7U, 10241U, 255U, 5U, 48U}};
static struct ast_vbios_enhtable res_1024x768[5U] = { {1344U, 1024U, 24U, 136U, 806U, 768U, 3U, 6U, 8U, 5121U, 60U, 1U, 49U},
        {1328U, 1024U, 24U, 136U, 806U, 768U, 3U, 6U, 9U, 5121U, 70U, 2U, 49U},
        {1312U, 1024U, 16U, 96U, 800U, 768U, 1U, 3U, 10U, 10241U, 75U, 3U, 49U},
        {1376U, 1024U, 48U, 96U, 808U, 768U, 1U, 3U, 11U, 10241U, 84U, 4U, 49U},
        {1376U, 1024U, 48U, 96U, 808U, 768U, 1U, 3U, 11U, 10241U, 255U, 4U, 49U}};
static struct ast_vbios_enhtable res_1280x1024[4U] = { {1688U, 1280U, 48U, 112U, 1066U, 1024U, 1U, 3U, 12U, 10241U, 60U, 1U, 50U},
        {1688U, 1280U, 16U, 144U, 1066U, 1024U, 1U, 3U, 13U, 10241U, 75U, 2U, 50U},
        {1728U, 1280U, 64U, 160U, 1072U, 1024U, 1U, 3U, 14U, 10241U, 85U, 3U, 50U},
        {1728U, 1280U, 64U, 160U, 1072U, 1024U, 1U, 3U, 14U, 10241U, 255U, 3U, 50U}};
static struct ast_vbios_enhtable res_1600x1200[2U] = { {2160U, 1600U, 64U, 192U, 1250U, 1200U, 1U, 3U, 15U, 10241U, 60U, 1U, 51U},
        {2160U, 1600U, 64U, 192U, 1250U, 1200U, 1U, 3U, 15U, 10241U, 255U, 1U, 51U}};
static struct ast_vbios_enhtable res_1360x768[2U] = { {1792U, 1360U, 64U, 112U, 795U, 768U, 3U, 6U, 24U, 11017U, 60U, 1U, 57U},
        {1792U, 1360U, 64U, 112U, 795U, 768U, 3U, 6U, 24U, 11017U, 255U, 1U, 57U}};
static struct ast_vbios_enhtable res_1600x900[3U] = { {1760U, 1600U, 48U, 32U, 926U, 900U, 3U, 5U, 25U, 6921U, 60U, 1U, 58U},
        {2112U, 1600U, 88U, 168U, 934U, 900U, 3U, 5U, 26U, 9993U, 60U, 2U, 58U},
        {2112U, 1600U, 88U, 168U, 934U, 900U, 3U, 5U, 26U, 9993U, 255U, 2U, 58U}};
static struct ast_vbios_enhtable res_1920x1080[2U] = { {2200U, 1920U, 88U, 44U, 1125U, 1080U, 4U, 5U, 20U, 6921U, 60U, 1U, 56U},
        {2200U, 1920U, 88U, 44U, 1125U, 1080U, 4U, 5U, 20U, 6921U, 255U, 1U, 56U}};
static struct ast_vbios_enhtable res_1280x800[3U] = { {1440U, 1280U, 48U, 32U, 823U, 800U, 3U, 6U, 21U, 6921U, 60U, 1U, 53U},
        {1680U, 1280U, 72U, 128U, 831U, 800U, 3U, 6U, 17U, 9993U, 60U, 2U, 53U},
        {1680U, 1280U, 72U, 128U, 831U, 800U, 3U, 6U, 17U, 9993U, 255U, 2U, 53U}};
static struct ast_vbios_enhtable res_1440x900[3U] = { {1600U, 1440U, 48U, 32U, 926U, 900U, 3U, 6U, 22U, 6921U, 60U, 1U, 54U},
        {1904U, 1440U, 80U, 152U, 934U, 900U, 3U, 6U, 18U, 9993U, 60U, 2U, 54U},
        {1904U, 1440U, 80U, 152U, 934U, 900U, 3U, 6U, 18U, 9993U, 255U, 2U, 54U}};
static struct ast_vbios_enhtable res_1680x1050[3U] = { {1840U, 1680U, 48U, 32U, 1080U, 1050U, 3U, 6U, 23U, 6921U, 60U, 1U, 55U},
        {2240U, 1680U, 104U, 176U, 1089U, 1050U, 3U, 6U, 19U, 9993U, 60U, 2U, 55U},
        {2240U, 1680U, 104U, 176U, 1089U, 1050U, 3U, 6U, 19U, 9993U, 255U, 2U, 55U}};
static struct ast_vbios_enhtable res_1920x1200[2U] = { {2080U, 1920U, 48U, 32U, 1235U, 1200U, 3U, 6U, 16U, 6921U, 60U, 1U, 52U},
        {2080U, 1920U, 48U, 32U, 1235U, 1200U, 3U, 6U, 16U, 6921U, 255U, 1U, 52U}};
static struct ast_i2c_chan *ast_i2c_create(struct drm_device *dev ) ;
static void ast_i2c_destroy(struct ast_i2c_chan *i2c ) ;
static int ast_cursor_set(struct drm_crtc *crtc , struct drm_file *file_priv , uint32_t handle ,
                          uint32_t width , uint32_t height ) ;
static int ast_cursor_move(struct drm_crtc *crtc , int x , int y ) ;
__inline static void ast_load_palette_index(struct ast_private *ast , u8 index , u8 red ,
                                            u8 green , u8 blue )
{
  {
  {
  ast_io_write8(ast, 72U, (int )index);
  ast_io_read8(ast, 68U);
  ast_io_write8(ast, 73U, (int )red);
  ast_io_read8(ast, 68U);
  ast_io_write8(ast, 73U, (int )green);
  ast_io_read8(ast, 68U);
  ast_io_write8(ast, 73U, (int )blue);
  ast_io_read8(ast, 68U);
  }
  return;
}
}
static void ast_crtc_load_lut(struct drm_crtc *crtc )
{
  struct ast_private *ast ;
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  int i ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  if (! crtc->enabled) {
    return;
  } else {
  }
  i = 0;
  goto ldv_40404;
  ldv_40403:
  {
  ast_load_palette_index(ast, (int )((u8 )i), (int )ast_crtc->lut_r[i], (int )ast_crtc->lut_g[i],
                         (int )ast_crtc->lut_b[i]);
  i = i + 1;
  }
  ldv_40404: ;
  if (i <= 255) {
    goto ldv_40403;
  } else {
  }
  return;
}
}
static bool ast_get_vbios_mode_info(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                                    struct drm_display_mode *adjusted_mode , struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  u32 refresh_rate_index ;
  u32 mode_id ;
  u32 color_index ;
  u32 refresh_rate ;
  u32 hborder ;
  u32 vborder ;
  bool check_sync ;
  struct ast_vbios_enhtable *best ;
  int tmp ;
  struct ast_vbios_enhtable *loop ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  refresh_rate_index = 0U;
  best = (struct ast_vbios_enhtable *)0;
  {
  if (((crtc->primary)->fb)->bits_per_pixel == 8) {
    goto case_8;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 16) {
    goto case_16;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 24) {
    goto case_24;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 32) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_8:
  vbios_mode->std_table = (struct ast_vbios_stdtable *)(& vbios_stdtable) + 2UL;
  color_index = 1U;
  goto ldv_40422;
  case_16:
  vbios_mode->std_table = (struct ast_vbios_stdtable *)(& vbios_stdtable) + 3UL;
  color_index = 3U;
  goto ldv_40422;
  case_24: ;
  case_32:
  vbios_mode->std_table = (struct ast_vbios_stdtable *)(& vbios_stdtable) + 4UL;
  color_index = 4U;
  goto ldv_40422;
  switch_default: ;
  return (0);
  switch_break: ;
  }
  ldv_40422: ;
  {
  if (crtc->mode.crtc_hdisplay == 640) {
    goto case_640;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 800) {
    goto case_800;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1024) {
    goto case_1024;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1280) {
    goto case_1280;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1360) {
    goto case_1360;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1440) {
    goto case_1440;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1600) {
    goto case_1600;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1680) {
    goto case_1680;
  } else {
  }
  if (crtc->mode.crtc_hdisplay == 1920) {
    goto case_1920;
  } else {
  }
  goto switch_default___0;
  case_640:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_640x480) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_800:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_800x600) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_1024:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1024x768) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_1280: ;
  if (crtc->mode.crtc_vdisplay == 800) {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1280x800) + (unsigned long )refresh_rate_index;
  } else {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1280x1024) + (unsigned long )refresh_rate_index;
  }
  goto ldv_40428;
  case_1360:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1360x768) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_1440:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1440x900) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_1600: ;
  if (crtc->mode.crtc_vdisplay == 900) {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1600x900) + (unsigned long )refresh_rate_index;
  } else {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1600x1200) + (unsigned long )refresh_rate_index;
  }
  goto ldv_40428;
  case_1680:
  vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1680x1050) + (unsigned long )refresh_rate_index;
  goto ldv_40428;
  case_1920: ;
  if (crtc->mode.crtc_vdisplay == 1080) {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1920x1080) + (unsigned long )refresh_rate_index;
  } else {
    vbios_mode->enh_table = (struct ast_vbios_enhtable *)(& res_1920x1200) + (unsigned long )refresh_rate_index;
  }
  goto ldv_40428;
  switch_default___0: ;
  return (0);
  switch_break___0: ;
  }
  ldv_40428:
  {
  tmp = drm_mode_vrefresh((struct drm_display_mode const *)mode);
  refresh_rate = (u32 )tmp;
  check_sync = ((vbios_mode->enh_table)->flags & 256U) != 0U;
  }
  ldv_40443:
  loop = vbios_mode->enh_table;
  goto ldv_40439;
  ldv_40440: ;
  if ((int )check_sync && (((((mode->flags & 8U) != 0U && (loop->flags & 8192U) != 0U) || ((mode->flags & 4U) != 0U && (loop->flags & 4096U) != 0U)) || ((mode->flags & 2U) != 0U && (loop->flags & 2048U) != 0U)) || ((int )mode->flags & 1 && (loop->flags & 1024U) != 0U))) {
    loop = loop + 1;
    goto ldv_40439;
  } else {
  }
  if (loop->refresh_rate <= refresh_rate && ((unsigned long )best == (unsigned long )((struct ast_vbios_enhtable *)0) || loop->refresh_rate > best->refresh_rate)) {
    best = loop;
  } else {
  }
  loop = loop + 1;
  ldv_40439: ;
  if (loop->refresh_rate != 255U) {
    goto ldv_40440;
  } else {
  }
  if ((unsigned long )best != (unsigned long )((struct ast_vbios_enhtable *)0) || ! check_sync) {
    goto ldv_40442;
  } else {
  }
  check_sync = 0;
  goto ldv_40443;
  ldv_40442: ;
  if ((unsigned long )best != (unsigned long )((struct ast_vbios_enhtable *)0)) {
    vbios_mode->enh_table = best;
  } else {
  }
  hborder = ((vbios_mode->enh_table)->flags & 32U) != 0U ? 8U : 0U;
  vborder = ((vbios_mode->enh_table)->flags & 16U) != 0U ? 8U : 0U;
  adjusted_mode->crtc_htotal = (int )(vbios_mode->enh_table)->ht;
  adjusted_mode->crtc_hblank_start = (int )((vbios_mode->enh_table)->hde + hborder);
  adjusted_mode->crtc_hblank_end = (int )((vbios_mode->enh_table)->ht - hborder);
  adjusted_mode->crtc_hsync_start = (int )(((vbios_mode->enh_table)->hde + hborder) + (vbios_mode->enh_table)->hfp);
  adjusted_mode->crtc_hsync_end = (int )((((vbios_mode->enh_table)->hde + hborder) + (vbios_mode->enh_table)->hfp) + (vbios_mode->enh_table)->hsync);
  adjusted_mode->crtc_vtotal = (int )(vbios_mode->enh_table)->vt;
  adjusted_mode->crtc_vblank_start = (int )((vbios_mode->enh_table)->vde + vborder);
  adjusted_mode->crtc_vblank_end = (int )((vbios_mode->enh_table)->vt - vborder);
  adjusted_mode->crtc_vsync_start = (int )(((vbios_mode->enh_table)->vde + vborder) + (vbios_mode->enh_table)->vfp);
  adjusted_mode->crtc_vsync_end = (int )((((vbios_mode->enh_table)->vde + vborder) + (vbios_mode->enh_table)->vfp) + (vbios_mode->enh_table)->vsync);
  refresh_rate_index = (vbios_mode->enh_table)->refresh_rate_index;
  mode_id = (vbios_mode->enh_table)->mode_id;
  if ((unsigned int )ast->chip == 7U) {
  } else {
    {
    ast_set_index_reg(ast, 84U, 140, (int )((unsigned char )color_index) << 4U);
    ast_set_index_reg(ast, 84U, 141, (int )((uint8_t )refresh_rate_index));
    ast_set_index_reg(ast, 84U, 142, (int )((uint8_t )mode_id));
    ast_set_index_reg(ast, 84U, 145, 0);
    }
    if (((vbios_mode->enh_table)->flags & 512U) != 0U) {
      {
      ast_set_index_reg(ast, 84U, 145, 168);
      ast_set_index_reg(ast, 84U, 146, (int )((uint8_t )((crtc->primary)->fb)->bits_per_pixel));
      ast_set_index_reg(ast, 84U, 147, (int )((uint8_t )(adjusted_mode->clock / 1000)));
      ast_set_index_reg(ast, 84U, 148, (int )((uint8_t )adjusted_mode->crtc_hdisplay));
      ast_set_index_reg(ast, 84U, 149, (int )((uint8_t )(adjusted_mode->crtc_hdisplay >> 8)));
      ast_set_index_reg(ast, 84U, 150, (int )((uint8_t )adjusted_mode->crtc_vdisplay));
      ast_set_index_reg(ast, 84U, 151, (int )((uint8_t )(adjusted_mode->crtc_vdisplay >> 8)));
      }
    } else {
    }
  }
  return (1);
}
}
static void ast_set_std_reg(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                            struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  struct ast_vbios_stdtable *stdtable ;
  u32 i ;
  u8 jreg ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  stdtable = vbios_mode->std_table;
  jreg = stdtable->misc;
  ast_io_write8(ast, 66U, (int )jreg);
  ast_set_index_reg(ast, 68U, 0, 3);
  i = 0U;
  }
  goto ldv_40454;
  ldv_40453:
  jreg = stdtable->seq[i];
  if (i == 0U) {
    jreg = (u8 )((unsigned int )jreg | 32U);
  } else {
  }
  {
  ast_set_index_reg(ast, 68U, (int )((unsigned int )((uint8_t )i) + 1U), (int )jreg);
  i = i + 1U;
  }
  ldv_40454: ;
  if (i <= 3U) {
    goto ldv_40453;
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 17, 127, 0);
  i = 0U;
  }
  goto ldv_40457;
  ldv_40456:
  {
  ast_set_index_reg(ast, 84U, (int )((uint8_t )i), (int )stdtable->crtc[i]);
  i = i + 1U;
  }
  ldv_40457: ;
  if (i <= 24U) {
    goto ldv_40456;
  } else {
  }
  {
  jreg = ast_io_read8(ast, 90U);
  i = 0U;
  }
  goto ldv_40460;
  ldv_40459:
  {
  jreg = stdtable->ar[i];
  ast_io_write8(ast, 64U, (int )((unsigned char )i));
  ast_io_write8(ast, 64U, (int )jreg);
  i = i + 1U;
  }
  ldv_40460: ;
  if (i <= 19U) {
    goto ldv_40459;
  } else {
  }
  {
  ast_io_write8(ast, 64U, 20);
  ast_io_write8(ast, 64U, 0);
  jreg = ast_io_read8(ast, 90U);
  ast_io_write8(ast, 64U, 32);
  i = 0U;
  }
  goto ldv_40463;
  ldv_40462:
  {
  ast_set_index_reg(ast, 78U, (int )((uint8_t )i), (int )stdtable->gr[i]);
  i = i + 1U;
  }
  ldv_40463: ;
  if (i <= 8U) {
    goto ldv_40462;
  } else {
  }
  return;
}
}
static void ast_set_crtc_reg(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                             struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  u8 jreg05 ;
  u8 jreg07 ;
  u8 jreg09 ;
  u8 jregAC ;
  u8 jregAD ;
  u8 jregAE ;
  u16 temp ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  jreg05 = 0U;
  jreg07 = 0U;
  jreg09 = 0U;
  jregAC = 0U;
  jregAD = 0U;
  jregAE = 0U;
  ast_set_index_reg_mask(ast, 84U, 17, 127, 0);
  temp = (unsigned int )((u16 )(mode->crtc_htotal >> 3)) + 65531U;
  }
  if (((int )temp & 256) != 0) {
    jregAC = (u8 )((unsigned int )jregAC | 1U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 0, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )(mode->crtc_hdisplay >> 3)) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jregAC = (u8 )((unsigned int )jregAC | 4U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 1, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )(mode->crtc_hblank_start >> 3)) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jregAC = (u8 )((unsigned int )jregAC | 16U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 2, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )((unsigned int )((unsigned short )(mode->crtc_hblank_end >> 3)) + 65535U)) & 127U;
  }
  if (((int )temp & 32) != 0) {
    jreg05 = (u8 )((unsigned int )jreg05 | 128U);
  } else {
  }
  if (((int )temp & 64) != 0) {
    jregAD = (u8 )((unsigned int )jregAD | 1U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 3, 224, (int )((uint8_t )temp) & 31);
  temp = (unsigned int )((u16 )(mode->crtc_hsync_start >> 3)) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jregAC = (u8 )((unsigned int )jregAC | 64U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 4, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )((unsigned int )((unsigned short )(mode->crtc_hsync_end >> 3)) + 65535U)) & 63U;
  }
  if (((int )temp & 32) != 0) {
    jregAD = (u8 )((unsigned int )jregAD | 4U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 5, 96, (int )((unsigned char )(((int )((signed char )temp) & 31) | (int )((signed char )jreg05))));
  ast_set_index_reg_mask(ast, 84U, 172, 0, (int )jregAC);
  ast_set_index_reg_mask(ast, 84U, 173, 0, (int )jregAD);
  temp = (unsigned int )((u16 )mode->crtc_vtotal) + 65534U;
  }
  if (((int )temp & 256) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 1U);
  } else {
  }
  if (((int )temp & 512) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 32U);
  } else {
  }
  if (((int )temp & 1024) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 1U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 6, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )mode->crtc_vsync_start) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 4U);
  } else {
  }
  if (((int )temp & 512) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 128U);
  } else {
  }
  if (((int )temp & 1024) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 8U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 16, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )((unsigned int )((unsigned short )mode->crtc_vsync_end) + 65535U)) & 63U;
  }
  if (((int )temp & 16) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 32U);
  } else {
  }
  if (((int )temp & 32) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 64U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 17, 112, (int )((uint8_t )temp) & 15);
  temp = (unsigned int )((u16 )mode->crtc_vdisplay) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 2U);
  } else {
  }
  if (((int )temp & 512) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 64U);
  } else {
  }
  if (((int )temp & 1024) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 2U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 18, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )mode->crtc_vblank_start) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jreg07 = (u8 )((unsigned int )jreg07 | 8U);
  } else {
  }
  if (((int )temp & 512) != 0) {
    jreg09 = (u8 )((unsigned int )jreg09 | 32U);
  } else {
  }
  if (((int )temp & 1024) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 4U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 21, 0, (int )((uint8_t )temp));
  temp = (unsigned int )((u16 )mode->crtc_vblank_end) + 65535U;
  }
  if (((int )temp & 256) != 0) {
    jregAE = (u8 )((unsigned int )jregAE | 16U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 22, 0, (int )((uint8_t )temp));
  ast_set_index_reg_mask(ast, 84U, 7, 0, (int )jreg07);
  ast_set_index_reg_mask(ast, 84U, 9, 223, (int )jreg09);
  ast_set_index_reg_mask(ast, 84U, 174, 0, (int )((unsigned int )jregAE | 128U));
  ast_set_index_reg_mask(ast, 84U, 17, 127, 128);
  }
  return;
}
}
static void ast_set_offset_reg(struct drm_crtc *crtc )
{
  struct ast_private *ast ;
  u16 offset ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  offset = (u16 )(((crtc->primary)->fb)->pitches[0] >> 3);
  ast_set_index_reg(ast, 84U, 19, (int )((uint8_t )offset));
  ast_set_index_reg(ast, 84U, 176, (int )((uint8_t )((int )offset >> 8)) & 63);
  }
  return;
}
}
static void ast_set_dclk_reg(struct drm_device *dev , struct drm_display_mode *mode ,
                             struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  struct ast_vbios_dclk_info *clk_info ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  clk_info = (struct ast_vbios_dclk_info *)(& dclk_table) + (unsigned long )(vbios_mode->enh_table)->dclk_index;
  ast_set_index_reg_mask(ast, 84U, 192, 0, (int )clk_info->param1);
  ast_set_index_reg_mask(ast, 84U, 193, 0, (int )clk_info->param2);
  ast_set_index_reg_mask(ast, 84U, 187, 15, (int )((uint8_t )(((int )((signed char )clk_info->param3) & -128) | (int )((signed char )(((int )clk_info->param3 & 3) << 4)))));
  }
  return;
}
}
static void ast_set_ext_reg(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                            struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  u8 jregA0 ;
  u8 jregA3 ;
  u8 jregA8 ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  jregA0 = 0U;
  jregA3 = 0U;
  jregA8 = 0U;
  {
  if (((crtc->primary)->fb)->bits_per_pixel == 8) {
    goto case_8;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 15) {
    goto case_15;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 16) {
    goto case_16;
  } else {
  }
  if (((crtc->primary)->fb)->bits_per_pixel == 32) {
    goto case_32;
  } else {
  }
  goto switch_break;
  case_8:
  jregA0 = 112U;
  jregA3 = 1U;
  jregA8 = 0U;
  goto ldv_40500;
  case_15: ;
  case_16:
  jregA0 = 112U;
  jregA3 = 4U;
  jregA8 = 2U;
  goto ldv_40500;
  case_32:
  jregA0 = 112U;
  jregA3 = 8U;
  jregA8 = 2U;
  goto ldv_40500;
  switch_break: ;
  }
  ldv_40500:
  {
  ast_set_index_reg_mask(ast, 84U, 160, 143, (int )jregA0);
  ast_set_index_reg_mask(ast, 84U, 163, 240, (int )jregA3);
  ast_set_index_reg_mask(ast, 84U, 168, 253, (int )jregA8);
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    {
    ast_set_index_reg(ast, 84U, 167, 120);
    ast_set_index_reg(ast, 84U, 166, 96);
    }
  } else
  if ((unsigned int )ast->chip - 1U <= 3U) {
    {
    ast_set_index_reg(ast, 84U, 167, 63);
    ast_set_index_reg(ast, 84U, 166, 47);
    }
  } else {
    {
    ast_set_index_reg(ast, 84U, 167, 47);
    ast_set_index_reg(ast, 84U, 166, 31);
    }
  }
  return;
}
}
static void ast_set_sync_reg(struct drm_device *dev , struct drm_display_mode *mode ,
                             struct ast_vbios_mode_info *vbios_mode )
{
  struct ast_private *ast ;
  u8 jreg ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  jreg = ast_io_read8(ast, 76U);
  jreg = (unsigned int )jreg & 63U;
  }
  if (((vbios_mode->enh_table)->flags & 4096U) != 0U) {
    jreg = (u8 )((unsigned int )jreg | 128U);
  } else {
  }
  if (((vbios_mode->enh_table)->flags & 1024U) != 0U) {
    jreg = (u8 )((unsigned int )jreg | 64U);
  } else {
  }
  {
  ast_io_write8(ast, 66U, (int )jreg);
  }
  return;
}
}
static bool ast_set_dac_reg(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                            struct ast_vbios_mode_info *vbios_mode )
{
  {
  {
  if (((crtc->primary)->fb)->bits_per_pixel == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_8: ;
  goto ldv_40517;
  switch_default: ;
  return (0);
  switch_break: ;
  }
  ldv_40517: ;
  return (1);
}
}
static void ast_set_start_address_crt1(struct drm_crtc *crtc , unsigned int offset )
{
  struct ast_private *ast ;
  u32 addr ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  addr = offset >> 2;
  ast_set_index_reg(ast, 84U, 13, (int )((unsigned char )addr));
  ast_set_index_reg(ast, 84U, 12, (int )((unsigned char )(addr >> 8)));
  ast_set_index_reg(ast, 84U, 175, (int )((unsigned char )(addr >> 16)));
  }
  return;
}
}
static void ast_crtc_dpms(struct drm_crtc *crtc , int mode )
{
  struct ast_private *ast ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  if ((unsigned int )ast->chip == 7U) {
    return;
  } else {
  }
  {
  if (mode == 0) {
    goto case_0;
  } else {
  }
  if (mode == 1) {
    goto case_1;
  } else {
  }
  if (mode == 2) {
    goto case_2;
  } else {
  }
  if (mode == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1: ;
  case_2:
  {
  ast_set_index_reg_mask(ast, 68U, 1, 223, 0);
  }
  if ((unsigned int )ast->tx_chip_type == 3U) {
    {
    ast_set_dp501_video_output(crtc->dev, 1);
    }
  } else {
  }
  {
  ast_crtc_load_lut(crtc);
  }
  goto ldv_40533;
  case_3: ;
  if ((unsigned int )ast->tx_chip_type == 3U) {
    {
    ast_set_dp501_video_output(crtc->dev, 0);
    }
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 68U, 1, 223, 32);
  }
  goto ldv_40533;
  switch_break: ;
  }
  ldv_40533: ;
  return;
}
}
static bool ast_crtc_mode_fixup(struct drm_crtc *crtc , struct drm_display_mode const *mode ,
                                struct drm_display_mode *adjusted_mode )
{
  {
  return (1);
}
}
static int ast_crtc_do_set_base(struct drm_crtc *crtc , struct drm_framebuffer *fb ,
                                int x , int y , int atomic )
{
  struct ast_private *ast ;
  struct drm_gem_object *obj ;
  struct ast_framebuffer *ast_fb ;
  struct ast_bo *bo ;
  int ret ;
  u64 gpu_addr ;
  struct drm_framebuffer const *__mptr ;
  struct drm_gem_object const *__mptr___0 ;
  struct drm_framebuffer const *__mptr___1 ;
  struct drm_gem_object const *__mptr___2 ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  if (atomic == 0 && (unsigned long )fb != (unsigned long )((struct drm_framebuffer *)0)) {
    {
    __mptr = (struct drm_framebuffer const *)fb;
    ast_fb = (struct ast_framebuffer *)__mptr;
    obj = ast_fb->obj;
    __mptr___0 = (struct drm_gem_object const *)obj;
    bo = (struct ast_bo *)__mptr___0 + 0xfffffffffffffc58UL;
    ret = ast_bo_reserve(bo, 0);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
    {
    ast_bo_push_sysram(bo);
    ast_bo_unreserve(bo);
    }
  } else {
  }
  {
  __mptr___1 = (struct drm_framebuffer const *)(crtc->primary)->fb;
  ast_fb = (struct ast_framebuffer *)__mptr___1;
  obj = ast_fb->obj;
  __mptr___2 = (struct drm_gem_object const *)obj;
  bo = (struct ast_bo *)__mptr___2 + 0xfffffffffffffc58UL;
  ret = ast_bo_reserve(bo, 0);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = ast_bo_pin(bo, 4U, & gpu_addr);
  }
  if (ret != 0) {
    {
    ast_bo_unreserve(bo);
    }
    return (ret);
  } else {
  }
  if ((unsigned long )(& (ast->fbdev)->afb) == (unsigned long )ast_fb) {
    {
    ret = ttm_bo_kmap(& bo->bo, 0UL, bo->bo.num_pages, & bo->kmap);
    }
    if (ret != 0) {
      {
      drm_err("failed to kmap fbcon\n");
      }
    } else {
    }
  } else {
  }
  {
  ast_bo_unreserve(bo);
  ast_set_start_address_crt1(crtc, (unsigned int )gpu_addr);
  }
  return (0);
}
}
static int ast_crtc_mode_set_base(struct drm_crtc *crtc , int x , int y , struct drm_framebuffer *old_fb )
{
  int tmp ;
  {
  {
  tmp = ast_crtc_do_set_base(crtc, old_fb, x, y, 0);
  }
  return (tmp);
}
}
static int ast_crtc_mode_set(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                             struct drm_display_mode *adjusted_mode , int x , int y ,
                             struct drm_framebuffer *old_fb )
{
  struct drm_device *dev ;
  struct ast_private *ast ;
  struct ast_vbios_mode_info vbios_mode ;
  bool ret ;
  {
  dev = crtc->dev;
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  if ((unsigned int )ast->chip == 7U) {
    {
    drm_err("AST 1180 modesetting not supported\n");
    }
    return (-22);
  } else {
  }
  {
  ret = ast_get_vbios_mode_info(crtc, mode, adjusted_mode, & vbios_mode);
  }
  if (! ret) {
    return (-22);
  } else {
  }
  {
  ast_open_key(ast);
  ast_set_index_reg_mask(ast, 84U, 161, 255, 4);
  ast_set_std_reg(crtc, adjusted_mode, & vbios_mode);
  ast_set_crtc_reg(crtc, adjusted_mode, & vbios_mode);
  ast_set_offset_reg(crtc);
  ast_set_dclk_reg(dev, adjusted_mode, & vbios_mode);
  ast_set_ext_reg(crtc, adjusted_mode, & vbios_mode);
  ast_set_sync_reg(dev, adjusted_mode, & vbios_mode);
  ast_set_dac_reg(crtc, adjusted_mode, & vbios_mode);
  ast_crtc_mode_set_base(crtc, x, y, old_fb);
  }
  return (0);
}
}
static void ast_crtc_disable(struct drm_crtc *crtc )
{
  {
  return;
}
}
static void ast_crtc_prepare(struct drm_crtc *crtc )
{
  {
  return;
}
}
static void ast_crtc_commit(struct drm_crtc *crtc )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  ast_set_index_reg_mask(ast, 68U, 1, 223, 0);
  }
  return;
}
}
static struct drm_crtc_helper_funcs const ast_crtc_helper_funcs =
     {& ast_crtc_dpms, & ast_crtc_prepare, & ast_crtc_commit, & ast_crtc_mode_fixup,
    & ast_crtc_mode_set, 0, & ast_crtc_mode_set_base, 0, & ast_crtc_load_lut, & ast_crtc_disable,
    0, 0, 0, 0};
static void ast_crtc_reset(struct drm_crtc *crtc )
{
  {
  return;
}
}
static void ast_crtc_gamma_set(struct drm_crtc *crtc , u16 *red , u16 *green , u16 *blue ,
                               uint32_t start , uint32_t size )
{
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  int end ;
  int i ;
  {
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  end = (int )(256U < start + size ? 256U : start + size);
  i = (int )start;
  goto ldv_40607;
  ldv_40606:
  ast_crtc->lut_r[i] = (u8 )((int )*(red + (unsigned long )i) >> 8);
  ast_crtc->lut_g[i] = (u8 )((int )*(green + (unsigned long )i) >> 8);
  ast_crtc->lut_b[i] = (u8 )((int )*(blue + (unsigned long )i) >> 8);
  i = i + 1;
  ldv_40607: ;
  if (i < end) {
    goto ldv_40606;
  } else {
  }
  {
  ast_crtc_load_lut(crtc);
  }
  return;
}
}
static void ast_crtc_destroy(struct drm_crtc *crtc )
{
  {
  {
  drm_crtc_cleanup(crtc);
  kfree((void const *)crtc);
  }
  return;
}
}
static struct drm_crtc_funcs const ast_crtc_funcs =
     {0, 0, & ast_crtc_reset, & ast_cursor_set, 0, & ast_cursor_move, & ast_crtc_gamma_set,
    & ast_crtc_destroy, & drm_crtc_helper_set_config, 0, 0, 0, 0, 0, 0};
static int ast_crtc_init(struct drm_device *dev )
{
  struct ast_crtc *crtc ;
  int i ;
  void *tmp ;
  {
  {
  tmp = kzalloc(1960UL, 208U);
  crtc = (struct ast_crtc *)tmp;
  }
  if ((unsigned long )crtc == (unsigned long )((struct ast_crtc *)0)) {
    return (-12);
  } else {
  }
  {
  drm_crtc_init(dev, & crtc->base, & ast_crtc_funcs);
  drm_mode_crtc_set_gamma_size(& crtc->base, 256);
  drm_crtc_helper_add(& crtc->base, & ast_crtc_helper_funcs);
  i = 0;
  }
  goto ldv_40619;
  ldv_40618:
  crtc->lut_r[i] = (u8 )i;
  crtc->lut_g[i] = (u8 )i;
  crtc->lut_b[i] = (u8 )i;
  i = i + 1;
  ldv_40619: ;
  if (i <= 255) {
    goto ldv_40618;
  } else {
  }
  return (0);
}
}
static void ast_encoder_destroy(struct drm_encoder *encoder )
{
  {
  {
  drm_encoder_cleanup(encoder);
  kfree((void const *)encoder);
  }
  return;
}
}
static struct drm_encoder *ast_best_single_encoder(struct drm_connector *connector )
{
  int enc_id ;
  struct drm_encoder *tmp ;
  {
  enc_id = (int )connector->encoder_ids[0];
  if (enc_id != 0) {
    {
    tmp = drm_encoder_find(connector->dev, (uint32_t )enc_id);
    }
    return (tmp);
  } else {
  }
  return ((struct drm_encoder *)0);
}
}
static struct drm_encoder_funcs const ast_enc_funcs = {0, & ast_encoder_destroy};
static void ast_encoder_dpms(struct drm_encoder *encoder , int mode )
{
  {
  return;
}
}
static bool ast_mode_fixup(struct drm_encoder *encoder , struct drm_display_mode const *mode ,
                           struct drm_display_mode *adjusted_mode )
{
  {
  return (1);
}
}
static void ast_encoder_mode_set(struct drm_encoder *encoder , struct drm_display_mode *mode ,
                                 struct drm_display_mode *adjusted_mode )
{
  {
  return;
}
}
static void ast_encoder_prepare(struct drm_encoder *encoder )
{
  {
  return;
}
}
static void ast_encoder_commit(struct drm_encoder *encoder )
{
  {
  return;
}
}
static struct drm_encoder_helper_funcs const ast_enc_helper_funcs =
     {& ast_encoder_dpms, 0, 0, & ast_mode_fixup, & ast_encoder_prepare, & ast_encoder_commit,
    & ast_encoder_mode_set, 0, 0, 0, 0, 0};
static int ast_encoder_init(struct drm_device *dev )
{
  struct ast_encoder *ast_encoder ;
  void *tmp ;
  {
  {
  tmp = kzalloc(96UL, 208U);
  ast_encoder = (struct ast_encoder *)tmp;
  }
  if ((unsigned long )ast_encoder == (unsigned long )((struct ast_encoder *)0)) {
    return (-12);
  } else {
  }
  {
  drm_encoder_init(dev, & ast_encoder->base, & ast_enc_funcs, 1);
  drm_encoder_helper_add(& ast_encoder->base, & ast_enc_helper_funcs);
  ast_encoder->base.possible_crtcs = 1U;
  }
  return (0);
}
}
static int ast_get_modes(struct drm_connector *connector )
{
  struct ast_connector *ast_connector ;
  struct drm_connector const *__mptr ;
  struct ast_private *ast ;
  struct edid *edid ;
  int ret ;
  bool flags ;
  void *tmp ;
  {
  __mptr = (struct drm_connector const *)connector;
  ast_connector = (struct ast_connector *)__mptr;
  ast = (struct ast_private *)(connector->dev)->dev_private;
  flags = 0;
  if ((unsigned int )ast->tx_chip_type == 3U) {
    {
    ast->dp501_maxclk = 255U;
    tmp = kmalloc(128UL, 208U);
    edid = (struct edid *)tmp;
    }
    if ((unsigned long )edid == (unsigned long )((struct edid *)0)) {
      return (-12);
    } else {
    }
    {
    flags = ast_dp501_read_edid(connector->dev, (u8 *)edid);
    }
    if ((int )flags) {
      {
      ast->dp501_maxclk = ast_get_dp501_max_clk(connector->dev);
      }
    } else {
      {
      kfree((void const *)edid);
      }
    }
  } else {
  }
  if (! flags) {
    {
    edid = drm_get_edid(connector, & (ast_connector->i2c)->adapter);
    }
  } else {
  }
  if ((unsigned long )edid != (unsigned long )((struct edid *)0)) {
    {
    drm_mode_connector_update_edid_property(& ast_connector->base, (struct edid const *)edid);
    ret = drm_add_edid_modes(connector, edid);
    kfree((void const *)edid);
    }
    return (ret);
  } else {
    {
    drm_mode_connector_update_edid_property(& ast_connector->base, (struct edid const *)0);
    }
  }
  return (0);
}
}
static int ast_mode_valid(struct drm_connector *connector , struct drm_display_mode *mode )
{
  struct ast_private *ast ;
  int flags ;
  uint32_t jtemp ;
  uint8_t tmp ;
  {
  ast = (struct ast_private *)(connector->dev)->dev_private;
  flags = 6;
  if ((int )ast->support_wide_screen) {
    if (mode->hdisplay == 1680 && mode->vdisplay == 1050) {
      return (0);
    } else {
    }
    if (mode->hdisplay == 1280 && mode->vdisplay == 800) {
      return (0);
    } else {
    }
    if (mode->hdisplay == 1440 && mode->vdisplay == 900) {
      return (0);
    } else {
    }
    if (mode->hdisplay == 1360 && mode->vdisplay == 768) {
      return (0);
    } else {
    }
    if (mode->hdisplay == 1600 && mode->vdisplay == 900) {
      return (0);
    } else {
    }
    if (((((unsigned int )ast->chip == 1U || (unsigned int )ast->chip == 3U) || (unsigned int )ast->chip == 5U) || (unsigned int )ast->chip == 6U) || (unsigned int )ast->chip == 7U) {
      if (mode->hdisplay == 1920 && mode->vdisplay == 1080) {
        return (0);
      } else {
      }
      if (mode->hdisplay == 1920 && mode->vdisplay == 1200) {
        {
        tmp = ast_get_index_reg_mask(ast, 84U, 209, 255);
        jtemp = (uint32_t )tmp;
        }
        if ((int )jtemp & 1) {
          return (6);
        } else {
          return (0);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  if (mode->hdisplay == 640) {
    goto case_640;
  } else {
  }
  if (mode->hdisplay == 800) {
    goto case_800;
  } else {
  }
  if (mode->hdisplay == 1024) {
    goto case_1024;
  } else {
  }
  if (mode->hdisplay == 1280) {
    goto case_1280;
  } else {
  }
  if (mode->hdisplay == 1600) {
    goto case_1600;
  } else {
  }
  goto switch_default;
  case_640: ;
  if (mode->vdisplay == 480) {
    flags = 0;
  } else {
  }
  goto ldv_40672;
  case_800: ;
  if (mode->vdisplay == 600) {
    flags = 0;
  } else {
  }
  goto ldv_40672;
  case_1024: ;
  if (mode->vdisplay == 768) {
    flags = 0;
  } else {
  }
  goto ldv_40672;
  case_1280: ;
  if (mode->vdisplay == 1024) {
    flags = 0;
  } else {
  }
  goto ldv_40672;
  case_1600: ;
  if (mode->vdisplay == 1200) {
    flags = 0;
  } else {
  }
  goto ldv_40672;
  switch_default: ;
  return (flags);
  switch_break: ;
  }
  ldv_40672: ;
  return (flags);
}
}
static void ast_connector_destroy(struct drm_connector *connector )
{
  struct ast_connector *ast_connector ;
  struct drm_connector const *__mptr ;
  {
  {
  __mptr = (struct drm_connector const *)connector;
  ast_connector = (struct ast_connector *)__mptr;
  ast_i2c_destroy(ast_connector->i2c);
  ldv_drm_connector_unregister_112(connector);
  drm_connector_cleanup(connector);
  kfree((void const *)connector);
  }
  return;
}
}
static enum drm_connector_status ast_connector_detect(struct drm_connector *connector ,
                                                      bool force )
{
  {
  return (1);
}
}
static struct drm_connector_helper_funcs const ast_connector_helper_funcs = {& ast_get_modes, (enum drm_mode_status (*)(struct drm_connector * , struct drm_display_mode * ))(& ast_mode_valid),
    & ast_best_single_encoder};
static struct drm_connector_funcs const ast_connector_funcs =
     {& drm_helper_connector_dpms, 0, 0, 0, & ast_connector_detect, & drm_helper_probe_single_connector_modes,
    0, & ast_connector_destroy, 0, 0, 0, 0, 0};
static int ast_connector_init(struct drm_device *dev )
{
  struct ast_connector *ast_connector ;
  struct drm_connector *connector ;
  struct drm_encoder *encoder ;
  void *tmp ;
  struct list_head const *__mptr ;
  {
  {
  tmp = kzalloc(928UL, 208U);
  ast_connector = (struct ast_connector *)tmp;
  }
  if ((unsigned long )ast_connector == (unsigned long )((struct ast_connector *)0)) {
    return (-12);
  } else {
  }
  {
  connector = & ast_connector->base;
  drm_connector_init(dev, connector, & ast_connector_funcs, 1);
  drm_connector_helper_add(connector, & ast_connector_helper_funcs);
  connector->interlace_allowed = 0;
  connector->doublescan_allowed = 0;
  ldv_drm_connector_register_113(connector);
  connector->polled = 2U;
  __mptr = (struct list_head const *)dev->mode_config.encoder_list.next;
  encoder = (struct drm_encoder *)__mptr + 0xfffffffffffffff8UL;
  drm_mode_connector_attach_encoder(connector, encoder);
  ast_connector->i2c = ast_i2c_create(dev);
  }
  if ((unsigned long )ast_connector->i2c == (unsigned long )((struct ast_i2c_chan *)0)) {
    {
    drm_err("failed to add ddc bus for connector\n");
    }
  } else {
  }
  return (0);
}
}
static int ast_cursor_init(struct drm_device *dev )
{
  struct ast_private *ast ;
  int size ;
  int ret ;
  struct drm_gem_object *obj ;
  struct ast_bo *bo ;
  uint64_t gpu_addr ;
  struct drm_gem_object const *__mptr ;
  long tmp ;
  long tmp___0 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  size = 16448;
  ret = ast_gem_create(dev, (u32 )size, 1, & obj);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  __mptr = (struct drm_gem_object const *)obj;
  bo = (struct ast_bo *)__mptr + 0xfffffffffffffc58UL;
  ret = ast_bo_reserve(bo, 0);
  tmp = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp != 0L) {
    goto fail;
  } else {
  }
  {
  ret = ast_bo_pin(bo, 4U, & gpu_addr);
  ast_bo_unreserve(bo);
  }
  if (ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = ttm_bo_kmap(& bo->bo, 0UL, bo->bo.num_pages, & ast->cache_kmap);
  }
  if (ret != 0) {
    goto fail;
  } else {
  }
  {
  ast->cursor_cache = obj;
  ast->cursor_cache_gpu_addr = gpu_addr;
  tmp___0 = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    drm_ut_debug_printk("ast_cursor_init", "pinned cursor cache at %llx\n", ast->cursor_cache_gpu_addr);
    }
  } else {
  }
  return (0);
  fail: ;
  return (ret);
}
}
static void ast_cursor_fini(struct drm_device *dev )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ttm_bo_kunmap(& ast->cache_kmap);
  drm_gem_object_unreference_unlocked___0(ast->cursor_cache);
  }
  return;
}
}
int ast_mode_init(struct drm_device *dev )
{
  {
  {
  ast_cursor_init(dev);
  ast_crtc_init(dev);
  ast_encoder_init(dev);
  ast_connector_init(dev);
  }
  return (0);
}
}
void ast_mode_fini(struct drm_device *dev )
{
  {
  {
  ast_cursor_fini(dev);
  }
  return;
}
}
static int get_clock(void *i2c_priv )
{
  struct ast_i2c_chan *i2c ;
  struct ast_private *ast ;
  uint32_t val ;
  uint8_t tmp ;
  {
  {
  i2c = (struct ast_i2c_chan *)i2c_priv;
  ast = (struct ast_private *)(i2c->dev)->dev_private;
  tmp = ast_get_index_reg_mask(ast, 84U, 183, 16);
  val = (uint32_t )((int )tmp >> 4);
  }
  return ((int )val & 1);
}
}
static int get_data(void *i2c_priv )
{
  struct ast_i2c_chan *i2c ;
  struct ast_private *ast ;
  uint32_t val ;
  uint8_t tmp ;
  {
  {
  i2c = (struct ast_i2c_chan *)i2c_priv;
  ast = (struct ast_private *)(i2c->dev)->dev_private;
  tmp = ast_get_index_reg_mask(ast, 84U, 183, 32);
  val = (uint32_t )((int )tmp >> 5);
  }
  return ((int )val & 1);
}
}
static void set_clock(void *i2c_priv , int clock )
{
  struct ast_i2c_chan *i2c ;
  struct ast_private *ast ;
  int i ;
  u8 ujcrb7 ;
  u8 jtemp ;
  {
  i2c = (struct ast_i2c_chan *)i2c_priv;
  ast = (struct ast_private *)(i2c->dev)->dev_private;
  i = 0;
  goto ldv_40744;
  ldv_40743:
  {
  ujcrb7 = clock & 1 ? 0U : 1U;
  ast_set_index_reg_mask(ast, 84U, 183, 254, (int )ujcrb7);
  jtemp = ast_get_index_reg_mask(ast, 84U, 183, 1);
  }
  if ((int )ujcrb7 == (int )jtemp) {
    goto ldv_40742;
  } else {
  }
  i = i + 1;
  ldv_40744: ;
  if (i <= 65535) {
    goto ldv_40743;
  } else {
  }
  ldv_40742: ;
  return;
}
}
static void set_data(void *i2c_priv , int data )
{
  struct ast_i2c_chan *i2c ;
  struct ast_private *ast ;
  int i ;
  u8 ujcrb7 ;
  u8 jtemp ;
  {
  i2c = (struct ast_i2c_chan *)i2c_priv;
  ast = (struct ast_private *)(i2c->dev)->dev_private;
  i = 0;
  goto ldv_40756;
  ldv_40755:
  {
  ujcrb7 = data & 1 ? 0U : 4U;
  ast_set_index_reg_mask(ast, 84U, 183, 251, (int )ujcrb7);
  jtemp = ast_get_index_reg_mask(ast, 84U, 183, 4);
  }
  if ((int )ujcrb7 == (int )jtemp) {
    goto ldv_40754;
  } else {
  }
  i = i + 1;
  ldv_40756: ;
  if (i <= 65535) {
    goto ldv_40755;
  } else {
  }
  ldv_40754: ;
  return;
}
}
static struct ast_i2c_chan *ast_i2c_create(struct drm_device *dev )
{
  struct ast_i2c_chan *i2c ;
  int ret ;
  void *tmp ;
  {
  {
  tmp = kzalloc(1992UL, 208U);
  i2c = (struct ast_i2c_chan *)tmp;
  }
  if ((unsigned long )i2c == (unsigned long )((struct ast_i2c_chan *)0)) {
    return ((struct ast_i2c_chan *)0);
  } else {
  }
  {
  i2c->adapter.owner = & __this_module;
  i2c->adapter.class = 8U;
  i2c->adapter.dev.parent = & (dev->pdev)->dev;
  i2c->dev = dev;
  i2c_set_adapdata(& i2c->adapter, (void *)i2c);
  snprintf((char *)(& i2c->adapter.name), 48UL, "AST i2c bit bus");
  i2c->adapter.algo_data = (void *)(& i2c->bit);
  i2c->bit.udelay = 20;
  i2c->bit.timeout = 2;
  i2c->bit.data = (void *)i2c;
  i2c->bit.setsda = & set_data;
  i2c->bit.setscl = & set_clock;
  i2c->bit.getsda = & get_data;
  i2c->bit.getscl = & get_clock;
  ret = i2c_bit_add_bus(& i2c->adapter);
  }
  if (ret != 0) {
    {
    drm_err("Failed to register bit i2c\n");
    }
    goto out_free;
  } else {
  }
  return (i2c);
  out_free:
  {
  kfree((void const *)i2c);
  }
  return ((struct ast_i2c_chan *)0);
}
}
static void ast_i2c_destroy(struct ast_i2c_chan *i2c )
{
  {
  if ((unsigned long )i2c == (unsigned long )((struct ast_i2c_chan *)0)) {
    return;
  } else {
  }
  {
  i2c_del_adapter(& i2c->adapter);
  kfree((void const *)i2c);
  }
  return;
}
}
static void ast_show_cursor(struct drm_crtc *crtc )
{
  struct ast_private *ast ;
  u8 jreg ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  jreg = 2U;
  jreg = (u8 )((unsigned int )jreg | 1U);
  ast_set_index_reg_mask(ast, 84U, 203, 252, (int )jreg);
  }
  return;
}
}
static void ast_hide_cursor(struct drm_crtc *crtc )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  ast_set_index_reg_mask(ast, 84U, 203, 252, 0);
  }
  return;
}
}
static u32 copy_cursor_image(u8 *src , u8 *dst , int width , int height )
{
  union __anonunion_srcdata32_225 srcdata32[2U] ;
  union __anonunion_data32_226 data32 ;
  union __anonunion_data16_228 data16 ;
  u32 csum ;
  s32 alpha_dst_delta ;
  s32 last_alpha_dst_delta ;
  u8 *srcxor ;
  u8 *dstxor ;
  int i ;
  int j ;
  u32 per_pixel_copy ;
  u32 two_pixel_copy ;
  {
  csum = 0U;
  alpha_dst_delta = 128;
  last_alpha_dst_delta = alpha_dst_delta - (width << 1);
  srcxor = src;
  dstxor = dst + ((unsigned long )last_alpha_dst_delta + (unsigned long )((64 - height) * alpha_dst_delta));
  per_pixel_copy = (u32 )width & 1U;
  two_pixel_copy = (u32 )(width >> 1);
  j = 0;
  goto ldv_40806;
  ldv_40805:
  i = 0;
  goto ldv_40800;
  ldv_40799:
  {
  srcdata32[0].ul = *((u32 *)srcxor) & 4042322160U;
  srcdata32[1].ul = *((u32 *)srcxor + 4U) & 4042322160U;
  data32.b[0] = (u8 )((int )srcdata32[0].b[1] | ((int )srcdata32[0].b[0] >> 4));
  data32.b[1] = (u8 )((int )srcdata32[0].b[3] | ((int )srcdata32[0].b[2] >> 4));
  data32.b[2] = (u8 )((int )srcdata32[1].b[1] | ((int )srcdata32[1].b[0] >> 4));
  data32.b[3] = (u8 )((int )srcdata32[1].b[3] | ((int )srcdata32[1].b[2] >> 4));
  writel(data32.ul, (void volatile *)dstxor);
  csum = csum + data32.ul;
  dstxor = dstxor + 4UL;
  srcxor = srcxor + 8UL;
  i = i + 1;
  }
  ldv_40800: ;
  if ((u32 )i < two_pixel_copy) {
    goto ldv_40799;
  } else {
  }
  i = 0;
  goto ldv_40803;
  ldv_40802:
  {
  srcdata32[0].ul = *((u32 *)srcxor) & 4042322160U;
  data16.b[0] = (u8 )((int )srcdata32[0].b[1] | ((int )srcdata32[0].b[0] >> 4));
  data16.b[1] = (u8 )((int )srcdata32[0].b[3] | ((int )srcdata32[0].b[2] >> 4));
  writew((int )data16.us, (void volatile *)dstxor);
  csum = csum + (u32 )data16.us;
  dstxor = dstxor + 2UL;
  srcxor = srcxor + 4UL;
  i = i + 1;
  }
  ldv_40803: ;
  if ((u32 )i < per_pixel_copy) {
    goto ldv_40802;
  } else {
  }
  dstxor = dstxor + (unsigned long )last_alpha_dst_delta;
  j = j + 1;
  ldv_40806: ;
  if (j < height) {
    goto ldv_40805;
  } else {
  }
  return (csum);
}
}
static int ast_cursor_set(struct drm_crtc *crtc , struct drm_file *file_priv , uint32_t handle ,
                          uint32_t width , uint32_t height )
{
  struct ast_private *ast ;
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  struct drm_gem_object *obj ;
  struct ast_bo *bo ;
  uint64_t gpu_addr ;
  u32 csum ;
  int ret ;
  struct ttm_bo_kmap_obj uobj_map ;
  u8 *src ;
  u8 *dst ;
  bool src_isiomem ;
  bool dst_isiomem ;
  struct drm_gem_object const *__mptr___0 ;
  void *tmp ;
  void *tmp___0 ;
  u8 *dst___0 ;
  {
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  if (handle == 0U) {
    {
    ast_hide_cursor(crtc);
    }
    return (0);
  } else {
  }
  if (width > 64U || height > 64U) {
    return (-22);
  } else {
  }
  {
  obj = drm_gem_object_lookup(crtc->dev, file_priv, handle);
  }
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    {
    drm_err("Cannot find cursor object %x for crtc\n", handle);
    }
    return (-2);
  } else {
  }
  {
  __mptr___0 = (struct drm_gem_object const *)obj;
  bo = (struct ast_bo *)__mptr___0 + 0xfffffffffffffc58UL;
  ret = ast_bo_reserve(bo, 0);
  }
  if (ret != 0) {
    goto fail;
  } else {
  }
  {
  ret = ttm_bo_kmap(& bo->bo, 0UL, bo->bo.num_pages, & uobj_map);
  tmp = ttm_kmap_obj_virtual(& uobj_map, & src_isiomem);
  src = (u8 *)tmp;
  tmp___0 = ttm_kmap_obj_virtual(& ast->cache_kmap, & dst_isiomem);
  dst = (u8 *)tmp___0;
  }
  if ((int )src_isiomem) {
    {
    drm_err("src cursor bo should be in main memory\n");
    }
  } else {
  }
  if (! dst_isiomem) {
    {
    drm_err("dst bo should be in VRAM\n");
    }
  } else {
  }
  {
  dst = dst + (unsigned long )(ast->next_cursor * 8224);
  csum = copy_cursor_image(src, dst, (int )width, (int )height);
  ttm_bo_kunmap(& uobj_map);
  ast_bo_unreserve(bo);
  dst___0 = (u8 *)ast->cache_kmap.virtual + ((unsigned long )(ast->next_cursor * 8224) + 8192UL);
  writel(csum, (void volatile *)dst___0);
  writel(width, (void volatile *)dst___0 + 4U);
  writel(height, (void volatile *)dst___0 + 8U);
  writel(0U, (void volatile *)dst___0 + 20U);
  writel(0U, (void volatile *)dst___0 + 24U);
  gpu_addr = ast->cursor_cache_gpu_addr;
  gpu_addr = gpu_addr + (uint64_t )(ast->next_cursor * 8224);
  gpu_addr = gpu_addr >> 3;
  ast_set_index_reg(ast, 84U, 200, (int )((uint8_t )gpu_addr));
  ast_set_index_reg(ast, 84U, 201, (int )((uint8_t )(gpu_addr >> 8)));
  ast_set_index_reg(ast, 84U, 202, (int )((uint8_t )(gpu_addr >> 16)));
  ast_crtc->cursor_width = (int )width;
  ast_crtc->cursor_height = (int )height;
  ast_crtc->offset_x = 64U - (unsigned int )((u8 )width);
  ast_crtc->offset_y = 64U - (unsigned int )((u8 )height);
  ast->next_cursor = (ast->next_cursor + 1) % 2;
  ast_show_cursor(crtc);
  drm_gem_object_unreference_unlocked___0(obj);
  }
  return (0);
  fail:
  {
  drm_gem_object_unreference_unlocked___0(obj);
  }
  return (ret);
}
}
static int ast_cursor_move(struct drm_crtc *crtc , int x , int y )
{
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  struct ast_private *ast ;
  int x_offset ;
  int y_offset ;
  u8 *sig ;
  {
  {
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  ast = (struct ast_private *)(crtc->dev)->dev_private;
  sig = (u8 *)ast->cache_kmap.virtual + ((unsigned long )(ast->next_cursor * 8224) + 8192UL);
  writel((unsigned int )x, (void volatile *)sig + 12U);
  writel((unsigned int )y, (void volatile *)sig + 16U);
  x_offset = (int )ast_crtc->offset_x;
  y_offset = (int )ast_crtc->offset_y;
  }
  if (x < 0) {
    x_offset = (int )ast_crtc->offset_x - x;
    x = 0;
  } else {
  }
  if (y < 0) {
    y_offset = (int )ast_crtc->offset_y - y;
    y = 0;
  } else {
  }
  {
  ast_set_index_reg(ast, 84U, 194, (int )((uint8_t )x_offset));
  ast_set_index_reg(ast, 84U, 195, (int )((uint8_t )y_offset));
  ast_set_index_reg(ast, 84U, 196, (int )((uint8_t )x));
  ast_set_index_reg(ast, 84U, 197, (int )((uint8_t )(x >> 8)) & 15);
  ast_set_index_reg(ast, 84U, 198, (int )((uint8_t )y));
  ast_set_index_reg(ast, 84U, 199, (int )((uint8_t )(y >> 8)) & 7);
  ast_set_index_reg_mask(ast, 84U, 203, 255, 0);
  }
  return (0);
}
}
void ldv_dispatch_deregister_12_1(struct drm_connector *arg0 ) ;
void ldv_dispatch_register_13_2(struct drm_connector *arg0 ) ;
int ldv_drm_connector_register(int arg0 , struct drm_connector *arg1 ) ;
void ldv_drm_connector_unregister(void *arg0 , struct drm_connector *arg1 ) ;
void ldv_dispatch_deregister_12_1(struct drm_connector *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_register_13_2(struct drm_connector *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_dummy_resourceless_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_struct_drm_connector_helper_funcs_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
int ldv_drm_connector_register(int arg0 , struct drm_connector *arg1 )
{
  struct drm_connector *ldv_13_struct_drm_connector_ptr_struct_drm_connector_ptr ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_struct_drm_connector_ptr_struct_drm_connector_ptr = arg1;
    ldv_dispatch_register_13_2(ldv_13_struct_drm_connector_ptr_struct_drm_connector_ptr);
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
void ldv_drm_connector_unregister(void *arg0 , struct drm_connector *arg1 )
{
  struct drm_connector *ldv_12_struct_drm_connector_ptr_struct_drm_connector_ptr ;
  {
  {
  ldv_12_struct_drm_connector_ptr_struct_drm_connector_ptr = arg1;
  ldv_dispatch_deregister_12_1(ldv_12_struct_drm_connector_ptr_struct_drm_connector_ptr);
  }
  return;
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_10(void (*arg0)(struct drm_connector * ,
                                                                int ) , struct drm_connector *arg1 ,
                                                   int arg2 )
{
  {
  {
  drm_helper_connector_dpms(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct drm_connector * ,
                                                               unsigned int , unsigned int ) ,
                                                   struct drm_connector *arg1 , unsigned int arg2 ,
                                                   unsigned int arg3 )
{
  {
  {
  drm_helper_probe_single_connector_modes(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(void (*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 )
{
  {
  {
  ast_connector_destroy(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(enum drm_connector_status (*arg0)(struct drm_connector * ,
                                                                                    _Bool ) ,
                                                  struct drm_connector *arg1 , _Bool arg2 )
{
  {
  {
  ast_connector_detect(arg1, (int )arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(struct drm_encoder *(*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 )
{
  {
  {
  ast_best_single_encoder(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(int (*arg0)(struct drm_connector * ) ,
                                                  struct drm_connector *arg1 )
{
  {
  {
  ast_get_modes(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(enum drm_mode_status (*arg0)(struct drm_connector * ,
                                                                               struct drm_display_mode * ) ,
                                                  struct drm_connector *arg1 , struct drm_display_mode *arg2 )
{
  {
  {
  ast_mode_valid(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_10(int (*arg0)(struct drm_crtc * ,
                                                               struct drm_file * ,
                                                               unsigned int , unsigned int ,
                                                               unsigned int ) , struct drm_crtc *arg1 ,
                                                   struct drm_file *arg2 , unsigned int arg3 ,
                                                   unsigned int arg4 , unsigned int arg5 )
{
  {
  {
  ast_cursor_set(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_13(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_destroy(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_14(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_disable(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_15(void (*arg0)(struct drm_crtc * ,
                                                                int ) , struct drm_crtc *arg1 ,
                                                   int arg2 )
{
  {
  {
  ast_crtc_dpms(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_18(void (*arg0)(struct drm_crtc * ,
                                                                unsigned short * ,
                                                                unsigned short * ,
                                                                unsigned short * ,
                                                                unsigned int , unsigned int ) ,
                                                   struct drm_crtc *arg1 , unsigned short *arg2 ,
                                                   unsigned short *arg3 , unsigned short *arg4 ,
                                                   unsigned int arg5 , unsigned int arg6 )
{
  {
  {
  ast_crtc_gamma_set(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_21(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_load_lut(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_22(_Bool (*arg0)(struct drm_crtc * ,
                                                                 struct drm_display_mode * ,
                                                                 struct drm_display_mode * ) ,
                                                   struct drm_crtc *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 )
{
  {
  {
  ast_crtc_mode_fixup(arg1, (struct drm_display_mode const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_25(int (*arg0)(struct drm_crtc * ,
                                                               struct drm_display_mode * ,
                                                               struct drm_display_mode * ,
                                                               int , int , struct drm_framebuffer * ) ,
                                                   struct drm_crtc *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 ,
                                                   int arg4 , int arg5 , struct drm_framebuffer *arg6 )
{
  {
  {
  ast_crtc_mode_set(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_28(int (*arg0)(struct drm_crtc * ,
                                                               int , int , struct drm_framebuffer * ) ,
                                                   struct drm_crtc *arg1 , int arg2 ,
                                                   int arg3 , struct drm_framebuffer *arg4 )
{
  {
  {
  ast_crtc_mode_set_base(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(void (*arg0)(struct drm_crtc * ) ,
                                                  struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_31(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_32(void (*arg0)(struct drm_crtc * ) ,
                                                   struct drm_crtc *arg1 )
{
  {
  {
  ast_crtc_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_33(int (*arg0)(struct drm_mode_set * ) ,
                                                   struct drm_mode_set *arg1 )
{
  {
  {
  drm_crtc_helper_set_config(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_7(int (*arg0)(struct drm_crtc * ,
                                                              int , int ) , struct drm_crtc *arg1 ,
                                                  int arg2 , int arg3 )
{
  {
  {
  ast_cursor_move(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_11(_Bool (*arg0)(struct drm_encoder * ,
                                                                 struct drm_display_mode * ,
                                                                 struct drm_display_mode * ) ,
                                                   struct drm_encoder *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 )
{
  {
  {
  ast_mode_fixup(arg1, (struct drm_display_mode const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_14(void (*arg0)(struct drm_encoder * ,
                                                                struct drm_display_mode * ,
                                                                struct drm_display_mode * ) ,
                                                   struct drm_encoder *arg1 , struct drm_display_mode *arg2 ,
                                                   struct drm_display_mode *arg3 )
{
  {
  {
  ast_encoder_mode_set(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_17(void (*arg0)(struct drm_encoder * ) ,
                                                   struct drm_encoder *arg1 )
{
  {
  {
  ast_encoder_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(void (*arg0)(struct drm_encoder * ) ,
                                                  struct drm_encoder *arg1 )
{
  {
  {
  ast_encoder_commit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_7(void (*arg0)(struct drm_encoder * ) ,
                                                  struct drm_encoder *arg1 )
{
  {
  {
  ast_encoder_destroy(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_8(void (*arg0)(struct drm_encoder * ,
                                                               int ) , struct drm_encoder *arg1 ,
                                                  int arg2 )
{
  {
  {
  ast_encoder_dpms(arg1, arg2);
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc_unknown_size();
  ldv_after_alloc(res);
  }
  return (res);
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_100(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_base_of_ww_mutex(ldv_func_arg1);
  }
  return (tmp);
}
}
static int ldv_mutex_trylock_101(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_108(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lru_lock_of_ttm_bo_global();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_109(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lru_lock_of_ttm_bo_global();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_drm_connector_unregister_112(struct drm_connector *ldv_func_arg1 )
{
  {
  {
  drm_connector_unregister(ldv_func_arg1);
  ldv_drm_connector_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_drm_connector_register_113(struct drm_connector *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = drm_connector_register(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_drm_connector_register(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_lock_99___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___1(struct mutex *ldv_func_arg1 ) ;
static int ldv_mutex_lock_interruptible_100___0(struct mutex *ldv_func_arg1 ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern char *strcpy(char * , char const * ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
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
__inline static int atomic_dec_and_test(atomic_t *v ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_dirty_lock_of_ast_fbdev(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_dirty_lock_of_ast_fbdev(void) ;
static int ldv_mutex_trylock_101___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 ) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7174;
  case_2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7174;
  case_4:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7174;
  case_8:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_7174;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7174: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_113(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_113(spinlock_t *lock , unsigned long flags ) ;
static void *ldv_vmalloc_115(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  {
  memcpy((void *)dst, src, count);
  }
  return;
}
}
extern int cpu_number ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern atomic_t kgdb_active ;
__inline static struct apertures_struct *alloc_apertures(unsigned int max_num )
{
  struct apertures_struct *a ;
  void *tmp ;
  {
  {
  tmp = kzalloc((unsigned long )max_num * 16UL + 8UL, 208U);
  a = (struct apertures_struct *)tmp;
  }
  if ((unsigned long )a == (unsigned long )((struct apertures_struct *)0)) {
    return ((struct apertures_struct *)0);
  } else {
  }
  a->count = max_num;
  return (a);
}
}
extern void sys_fillrect(struct fb_info * , struct fb_fillrect const * ) ;
extern void sys_copyarea(struct fb_info * , struct fb_copyarea const * ) ;
extern void sys_imageblit(struct fb_info * , struct fb_image const * ) ;
extern int unregister_framebuffer(struct fb_info * ) ;
extern void fb_set_suspend(struct fb_info * , int ) ;
extern struct fb_info *framebuffer_alloc(size_t , struct device * ) ;
extern void framebuffer_release(struct fb_info * ) ;
extern int fb_alloc_cmap(struct fb_cmap * , int , int ) ;
extern void fb_dealloc_cmap(struct fb_cmap * ) ;
__inline static int ww_mutex_lock___0(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    {
    tmp = __ww_mutex_lock(lock, ctx);
    }
    return (tmp);
  } else {
  }
  {
  ldv_mutex_lock_99___0(& lock->base);
  }
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible___0(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    }
    return (tmp);
  } else {
    {
    tmp___0 = ldv_mutex_lock_interruptible_100___0(& lock->base);
    }
    return (tmp___0);
  }
}
}
__inline static int ww_mutex_trylock___0(struct ww_mutex *lock )
{
  int tmp ;
  {
  {
  tmp = ldv_mutex_trylock_101___0(& lock->base);
  }
  return (tmp);
}
}
extern void drm_framebuffer_unregister_private(struct drm_framebuffer * ) ;
static void ldv_drm_framebuffer_unregister_private_116(struct drm_framebuffer *ldv_func_arg1 ) ;
extern uint32_t drm_mode_legacy_fb_format(uint32_t , uint32_t ) ;
extern void drm_fb_get_bpp_depth(uint32_t , unsigned int * , int * ) ;
__inline static bool drm_can_sleep(void)
{
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  unsigned long _flags ;
  int tmp___1 ;
  {
  {
  tmp = preempt_count();
  }
  if (((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL) {
    return (0);
  } else {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_39715;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39715;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39715;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39715;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_39715:
    pscr_ret__ = pfo_ret__;
    goto ldv_39721;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39725;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39725;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39725;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39725;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_39725:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_39721;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39734;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39734;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39734;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39734;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_39734:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_39721;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39743;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39743;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39743;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39743;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_39743:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_39721;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_39721;
    switch_break: ;
    }
    ldv_39721:
    {
    tmp___0 = atomic_read((atomic_t const *)(& kgdb_active));
    }
    if (pscr_ret__ == tmp___0) {
      return (0);
    } else {
      {
      _flags = arch_local_save_flags();
      tmp___1 = arch_irqs_disabled_flags(_flags);
      }
      if (tmp___1 != 0) {
        return (0);
      } else {
      }
    }
  }
  return (1);
}
}
extern void drm_fb_helper_prepare(struct drm_device * , struct drm_fb_helper * , struct drm_fb_helper_funcs const * ) ;
extern int drm_fb_helper_init(struct drm_device * , struct drm_fb_helper * , int ,
                              int ) ;
extern void drm_fb_helper_fini(struct drm_fb_helper * ) ;
extern int drm_fb_helper_blank(int , struct fb_info * ) ;
extern int drm_fb_helper_pan_display(struct fb_var_screeninfo * , struct fb_info * ) ;
extern int drm_fb_helper_set_par(struct fb_info * ) ;
extern int drm_fb_helper_check_var(struct fb_var_screeninfo * , struct fb_info * ) ;
extern void drm_fb_helper_fill_var(struct fb_info * , struct drm_fb_helper * , uint32_t ,
                                   uint32_t ) ;
extern void drm_fb_helper_fill_fix(struct fb_info * , uint32_t , uint32_t ) ;
extern int drm_fb_helper_setcmap(struct fb_cmap * , struct fb_info * ) ;
extern int drm_fb_helper_initial_config(struct drm_fb_helper * , int ) ;
extern int drm_fb_helper_single_add_all_connectors(struct drm_fb_helper * ) ;
extern int drm_fb_helper_debug_enter(struct fb_info * ) ;
extern int drm_fb_helper_debug_leave(struct fb_info * ) ;
extern void drm_helper_disable_unused_functions(struct drm_device * ) ;
__inline static int __ttm_bo_reserve___0(struct ttm_buffer_object *bo , bool interruptible ,
                                         bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    {
    tmp___1 = ww_mutex_trylock___0(& (bo->resv)->lock);
    success = tmp___1 != 0;
    }
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    {
    ret = ww_mutex_lock_interruptible___0(& (bo->resv)->lock, ticket);
    }
  } else {
    {
    ret = ww_mutex_lock___0(& (bo->resv)->lock, ticket);
    }
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve___0(struct ttm_buffer_object *bo , bool interruptible ,
                                       bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve___0(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                             ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  }
  if (tmp___1 != 0L) {
    {
    ttm_bo_del_sub_from_lru(bo);
    }
  } else {
  }
  return (ret);
}
}
__inline static void ttm_bo_unreserve___0(struct ttm_buffer_object *bo )
{
  {
  if ((bo->mem.placement & 2097152U) == 0U) {
    {
    ldv_spin_lock_108(& (bo->glob)->lru_lock);
    ttm_bo_add_to_lru(bo);
    ldv_spin_unlock_109(& (bo->glob)->lru_lock);
    }
  } else {
  }
  {
  __ttm_bo_unreserve(bo);
  }
  return;
}
}
__inline static void drm_gem_object_unreference_unlocked___1(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    tmp___1 = atomic_add_unless___0(& obj->refcount.refcount, -1, 1);
    }
    if (tmp___1 == 0) {
      {
      dev = obj->dev;
      ldv_mutex_lock_110___1(& dev->struct_mutex);
      tmp = atomic_dec_and_test(& obj->refcount.refcount);
      tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
      }
      if (tmp___0 != 0L) {
        {
        drm_gem_object_free(& obj->refcount);
        }
      } else {
      }
      {
      ldv_mutex_unlock_111___1(& dev->struct_mutex);
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static int ast_bo_reserve___0(struct ast_bo *bo , bool no_wait )
{
  int ret ;
  {
  {
  ret = ttm_bo_reserve___0(& bo->bo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  }
  if (ret != 0) {
    if (ret != -512 && ret != -16) {
      {
      drm_err("reserve failed %p\n", bo);
      }
    } else {
    }
    return (ret);
  } else {
  }
  return (0);
}
}
__inline static void ast_bo_unreserve___0(struct ast_bo *bo )
{
  {
  {
  ttm_bo_unreserve___0(& bo->bo);
  }
  return;
}
}
static void ast_dirty_update(struct ast_fbdev *afbdev , int x , int y , int width ,
                             int height )
{
  int i ;
  struct drm_gem_object *obj ;
  struct ast_bo *bo ;
  int src_offset ;
  int dst_offset ;
  int bpp ;
  int ret ;
  bool unmap ;
  bool store_for_later ;
  int x2 ;
  int y2 ;
  unsigned long flags ;
  struct drm_gem_object const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  bpp = (afbdev->afb.base.bits_per_pixel + 7) / 8;
  ret = -16;
  unmap = 0;
  store_for_later = 0;
  obj = afbdev->afb.obj;
  __mptr = (struct drm_gem_object const *)obj;
  bo = (struct ast_bo *)__mptr + 0xfffffffffffffc58UL;
  tmp = drm_can_sleep();
  }
  if ((int )tmp) {
    {
    ret = ast_bo_reserve___0(bo, 1);
    }
  } else {
  }
  if (ret != 0) {
    if (ret != -16) {
      return;
    } else {
    }
    store_for_later = 1;
  } else {
  }
  {
  x2 = (x + width) + -1;
  y2 = (y + height) + -1;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(& afbdev->dirty_lock);
  }
  if (afbdev->y1 < y) {
    y = afbdev->y1;
  } else {
  }
  if (afbdev->y2 > y2) {
    y2 = afbdev->y2;
  } else {
  }
  if (afbdev->x1 < x) {
    x = afbdev->x1;
  } else {
  }
  if (afbdev->x2 > x2) {
    x2 = afbdev->x2;
  } else {
  }
  if ((int )store_for_later) {
    {
    afbdev->x1 = x;
    afbdev->x2 = x2;
    afbdev->y1 = y;
    afbdev->y2 = y2;
    ldv_spin_unlock_irqrestore_113(& afbdev->dirty_lock, flags);
    }
    return;
  } else {
  }
  {
  tmp___0 = 2147483647;
  afbdev->y1 = tmp___0;
  afbdev->x1 = tmp___0;
  tmp___1 = 0;
  afbdev->y2 = tmp___1;
  afbdev->x2 = tmp___1;
  ldv_spin_unlock_irqrestore_113(& afbdev->dirty_lock, flags);
  }
  if ((unsigned long )bo->kmap.virtual == (unsigned long )((void *)0)) {
    {
    ret = ttm_bo_kmap(& bo->bo, 0UL, bo->bo.num_pages, & bo->kmap);
    }
    if (ret != 0) {
      {
      drm_err("failed to kmap fb updates\n");
      ast_bo_unreserve___0(bo);
      }
      return;
    } else {
    }
    unmap = 1;
  } else {
  }
  i = y;
  goto ldv_41131;
  ldv_41130:
  {
  dst_offset = (int )((unsigned int )i * afbdev->afb.base.pitches[0] + (unsigned int )(x * bpp));
  src_offset = dst_offset;
  memcpy_toio((void volatile *)bo->kmap.virtual + (unsigned long )src_offset, (void const *)afbdev->sysram + (unsigned long )src_offset,
              (size_t )(((x2 - x) + 1) * bpp));
  i = i + 1;
  }
  ldv_41131: ;
  if (i <= y2) {
    goto ldv_41130;
  } else {
  }
  if ((int )unmap) {
    {
    ttm_bo_kunmap(& bo->kmap);
    }
  } else {
  }
  {
  ast_bo_unreserve___0(bo);
  }
  return;
}
}
static void ast_fillrect(struct fb_info *info , struct fb_fillrect const *rect )
{
  struct ast_fbdev *afbdev ;
  {
  {
  afbdev = (struct ast_fbdev *)info->par;
  sys_fillrect(info, rect);
  ast_dirty_update(afbdev, (int )rect->dx, (int )rect->dy, (int )rect->width, (int )rect->height);
  }
  return;
}
}
static void ast_copyarea(struct fb_info *info , struct fb_copyarea const *area )
{
  struct ast_fbdev *afbdev ;
  {
  {
  afbdev = (struct ast_fbdev *)info->par;
  sys_copyarea(info, area);
  ast_dirty_update(afbdev, (int )area->dx, (int )area->dy, (int )area->width, (int )area->height);
  }
  return;
}
}
static void ast_imageblit(struct fb_info *info , struct fb_image const *image )
{
  struct ast_fbdev *afbdev ;
  {
  {
  afbdev = (struct ast_fbdev *)info->par;
  sys_imageblit(info, image);
  ast_dirty_update(afbdev, (int )image->dx, (int )image->dy, (int )image->width, (int )image->height);
  }
  return;
}
}
static struct fb_ops astfb_ops =
     {& __this_module, 0, 0, 0, 0, & drm_fb_helper_check_var, & drm_fb_helper_set_par,
    0, & drm_fb_helper_setcmap, & drm_fb_helper_blank, & drm_fb_helper_pan_display,
    & ast_fillrect, & ast_copyarea, & ast_imageblit, 0, 0, 0, 0, 0, 0, 0, 0, & drm_fb_helper_debug_enter,
    & drm_fb_helper_debug_leave};
static int astfb_create_object(struct ast_fbdev *afbdev , struct drm_mode_fb_cmd2 *mode_cmd ,
                               struct drm_gem_object **gobj_p )
{
  struct drm_device *dev ;
  u32 bpp ;
  u32 depth ;
  u32 size ;
  struct drm_gem_object *gobj ;
  int ret ;
  {
  {
  dev = afbdev->helper.dev;
  ret = 0;
  drm_fb_get_bpp_depth(mode_cmd->pixel_format, & depth, (int *)(& bpp));
  size = mode_cmd->pitches[0] * mode_cmd->height;
  ret = ast_gem_create(dev, size, 1, & gobj);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  *gobj_p = gobj;
  return (ret);
}
}
static int astfb_create(struct drm_fb_helper *helper , struct drm_fb_helper_surface_size *sizes )
{
  struct ast_fbdev *afbdev ;
  struct drm_fb_helper const *__mptr ;
  struct drm_device *dev ;
  struct drm_mode_fb_cmd2 mode_cmd ;
  struct drm_framebuffer *fb ;
  struct fb_info *info ;
  int size ;
  int ret ;
  struct device *device ;
  void *sysram ;
  struct drm_gem_object *gobj ;
  struct ast_bo *bo ;
  struct drm_gem_object const *__mptr___0 ;
  long tmp ;
  {
  {
  __mptr = (struct drm_fb_helper const *)helper;
  afbdev = (struct ast_fbdev *)__mptr;
  dev = afbdev->helper.dev;
  device = & (dev->pdev)->dev;
  gobj = (struct drm_gem_object *)0;
  bo = (struct ast_bo *)0;
  mode_cmd.width = sizes->surface_width;
  mode_cmd.height = sizes->surface_height;
  mode_cmd.pitches[0] = mode_cmd.width * ((sizes->surface_bpp + 7U) / 8U);
  mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp, sizes->surface_depth);
  size = (int )(mode_cmd.pitches[0] * mode_cmd.height);
  ret = astfb_create_object(afbdev, & mode_cmd, & gobj);
  }
  if (ret != 0) {
    {
    drm_err("failed to create fbcon backing object %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  __mptr___0 = (struct drm_gem_object const *)gobj;
  bo = (struct ast_bo *)__mptr___0 + 0xfffffffffffffc58UL;
  sysram = ldv_vmalloc_115((unsigned long )size);
  }
  if ((unsigned long )sysram == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  info = framebuffer_alloc(0UL, device);
  }
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  {
  info->par = (void *)afbdev;
  ret = ast_framebuffer_init(dev, & afbdev->afb, & mode_cmd, gobj);
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  {
  afbdev->sysram = sysram;
  afbdev->size = size;
  fb = & afbdev->afb.base;
  afbdev->helper.fb = fb;
  afbdev->helper.fbdev = info;
  strcpy((char *)(& info->fix.id), "astdrmfb");
  info->flags = 2097153;
  info->fbops = & astfb_ops;
  ret = fb_alloc_cmap(& info->cmap, 256, 0);
  }
  if (ret != 0) {
    ret = -12;
    goto out;
  } else {
  }
  {
  info->apertures = alloc_apertures(1U);
  }
  if ((unsigned long )info->apertures == (unsigned long )((struct apertures_struct *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  {
  (info->apertures)->ranges[0].base = (dev->pdev)->resource[0].start;
  (info->apertures)->ranges[0].size = (dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start ? ((dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start) + 1ULL : 0ULL;
  drm_fb_helper_fill_fix(info, fb->pitches[0], fb->depth);
  drm_fb_helper_fill_var(info, & afbdev->helper, sizes->fb_width, sizes->fb_height);
  info->screen_base = (char *)sysram;
  info->screen_size = (unsigned long )size;
  info->pixmap.flags = 2U;
  tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  }
  if (tmp != 0L) {
    {
    drm_ut_debug_printk("astfb_create", "allocated %dx%d\n", fb->width, fb->height);
    }
  } else {
  }
  return (0);
  out: ;
  return (ret);
}
}
static void ast_fb_gamma_set(struct drm_crtc *crtc , u16 red , u16 green , u16 blue ,
                             int regno )
{
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  {
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  ast_crtc->lut_r[regno] = (u8 )((int )red >> 8);
  ast_crtc->lut_g[regno] = (u8 )((int )green >> 8);
  ast_crtc->lut_b[regno] = (u8 )((int )blue >> 8);
  return;
}
}
static void ast_fb_gamma_get(struct drm_crtc *crtc , u16 *red , u16 *green , u16 *blue ,
                             int regno )
{
  struct ast_crtc *ast_crtc ;
  struct drm_crtc const *__mptr ;
  {
  __mptr = (struct drm_crtc const *)crtc;
  ast_crtc = (struct ast_crtc *)__mptr;
  *red = (int )((u16 )ast_crtc->lut_r[regno]) << 8U;
  *green = (int )((u16 )ast_crtc->lut_g[regno]) << 8U;
  *blue = (int )((u16 )ast_crtc->lut_b[regno]) << 8U;
  return;
}
}
static struct drm_fb_helper_funcs const ast_fb_helper_funcs = {& ast_fb_gamma_set, & ast_fb_gamma_get, & astfb_create, 0};
static void ast_fbdev_destroy(struct drm_device *dev , struct ast_fbdev *afbdev )
{
  struct fb_info *info ;
  struct ast_framebuffer *afb ;
  {
  afb = & afbdev->afb;
  if ((unsigned long )afbdev->helper.fbdev != (unsigned long )((struct fb_info *)0)) {
    {
    info = afbdev->helper.fbdev;
    unregister_framebuffer(info);
    }
    if (info->cmap.len != 0U) {
      {
      fb_dealloc_cmap(& info->cmap);
      }
    } else {
    }
    {
    framebuffer_release(info);
    }
  } else {
  }
  if ((unsigned long )afb->obj != (unsigned long )((struct drm_gem_object *)0)) {
    {
    drm_gem_object_unreference_unlocked___1(afb->obj);
    afb->obj = (struct drm_gem_object *)0;
    }
  } else {
  }
  {
  drm_fb_helper_fini(& afbdev->helper);
  vfree((void const *)afbdev->sysram);
  ldv_drm_framebuffer_unregister_private_116(& afb->base);
  drm_framebuffer_cleanup(& afb->base);
  }
  return;
}
}
int ast_fbdev_init(struct drm_device *dev )
{
  struct ast_private *ast ;
  struct ast_fbdev *afbdev ;
  int ret ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  tmp = kzalloc(456UL, 208U);
  afbdev = (struct ast_fbdev *)tmp;
  }
  if ((unsigned long )afbdev == (unsigned long )((struct ast_fbdev *)0)) {
    return (-12);
  } else {
  }
  {
  ast->fbdev = afbdev;
  spinlock_check(& afbdev->dirty_lock);
  __raw_spin_lock_init(& afbdev->dirty_lock.__annonCompField18.rlock, "&(&afbdev->dirty_lock)->rlock",
                       & __key);
  drm_fb_helper_prepare(dev, & afbdev->helper, & ast_fb_helper_funcs);
  ret = drm_fb_helper_init(dev, & afbdev->helper, 1, 1);
  }
  if (ret != 0) {
    goto free;
  } else {
  }
  {
  ret = drm_fb_helper_single_add_all_connectors(& afbdev->helper);
  }
  if (ret != 0) {
    goto fini;
  } else {
  }
  {
  drm_helper_disable_unused_functions(dev);
  ret = drm_fb_helper_initial_config(& afbdev->helper, 32);
  }
  if (ret != 0) {
    goto fini;
  } else {
  }
  return (0);
  fini:
  {
  drm_fb_helper_fini(& afbdev->helper);
  }
  free:
  {
  kfree((void const *)afbdev);
  }
  return (ret);
}
}
void ast_fbdev_fini(struct drm_device *dev )
{
  struct ast_private *ast ;
  {
  ast = (struct ast_private *)dev->dev_private;
  if ((unsigned long )ast->fbdev == (unsigned long )((struct ast_fbdev *)0)) {
    return;
  } else {
  }
  {
  ast_fbdev_destroy(dev, ast->fbdev);
  kfree((void const *)ast->fbdev);
  ast->fbdev = (struct ast_fbdev *)0;
  }
  return;
}
}
void ast_fbdev_set_suspend(struct drm_device *dev , int state )
{
  struct ast_private *ast ;
  {
  ast = (struct ast_private *)dev->dev_private;
  if ((unsigned long )ast->fbdev == (unsigned long )((struct ast_fbdev *)0)) {
    return;
  } else {
  }
  {
  fb_set_suspend((ast->fbdev)->helper.fbdev, state);
  }
  return;
}
}
void ldv_dispatch_deregister_14_1(struct drm_framebuffer *arg0 ) ;
void ldv_drm_framebuffer_unregister_private(void *arg0 , struct drm_framebuffer *arg1 ) ;
void ldv_dispatch_deregister_14_1(struct drm_framebuffer *arg0 )
{
  {
  return;
}
}
void ldv_drm_framebuffer_unregister_private(void *arg0 , struct drm_framebuffer *arg1 )
{
  struct drm_framebuffer *ldv_14_struct_drm_framebuffer_ptr_struct_drm_framebuffer_ptr ;
  {
  {
  ldv_14_struct_drm_framebuffer_ptr_struct_drm_framebuffer_ptr = arg1;
  ldv_dispatch_deregister_14_1(ldv_14_struct_drm_framebuffer_ptr_struct_drm_framebuffer_ptr);
  }
  return;
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_10(void (*arg0)(struct drm_crtc * ,
                                                                unsigned short ,
                                                                unsigned short ,
                                                                unsigned short ,
                                                                int ) , struct drm_crtc *arg1 ,
                                                   unsigned short arg2 , unsigned short arg3 ,
                                                   unsigned short arg4 , int arg5 )
{
  {
  {
  ast_fb_gamma_set(arg1, (int )arg2, (int )arg3, (int )arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct drm_fb_helper * ,
                                                              struct drm_fb_helper_surface_size * ) ,
                                                  struct drm_fb_helper *arg1 , struct drm_fb_helper_surface_size *arg2 )
{
  {
  {
  astfb_create(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_7(void (*arg0)(struct drm_crtc * ,
                                                               unsigned short * ,
                                                               unsigned short * ,
                                                               unsigned short * ,
                                                               int ) , struct drm_crtc *arg1 ,
                                                  unsigned short *arg2 , unsigned short *arg3 ,
                                                  unsigned short *arg4 , int arg5 )
{
  {
  {
  ast_fb_gamma_get(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_31(int (*arg0)(int , struct fb_info * ) ,
                                                int arg1 , struct fb_info *arg2 )
{
  {
  {
  drm_fb_helper_blank(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_34(int (*arg0)(struct fb_var_screeninfo * ,
                                                            struct fb_info * ) , struct fb_var_screeninfo *arg1 ,
                                                struct fb_info *arg2 )
{
  {
  {
  drm_fb_helper_check_var(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_35(void (*arg0)(struct fb_info * , struct fb_copyarea * ) ,
                                                struct fb_info *arg1 , struct fb_copyarea *arg2 )
{
  {
  {
  ast_copyarea(arg1, (struct fb_copyarea const *)arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_38(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 )
{
  {
  {
  drm_fb_helper_debug_enter(arg1);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_41(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 )
{
  {
  {
  drm_fb_helper_debug_leave(arg1);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_44(void (*arg0)(struct fb_info * , struct fb_fillrect * ) ,
                                                struct fb_info *arg1 , struct fb_fillrect *arg2 )
{
  {
  {
  ast_fillrect(arg1, (struct fb_fillrect const *)arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_47(void (*arg0)(struct fb_info * , struct fb_image * ) ,
                                                struct fb_info *arg1 , struct fb_image *arg2 )
{
  {
  {
  ast_imageblit(arg1, (struct fb_image const *)arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_50(int (*arg0)(struct fb_var_screeninfo * ,
                                                            struct fb_info * ) , struct fb_var_screeninfo *arg1 ,
                                                struct fb_info *arg2 )
{
  {
  {
  drm_fb_helper_pan_display(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_51(int (*arg0)(struct fb_info * ) , struct fb_info *arg1 )
{
  {
  {
  drm_fb_helper_set_par(arg1);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_54(int (*arg0)(struct fb_cmap * , struct fb_info * ) ,
                                                struct fb_cmap *arg1 , struct fb_info *arg2 )
{
  {
  {
  drm_fb_helper_setcmap(arg1, arg2);
  }
  return;
}
}
static void ldv_mutex_lock_99___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mutex_lock_interruptible_100___0(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_base_of_ww_mutex(ldv_func_arg1);
  }
  return (tmp);
}
}
static int ldv_mutex_trylock_101___0(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_110___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dirty_lock_of_ast_fbdev();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_113(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_dirty_lock_of_ast_fbdev();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void *ldv_vmalloc_115(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc_unknown_size();
  }
  return (tmp);
}
}
static void ldv_drm_framebuffer_unregister_private_116(struct drm_framebuffer *ldv_func_arg1 )
{
  {
  {
  drm_framebuffer_unregister_private(ldv_func_arg1);
  ldv_drm_framebuffer_unregister_private((void *)0, ldv_func_arg1);
  }
  return;
}
}
extern int arch_phys_wc_add(unsigned long , unsigned long ) ;
extern void arch_phys_wc_del(int ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int drm_global_item_ref(struct drm_global_reference * ) ;
extern void drm_global_item_unref(struct drm_global_reference * ) ;
extern bool drm_vma_node_is_allowed(struct drm_vma_offset_node * , struct file * ) ;
__inline static int drm_vma_node_verify_access(struct drm_vma_offset_node *node ,
                                               struct file *filp )
{
  bool tmp ;
  {
  {
  tmp = drm_vma_node_is_allowed(node, filp);
  }
  return ((int )tmp ? 0 : -13);
}
}
extern int ttm_bo_validate(struct ttm_buffer_object * , struct ttm_placement * , bool ,
                           bool ) ;
extern size_t ttm_bo_dma_acc_size(struct ttm_bo_device * , unsigned long , unsigned int ) ;
extern int ttm_bo_init(struct ttm_bo_device * , struct ttm_buffer_object * , unsigned long ,
                       enum ttm_bo_type , struct ttm_placement * , uint32_t , bool ,
                       struct file * , size_t , struct sg_table * , struct reservation_object * ,
                       void (*)(struct ttm_buffer_object * ) ) ;
extern int ttm_bo_init_mm(struct ttm_bo_device * , unsigned int , unsigned long ) ;
extern int ttm_bo_mmap(struct file * , struct vm_area_struct * , struct ttm_bo_device * ) ;
extern int ttm_mem_global_init(struct ttm_mem_global * ) ;
extern void ttm_mem_global_release(struct ttm_mem_global * ) ;
extern int ttm_tt_init(struct ttm_tt * , struct ttm_bo_device * , unsigned long ,
                       uint32_t , struct page * ) ;
extern void ttm_tt_fini(struct ttm_tt * ) ;
extern void ttm_bo_global_release(struct drm_global_reference * ) ;
extern int ttm_bo_global_init(struct drm_global_reference * ) ;
extern int ttm_bo_device_release(struct ttm_bo_device * ) ;
extern int ttm_bo_device_init(struct ttm_bo_device * , struct ttm_bo_global * , struct ttm_bo_driver * ,
                              struct address_space * , uint64_t , bool ) ;
extern int ttm_bo_move_memcpy(struct ttm_buffer_object * , bool , bool , struct ttm_mem_reg * ) ;
extern struct ttm_mem_type_manager_func const ttm_bo_manager_func ;
extern void drm_gem_object_release(struct drm_gem_object * ) ;
extern int drm_gem_object_init(struct drm_device * , struct drm_gem_object * , size_t ) ;
__inline static struct ast_bo *ast_bo(struct ttm_buffer_object *bo )
{
  struct ttm_buffer_object const *__mptr ;
  {
  __mptr = (struct ttm_buffer_object const *)bo;
  return ((struct ast_bo *)__mptr);
}
}
int ast_bo_unpin(struct ast_bo *bo ) ;
void ast_ttm_placement(struct ast_bo *bo , int domain ) ;
extern int ttm_pool_populate(struct ttm_tt * ) ;
extern void ttm_pool_unpopulate(struct ttm_tt * ) ;
__inline static struct ast_private *ast_bdev(struct ttm_bo_device *bd )
{
  struct ttm_bo_device const *__mptr ;
  {
  __mptr = (struct ttm_bo_device const *)bd;
  return ((struct ast_private *)__mptr + 0xffffffffffffff68UL);
}
}
static int ast_ttm_mem_global_init(struct drm_global_reference *ref )
{
  int tmp ;
  {
  {
  tmp = ttm_mem_global_init((struct ttm_mem_global *)ref->object);
  }
  return (tmp);
}
}
static void ast_ttm_mem_global_release(struct drm_global_reference *ref )
{
  {
  {
  ttm_mem_global_release((struct ttm_mem_global *)ref->object);
  }
  return;
}
}
static int ast_ttm_global_init(struct ast_private *ast )
{
  struct drm_global_reference *global_ref ;
  int r ;
  {
  {
  global_ref = & ast->ttm.mem_global_ref;
  global_ref->global_type = 0;
  global_ref->size = 504UL;
  global_ref->init = & ast_ttm_mem_global_init;
  global_ref->release = & ast_ttm_mem_global_release;
  r = drm_global_item_ref(global_ref);
  }
  if (r != 0) {
    {
    drm_err("Failed setting up TTM memory accounting subsystem.\n");
    }
    return (r);
  } else {
  }
  {
  ast->ttm.bo_global_ref.mem_glob = (struct ttm_mem_global *)ast->ttm.mem_global_ref.object;
  global_ref = & ast->ttm.bo_global_ref.ref;
  global_ref->global_type = 1;
  global_ref->size = 592UL;
  global_ref->init = & ttm_bo_global_init;
  global_ref->release = & ttm_bo_global_release;
  r = drm_global_item_ref(global_ref);
  }
  if (r != 0) {
    {
    drm_err("Failed setting up TTM BO subsystem.\n");
    drm_global_item_unref(& ast->ttm.mem_global_ref);
    }
    return (r);
  } else {
  }
  return (0);
}
}
static void ast_ttm_global_release(struct ast_private *ast )
{
  {
  if ((unsigned long )ast->ttm.mem_global_ref.release == (unsigned long )((void (*)(struct drm_global_reference * ))0)) {
    return;
  } else {
  }
  {
  drm_global_item_unref(& ast->ttm.bo_global_ref.ref);
  drm_global_item_unref(& ast->ttm.mem_global_ref);
  ast->ttm.mem_global_ref.release = (void (*)(struct drm_global_reference * ))0;
  }
  return;
}
}
static void ast_bo_ttm_destroy(struct ttm_buffer_object *tbo )
{
  struct ast_bo *bo ;
  struct ttm_buffer_object const *__mptr ;
  {
  {
  __mptr = (struct ttm_buffer_object const *)tbo;
  bo = (struct ast_bo *)__mptr;
  drm_gem_object_release(& bo->gem);
  kfree((void const *)bo);
  }
  return;
}
}
static bool ast_ttm_bo_is_ast_bo(struct ttm_buffer_object *bo )
{
  {
  if ((unsigned long )bo->destroy == (unsigned long )(& ast_bo_ttm_destroy)) {
    return (1);
  } else {
  }
  return (0);
}
}
static int ast_bo_init_mem_type(struct ttm_bo_device *bdev , uint32_t type , struct ttm_mem_type_manager *man )
{
  {
  {
  if (type == 0U) {
    goto case_0;
  } else {
  }
  if (type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  man->flags = 2U;
  man->available_caching = 458752U;
  man->default_caching = 65536U;
  goto ldv_40105;
  case_2:
  man->func = & ttm_bo_manager_func;
  man->flags = 3U;
  man->available_caching = 393216U;
  man->default_caching = 262144U;
  goto ldv_40105;
  switch_default:
  {
  drm_err("Unsupported memory type %u\n", type);
  }
  return (-22);
  switch_break: ;
  }
  ldv_40105: ;
  return (0);
}
}
static void ast_bo_evict_flags(struct ttm_buffer_object *bo , struct ttm_placement *pl )
{
  struct ast_bo *astbo ;
  struct ast_bo *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ast_bo(bo);
  astbo = tmp;
  tmp___0 = ast_ttm_bo_is_ast_bo(bo);
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
  ast_ttm_placement(astbo, 1);
  *pl = astbo->placement;
  }
  return;
}
}
static int ast_bo_verify_access(struct ttm_buffer_object *bo , struct file *filp )
{
  struct ast_bo *astbo ;
  struct ast_bo *tmp ;
  int tmp___0 ;
  {
  {
  tmp = ast_bo(bo);
  astbo = tmp;
  tmp___0 = drm_vma_node_verify_access(& astbo->gem.vma_node, filp);
  }
  return (tmp___0);
}
}
static int ast_ttm_io_mem_reserve(struct ttm_bo_device *bdev , struct ttm_mem_reg *mem )
{
  struct ttm_mem_type_manager *man ;
  struct ast_private *ast ;
  struct ast_private *tmp ;
  {
  {
  man = (struct ttm_mem_type_manager *)(& bdev->man) + (unsigned long )mem->mem_type;
  tmp = ast_bdev(bdev);
  ast = tmp;
  mem->bus.addr = (void *)0;
  mem->bus.offset = 0UL;
  mem->bus.size = mem->num_pages << 12;
  mem->bus.base = 0UL;
  mem->bus.is_iomem = 0;
  }
  if ((man->flags & 2U) == 0U) {
    return (-22);
  } else {
  }
  {
  if (mem->mem_type == 0U) {
    goto case_0;
  } else {
  }
  if (mem->mem_type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (0);
  case_2:
  mem->bus.offset = mem->start << 12;
  mem->bus.base = (unsigned long )((ast->dev)->pdev)->resource[0].start;
  mem->bus.is_iomem = 1;
  goto ldv_40126;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_40126: ;
  return (0);
}
}
static void ast_ttm_io_mem_free(struct ttm_bo_device *bdev , struct ttm_mem_reg *mem )
{
  {
  return;
}
}
static int ast_bo_move(struct ttm_buffer_object *bo , bool evict , bool interruptible ,
                       bool no_wait_gpu , struct ttm_mem_reg *new_mem )
{
  int r ;
  {
  {
  r = ttm_bo_move_memcpy(bo, (int )evict, (int )no_wait_gpu, new_mem);
  }
  return (r);
}
}
static void ast_ttm_backend_destroy(struct ttm_tt *tt )
{
  {
  {
  ttm_tt_fini(tt);
  kfree((void const *)tt);
  }
  return;
}
}
static struct ttm_backend_func ast_tt_backend_func = {0, 0, & ast_ttm_backend_destroy};
static struct ttm_tt *ast_ttm_tt_create(struct ttm_bo_device *bdev , unsigned long size ,
                                        uint32_t page_flags , struct page *dummy_read_page )
{
  struct ttm_tt *tt ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = kzalloc(80UL, 208U);
  tt = (struct ttm_tt *)tmp;
  }
  if ((unsigned long )tt == (unsigned long )((struct ttm_tt *)0)) {
    return ((struct ttm_tt *)0);
  } else {
  }
  {
  tt->func = & ast_tt_backend_func;
  tmp___0 = ttm_tt_init(tt, bdev, size, page_flags, dummy_read_page);
  }
  if (tmp___0 != 0) {
    {
    kfree((void const *)tt);
    }
    return ((struct ttm_tt *)0);
  } else {
  }
  return (tt);
}
}
static int ast_ttm_tt_populate(struct ttm_tt *ttm )
{
  int tmp ;
  {
  {
  tmp = ttm_pool_populate(ttm);
  }
  return (tmp);
}
}
static void ast_ttm_tt_unpopulate(struct ttm_tt *ttm )
{
  {
  {
  ttm_pool_unpopulate(ttm);
  }
  return;
}
}
struct ttm_bo_driver ast_bo_driver =
     {& ast_ttm_tt_create, & ast_ttm_tt_populate, & ast_ttm_tt_unpopulate, 0, & ast_bo_init_mem_type,
    & ast_bo_evict_flags, & ast_bo_move, & ast_bo_verify_access, 0, 0, 0, & ast_ttm_io_mem_reserve,
    & ast_ttm_io_mem_free};
int ast_mm_init(struct ast_private *ast )
{
  int ret ;
  struct drm_device *dev ;
  struct ttm_bo_device *bdev ;
  {
  {
  dev = ast->dev;
  bdev = & ast->ttm.bdev;
  ret = ast_ttm_global_init(ast);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = ttm_bo_device_init(& ast->ttm.bdev, (struct ttm_bo_global *)ast->ttm.bo_global_ref.ref.object,
                           & ast_bo_driver, (dev->anon_inode)->i_mapping, 1048576ULL,
                           1);
  }
  if (ret != 0) {
    {
    drm_err("Error initialising bo driver; %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ret = ttm_bo_init_mm(bdev, 2U, (unsigned long )(ast->vram_size >> 12));
  }
  if (ret != 0) {
    {
    drm_err("Failed ttm VRAM init: %d\n", ret);
    }
    return (ret);
  } else {
  }
  {
  ast->fb_mtrr = arch_phys_wc_add((unsigned long )(dev->pdev)->resource[0].start,
                                  (dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start ? (unsigned long )(((dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start) + 1ULL) : 0UL);
  }
  return (0);
}
}
void ast_mm_fini(struct ast_private *ast )
{
  {
  {
  ttm_bo_device_release(& ast->ttm.bdev);
  ast_ttm_global_release(ast);
  arch_phys_wc_del(ast->fb_mtrr);
  }
  return;
}
}
void ast_ttm_placement(struct ast_bo *bo , int domain )
{
  u32 c ;
  unsigned int i ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  c = 0U;
  bo->placement.placement = (struct ttm_place const *)(& bo->placements);
  bo->placement.busy_placement = (struct ttm_place const *)(& bo->placements);
  if ((domain & 4) != 0) {
    tmp = c;
    c = c + 1U;
    bo->placements[tmp].flags = 393220U;
  } else {
  }
  if (domain & 1) {
    tmp___0 = c;
    c = c + 1U;
    bo->placements[tmp___0].flags = 65537U;
  } else {
  }
  if (c == 0U) {
    tmp___1 = c;
    c = c + 1U;
    bo->placements[tmp___1].flags = 65537U;
  } else {
  }
  bo->placement.num_placement = c;
  bo->placement.num_busy_placement = c;
  i = 0U;
  goto ldv_40174;
  ldv_40173:
  bo->placements[i].fpfn = 0U;
  bo->placements[i].lpfn = 0U;
  i = i + 1U;
  ldv_40174: ;
  if (i < c) {
    goto ldv_40173;
  } else {
  }
  return;
}
}
int ast_bo_create(struct drm_device *dev , int size , int align , uint32_t flags ,
                  struct ast_bo **pastbo )
{
  struct ast_private *ast ;
  struct ast_bo *astbo ;
  size_t acc_size ;
  int ret ;
  void *tmp ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  tmp = kzalloc(1224UL, 208U);
  astbo = (struct ast_bo *)tmp;
  }
  if ((unsigned long )astbo == (unsigned long )((struct ast_bo *)0)) {
    return (-12);
  } else {
  }
  {
  ret = drm_gem_object_init(dev, & astbo->gem, (size_t )size);
  }
  if (ret != 0) {
    {
    kfree((void const *)astbo);
    }
    return (ret);
  } else {
  }
  {
  astbo->bo.bdev = & ast->ttm.bdev;
  ast_ttm_placement(astbo, 5);
  acc_size = ttm_bo_dma_acc_size(& ast->ttm.bdev, (unsigned long )size, 1224U);
  ret = ttm_bo_init(& ast->ttm.bdev, & astbo->bo, (unsigned long )size, 0, & astbo->placement,
                    (uint32_t )(align >> 12), 0, (struct file *)0, acc_size, (struct sg_table *)0,
                    (struct reservation_object *)0, & ast_bo_ttm_destroy);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  *pastbo = astbo;
  return (0);
}
}
__inline static u64 ast_bo_gpu_offset(struct ast_bo *bo )
{
  {
  return ((u64 )bo->bo.offset);
}
}
int ast_bo_pin(struct ast_bo *bo , u32 pl_flag , u64 *gpu_addr )
{
  int i ;
  int ret ;
  {
  if (bo->pin_count != 0) {
    bo->pin_count = bo->pin_count + 1;
    if ((unsigned long )gpu_addr != (unsigned long )((u64 *)0ULL)) {
      {
      *gpu_addr = ast_bo_gpu_offset(bo);
      }
    } else {
    }
  } else {
  }
  {
  ast_ttm_placement(bo, (int )pl_flag);
  i = 0;
  }
  goto ldv_40198;
  ldv_40197:
  bo->placements[i].flags = bo->placements[i].flags | 2097152U;
  i = i + 1;
  ldv_40198: ;
  if ((unsigned int )i < bo->placement.num_placement) {
    goto ldv_40197;
  } else {
  }
  {
  ret = ttm_bo_validate(& bo->bo, & bo->placement, 0, 0);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  bo->pin_count = 1;
  if ((unsigned long )gpu_addr != (unsigned long )((u64 *)0ULL)) {
    {
    *gpu_addr = ast_bo_gpu_offset(bo);
    }
  } else {
  }
  return (0);
}
}
int ast_bo_unpin(struct ast_bo *bo )
{
  int i ;
  int ret ;
  {
  if (bo->pin_count == 0) {
    {
    drm_err("unpin bad %p\n", bo);
    }
    return (0);
  } else {
  }
  bo->pin_count = bo->pin_count - 1;
  if (bo->pin_count != 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_40206;
  ldv_40205:
  bo->placements[i].flags = bo->placements[i].flags & 4292870143U;
  i = i + 1;
  ldv_40206: ;
  if ((unsigned int )i < bo->placement.num_placement) {
    goto ldv_40205;
  } else {
  }
  {
  ret = ttm_bo_validate(& bo->bo, & bo->placement, 0, 0);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
int ast_bo_push_sysram(struct ast_bo *bo )
{
  int i ;
  int ret ;
  {
  if (bo->pin_count == 0) {
    {
    drm_err("unpin bad %p\n", bo);
    }
    return (0);
  } else {
  }
  bo->pin_count = bo->pin_count - 1;
  if (bo->pin_count != 0) {
    return (0);
  } else {
  }
  if ((unsigned long )bo->kmap.virtual != (unsigned long )((void *)0)) {
    {
    ttm_bo_kunmap(& bo->kmap);
    }
  } else {
  }
  {
  ast_ttm_placement(bo, 1);
  i = 0;
  }
  goto ldv_40214;
  ldv_40213:
  bo->placements[i].flags = bo->placements[i].flags | 2097152U;
  i = i + 1;
  ldv_40214: ;
  if ((unsigned int )i < bo->placement.num_placement) {
    goto ldv_40213;
  } else {
  }
  {
  ret = ttm_bo_validate(& bo->bo, & bo->placement, 0, 0);
  }
  if (ret != 0) {
    {
    drm_err("pushing to VRAM failed\n");
    }
    return (ret);
  } else {
  }
  return (0);
}
}
int ast_mmap(struct file *filp , struct vm_area_struct *vma )
{
  struct drm_file *file_priv ;
  struct ast_private *ast ;
  long tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long long )vma->vm_pgoff <= 1048575ULL, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  file_priv = (struct drm_file *)filp->private_data;
  ast = (struct ast_private *)((file_priv->minor)->dev)->dev_private;
  tmp___0 = ttm_bo_mmap(filp, vma, & ast->ttm.bdev);
  }
  return (tmp___0);
}
}
void ldv_dummy_resourceless_instance_callback_11_11(void (*arg0)(struct ttm_bo_device * ,
                                                                 struct ttm_mem_reg * ) ,
                                                    struct ttm_bo_device *arg1 , struct ttm_mem_reg *arg2 )
{
  {
  {
  ast_ttm_io_mem_free(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_12(int (*arg0)(struct ttm_bo_device * ,
                                                                struct ttm_mem_reg * ) ,
                                                    struct ttm_bo_device *arg1 , struct ttm_mem_reg *arg2 )
{
  {
  {
  ast_ttm_io_mem_reserve(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct ttm_buffer_object * ,
                                                                _Bool , _Bool ,
                                                                _Bool , struct ttm_mem_reg * ) ,
                                                    struct ttm_buffer_object *arg1 ,
                                                    _Bool arg2 , _Bool arg3 , _Bool arg4 ,
                                                    struct ttm_mem_reg *arg5 )
{
  {
  {
  ast_bo_move(arg1, (int )arg2, (int )arg3, (int )arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_16(struct ttm_tt *(*arg0)(struct ttm_bo_device * ,
                                                                           unsigned long ,
                                                                           unsigned int ,
                                                                           struct page * ) ,
                                                    struct ttm_bo_device *arg1 , unsigned long arg2 ,
                                                    unsigned int arg3 , struct page *arg4 )
{
  {
  {
  ast_ttm_tt_create(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_19(int (*arg0)(struct ttm_tt * ) ,
                                                    struct ttm_tt *arg1 )
{
  {
  {
  ast_ttm_tt_populate(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_20(void (*arg0)(struct ttm_tt * ) ,
                                                    struct ttm_tt *arg1 )
{
  {
  {
  ast_ttm_tt_unpopulate(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_21(int (*arg0)(struct ttm_buffer_object * ,
                                                                struct file * ) ,
                                                    struct ttm_buffer_object *arg1 ,
                                                    struct file *arg2 )
{
  {
  {
  ast_bo_verify_access(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct ttm_tt * ) ,
                                                   struct ttm_tt *arg1 )
{
  {
  {
  ast_ttm_backend_destroy(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_7(void (*arg0)(struct ttm_buffer_object * ,
                                                                struct ttm_placement * ) ,
                                                   struct ttm_buffer_object *arg1 ,
                                                   struct ttm_placement *arg2 )
{
  {
  {
  ast_bo_evict_flags(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct ttm_bo_device * ,
                                                               unsigned int , struct ttm_mem_type_manager * ) ,
                                                   struct ttm_bo_device *arg1 , unsigned int arg2 ,
                                                   struct ttm_mem_type_manager *arg3 )
{
  {
  {
  ast_bo_init_mem_type(arg1, arg2, arg3);
  }
  return;
}
}
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
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
u32 ast_mindwm(struct ast_private *ast , u32 r ) ;
void ast_moutdwm(struct ast_private *ast , u32 r , u32 v ) ;
void ast_init_3rdtx(struct drm_device *dev ) ;
static struct ast_dramstruct const ast2000_dram_table_data[25U] =
  { {264U, 0U},
        {288U, 18977U},
        {65280U, 67U},
        {0U, 4294967295U},
        {4U, 137U},
        {8U, 573772627U},
        {12U, 218562571U},
        {16U, 286339891U},
        {32U, 1114960U},
        {40U, 503851248U},
        {36U, 1U},
        {28U, 0U},
        {20U, 3U},
        {65280U, 67U},
        {24U, 305U},
        {20U, 1U},
        {65280U, 67U},
        {24U, 49U},
        {20U, 1U},
        {65280U, 67U},
        {40U, 503851249U},
        {36U, 3U},
        {44U, 521087227U},
        {48U, 4294966785U},
        {65535U, 4294967295U}};
static struct ast_dramstruct const ast1100_dram_table_data[50U] =
  { {8192U, 378054824U},
        {8224U, 16880U},
        {65280U, 67U},
        {0U, 4234150665U},
        {108U, 9474192U},
        {100U, 327680U},
        {4U, 1413U},
        {8U, 1114895U},
        {16U, 572528420U},
        {24U, 506003738U},
        {32U, 13115938U},
        {20U, 16782627U},
        {28U, 270795021U},
        {36U, 13313314U},
        {56U, 4294967170U},
        {60U, 0U},
        {64U, 0U},
        {68U, 0U},
        {72U, 0U},
        {76U, 0U},
        {80U, 0U},
        {84U, 0U},
        {88U, 0U},
        {92U, 0U},
        {96U, 53125162U},
        {100U, 2961408U},
        {104U, 0U},
        {112U, 0U},
        {116U, 0U},
        {120U, 0U},
        {124U, 0U},
        {52U, 1U},
        {65280U, 67U},
        {44U, 1842U},
        {48U, 64U},
        {40U, 5U},
        {40U, 7U},
        {40U, 3U},
        {40U, 1U},
        {12U, 23048U},
        {44U, 1586U},
        {40U, 1U},
        {48U, 960U},
        {40U, 3U},
        {48U, 64U},
        {40U, 3U},
        {12U, 23073U},
        {52U, 31747U},
        {288U, 19521U},
        {65535U, 4294967295U}};
static struct ast_dramstruct const ast2100_dram_table_data[50U] =
  { {8192U, 378054824U},
        {8224U, 16672U},
        {65280U, 67U},
        {0U, 4234150665U},
        {108U, 9474192U},
        {100U, 458752U},
        {4U, 1161U},
        {8U, 1114895U},
        {16U, 842017062U},
        {24U, 659292450U},
        {32U, 13509154U},
        {20U, 16782627U},
        {28U, 270795021U},
        {36U, 13313314U},
        {56U, 4294967170U},
        {60U, 0U},
        {64U, 0U},
        {68U, 0U},
        {72U, 0U},
        {76U, 0U},
        {80U, 0U},
        {84U, 0U},
        {88U, 0U},
        {92U, 0U},
        {96U, 254451754U},
        {100U, 4141061U},
        {104U, 33686018U},
        {112U, 0U},
        {116U, 0U},
        {120U, 0U},
        {124U, 0U},
        {52U, 1U},
        {65280U, 67U},
        {44U, 2370U},
        {48U, 64U},
        {40U, 5U},
        {40U, 7U},
        {40U, 3U},
        {40U, 1U},
        {12U, 23048U},
        {44U, 2114U},
        {40U, 1U},
        {48U, 960U},
        {40U, 3U},
        {48U, 64U},
        {40U, 3U},
        {12U, 23073U},
        {52U, 31747U},
        {288U, 20577U},
        {65535U, 4294967295U}};
static void ast_init_dram_2300(struct drm_device *dev ) ;
void ast_enable_vga(struct drm_device *dev )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_io_write8(ast, 67U, 1);
  ast_io_write8(ast, 66U, 1);
  }
  return;
}
}
void ast_enable_mmio(struct drm_device *dev )
{
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_set_index_reg_mask(ast, 84U, 161, 255, 4);
  }
  return;
}
}
bool ast_is_vga_enabled(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 ch ;
  {
  ast = (struct ast_private *)dev->dev_private;
  if ((unsigned int )ast->chip == 7U) {
  } else {
    {
    ch = ast_io_read8(ast, 67U);
    }
    if ((unsigned int )ch != 0U) {
      {
      ast_open_key(ast);
      ch = ast_get_index_reg_mask(ast, 84U, 182, 255);
      }
      return (((int )ch & 4) != 0);
    } else {
    }
  }
  return (0);
}
}
static u8 const extreginfo[4U] = { 15U, 4U, 28U, 255U};
static u8 const extreginfo_ast2300a0[4U] = { 15U, 4U, 28U, 255U};
static u8 const extreginfo_ast2300[4U] = { 15U, 4U, 31U, 255U};
static void ast_set_def_ext_reg(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 i ;
  u8 index ;
  u8 reg ;
  u8 const *ext_reg_info ;
  {
  ast = (struct ast_private *)dev->dev_private;
  i = 129U;
  goto ldv_40078;
  ldv_40077:
  {
  ast_set_index_reg(ast, 84U, (int )i, 0);
  i = (u8 )((int )i + 1);
  }
  ldv_40078: ;
  if ((unsigned int )i <= 143U) {
    goto ldv_40077;
  } else {
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    if ((unsigned int )(dev->pdev)->revision > 31U) {
      ext_reg_info = (u8 const *)(& extreginfo_ast2300);
    } else {
      ext_reg_info = (u8 const *)(& extreginfo_ast2300a0);
    }
  } else {
    ext_reg_info = (u8 const *)(& extreginfo);
  }
  index = 160U;
  goto ldv_40081;
  ldv_40080:
  {
  ast_set_index_reg_mask(ast, 84U, (int )index, 0, (int )*ext_reg_info);
  index = (u8 )((int )index + 1);
  ext_reg_info = ext_reg_info + 1;
  }
  ldv_40081: ;
  if ((unsigned int )((unsigned char )*ext_reg_info) != 255U) {
    goto ldv_40080;
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 140, 0, 1);
  ast_set_index_reg_mask(ast, 84U, 183, 0, 0);
  reg = 4U;
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    reg = (u8 )((unsigned int )reg | 32U);
  } else {
  }
  {
  ast_set_index_reg_mask(ast, 84U, 182, 255, (int )reg);
  }
  return;
}
}
u32 ast_mindwm(struct ast_private *ast , u32 r )
{
  uint32_t data ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  ast_write32(ast, 61444U, r & 4294901760U);
  ast_write32(ast, 61440U, 1U);
  }
  ldv_40088:
  {
  tmp = ast_read32(ast, 61444U);
  data = tmp & 4294901760U;
  }
  if (data != (r & 4294901760U)) {
    goto ldv_40088;
  } else {
  }
  {
  tmp___0 = ast_read32(ast, (r & 65535U) + 65536U);
  }
  return (tmp___0);
}
}
void ast_moutdwm(struct ast_private *ast , u32 r , u32 v )
{
  uint32_t data ;
  u32 tmp ;
  {
  {
  ast_write32(ast, 61444U, r & 4294901760U);
  ast_write32(ast, 61440U, 1U);
  }
  ldv_40096:
  {
  tmp = ast_read32(ast, 61444U);
  data = tmp & 4294901760U;
  }
  if (data != (r & 4294901760U)) {
    goto ldv_40096;
  } else {
  }
  {
  ast_write32(ast, (r & 65535U) + 65536U, v);
  }
  return;
}
}
static u32 const pattern_AST2150[14U] =
  { 4278255360U, 3425946675U, 2857740885U, 4294836225U,
        1748304382U, 253307312U, 755712838U, 1618378498U,
        1874736806U, 975515701U, 806971501U, 1103500926U,
        1644253887U, 552620256U};
static u32 mmctestburst2_ast2150(struct ast_private *ast , u32 datagen )
{
  u32 data ;
  u32 timeout ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 1U);
  timeout = 0U;
  }
  ldv_40105:
  {
  tmp = ast_mindwm(ast, 510525552U);
  data = tmp & 64U;
  timeout = timeout + 1U;
  }
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (4294967295U);
  } else {
  }
  if (data == 0U) {
    goto ldv_40105;
  } else {
  }
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 3U);
  timeout = 0U;
  }
  ldv_40107:
  {
  tmp___0 = ast_mindwm(ast, 510525552U);
  data = tmp___0 & 64U;
  timeout = timeout + 1U;
  }
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (4294967295U);
  } else {
  }
  if (data == 0U) {
    goto ldv_40107;
  } else {
  }
  {
  tmp___1 = ast_mindwm(ast, 510525552U);
  data = (tmp___1 & 128U) >> 7;
  ast_moutdwm(ast, 510525552U, 0U);
  }
  return (data);
}
}
static int cbrtest_ast2150(struct ast_private *ast )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_40114;
  ldv_40113:
  {
  tmp = mmctestburst2_ast2150(ast, (u32 )i);
  }
  if (tmp != 0U) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_40114: ;
  if (i <= 7) {
    goto ldv_40113;
  } else {
  }
  return (1);
}
}
static int cbrscan_ast2150(struct ast_private *ast , int busw )
{
  u32 patcnt ;
  u32 loop ;
  int tmp ;
  {
  patcnt = 0U;
  goto ldv_40126;
  ldv_40125:
  {
  ast_moutdwm(ast, 510525564U, pattern_AST2150[patcnt]);
  loop = 0U;
  }
  goto ldv_40124;
  ldv_40123:
  {
  tmp = cbrtest_ast2150(ast);
  }
  if (tmp != 0) {
    goto ldv_40122;
  } else {
  }
  loop = loop + 1U;
  ldv_40124: ;
  if (loop <= 4U) {
    goto ldv_40123;
  } else {
  }
  ldv_40122: ;
  if (loop == 5U) {
    return (0);
  } else {
  }
  patcnt = patcnt + 1U;
  ldv_40126: ;
  if (patcnt <= 7U) {
    goto ldv_40125;
  } else {
  }
  return (1);
}
}
static void cbrdlli_ast2150(struct ast_private *ast , int busw )
{
  u32 dll_min[4U] ;
  u32 dll_max[4U] ;
  u32 dlli ;
  u32 data ;
  u32 passcnt ;
  int tmp ;
  {
  cbr_start:
  dll_min[3] = 255U;
  dll_min[2] = dll_min[3];
  dll_min[1] = dll_min[2];
  dll_min[0] = dll_min[1];
  dll_max[3] = 0U;
  dll_max[2] = dll_max[3];
  dll_max[1] = dll_max[2];
  dll_max[0] = dll_max[1];
  passcnt = 0U;
  dlli = 0U;
  goto ldv_40139;
  ldv_40138:
  {
  ast_moutdwm(ast, 510525544U, ((dlli | (dlli << 8)) | (dlli << 16)) | (dlli << 24));
  tmp = cbrscan_ast2150(ast, busw);
  data = (u32 )tmp;
  }
  if (data != 0U) {
    if ((int )data & 1) {
      if (dll_min[0] > dlli) {
        dll_min[0] = dlli;
      } else {
      }
      if (dll_max[0] < dlli) {
        dll_max[0] = dlli;
      } else {
      }
    } else {
    }
    passcnt = passcnt + 1U;
  } else
  if (passcnt > 9U) {
    goto cbr_start;
  } else {
  }
  dlli = dlli + 1U;
  ldv_40139: ;
  if (dlli <= 99U) {
    goto ldv_40138;
  } else {
  }
  if (dll_max[0] == 0U || dll_max[0] - dll_min[0] <= 9U) {
    goto cbr_start;
  } else {
  }
  {
  dlli = dll_min[0] + ((dll_max[0] - dll_min[0]) * 7U >> 4);
  ast_moutdwm(ast, 510525544U, ((dlli | (dlli << 8)) | (dlli << 16)) | (dlli << 24));
  }
  return;
}
}
static void ast_init_dram_reg(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 j ;
  u32 data ;
  u32 temp ;
  u32 i ;
  struct ast_dramstruct const *dram_reg_info ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  j = ast_get_index_reg_mask(ast, 84U, 208, 255);
  }
  if ((int )((signed char )j) >= 0) {
    if ((unsigned int )ast->chip == 0U) {
      {
      dram_reg_info = (struct ast_dramstruct const *)(& ast2000_dram_table_data);
      ast_write32(ast, 61444U, 510525440U);
      ast_write32(ast, 61440U, 1U);
      ast_write32(ast, 65792U, 168U);
      }
      ldv_40150:
      {
      tmp = ast_read32(ast, 65792U);
      }
      if (tmp != 168U) {
        goto ldv_40150;
      } else {
      }
    } else {
      if ((unsigned int )ast->chip == 1U || (unsigned int )ast->chip == 2200U) {
        dram_reg_info = (struct ast_dramstruct const *)(& ast2100_dram_table_data);
      } else {
        dram_reg_info = (struct ast_dramstruct const *)(& ast1100_dram_table_data);
      }
      {
      ast_write32(ast, 61444U, 510525440U);
      ast_write32(ast, 61440U, 1U);
      ast_write32(ast, 73728U, 378054824U);
      }
      ldv_40152:
      {
      tmp___0 = ast_read32(ast, 73728U);
      }
      if (tmp___0 != 1U) {
        goto ldv_40152;
      } else {
      }
      {
      ast_write32(ast, 65536U, 4234150665U);
      }
      ldv_40154:
      {
      tmp___1 = ast_read32(ast, 65536U);
      }
      if (tmp___1 != 1U) {
        goto ldv_40154;
      } else {
      }
    }
    goto ldv_40160;
    ldv_40159: ;
    if ((unsigned int )((unsigned short )dram_reg_info->index) == 65280U) {
      i = 0U;
      goto ldv_40157;
      ldv_40156:
      {
      __udelay((unsigned long )dram_reg_info->data);
      i = i + 1U;
      }
      ldv_40157: ;
      if (i <= 14U) {
        goto ldv_40156;
      } else {
      }
    } else
    if ((unsigned int )((unsigned short )dram_reg_info->index) == 4U && (unsigned int )ast->chip != 0U) {
      data = dram_reg_info->data;
      if (ast->dram_type == 1U) {
        data = 3465U;
      } else
      if (ast->dram_type == 3U) {
        data = 3213U;
      } else {
      }
      {
      temp = ast_read32(ast, 73840U);
      temp = temp & 12U;
      temp = temp << 2;
      ast_write32(ast, (u32 )((int )dram_reg_info->index + 65536), data | temp);
      }
    } else {
      {
      ast_write32(ast, (u32 )((int )dram_reg_info->index + 65536), dram_reg_info->data);
      }
    }
    dram_reg_info = dram_reg_info + 1;
    ldv_40160: ;
    if ((unsigned int )((unsigned short )dram_reg_info->index) != 65535U) {
      goto ldv_40159;
    } else {
    }
    {
    data = ast_read32(ast, 65824U);
    }
    if (data == 20577U) {
      {
      data = ast_read32(ast, 65540U);
      }
      if ((data & 64U) != 0U) {
        {
        cbrdlli_ast2150(ast, 16);
        }
      } else {
        {
        cbrdlli_ast2150(ast, 32);
        }
      }
    } else {
    }
    {
    if ((unsigned int )ast->chip == 0U) {
      goto case_0;
    } else {
    }
    if ((unsigned int )ast->chip == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )ast->chip == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )ast->chip == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )ast->chip == 4U) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_0:
    {
    temp = ast_read32(ast, 65856U);
    ast_write32(ast, 65856U, temp | 64U);
    }
    goto ldv_40163;
    case_2: ;
    case_1: ;
    case_3: ;
    case_4:
    {
    temp = ast_read32(ast, 73740U);
    ast_write32(ast, 73740U, temp & 4294967293U);
    temp = ast_read32(ast, 73792U);
    ast_write32(ast, 73792U, temp | 64U);
    }
    goto ldv_40163;
    switch_default: ;
    goto ldv_40163;
    switch_break: ;
    }
    ldv_40163: ;
  } else {
  }
  ldv_40169:
  {
  j = ast_get_index_reg_mask(ast, 84U, 208, 255);
  }
  if (((int )j & 64) == 0) {
    goto ldv_40169;
  } else {
  }
  return;
}
}
void ast_post_gpu(struct drm_device *dev )
{
  u32 reg ;
  struct ast_private *ast ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  pci_read_config_dword((struct pci_dev const *)(ast->dev)->pdev, 4, & reg);
  reg = reg | 3U;
  pci_write_config_dword((struct pci_dev const *)(ast->dev)->pdev, 4, reg);
  ast_enable_vga(dev);
  ast_enable_mmio(dev);
  ast_open_key(ast);
  ast_set_def_ext_reg(dev);
  }
  if ((unsigned int )ast->chip - 5U <= 1U) {
    {
    ast_init_dram_2300(dev);
    }
  } else {
    {
    ast_init_dram_reg(dev);
    }
  }
  {
  ast_init_3rdtx(dev);
  }
  return;
}
}
static u32 const pattern[8U] =
  { 4278255360U, 3425946675U, 2857740885U, 2289535095U,
        2462862702U, 1413299422U, 4058530759U, 2086785619U};
static int mmc_test_burst(struct ast_private *ast , u32 datagen )
{
  u32 data ;
  u32 timeout ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 193U);
  timeout = 0U;
  }
  ldv_40206:
  {
  tmp = ast_mindwm(ast, 510525552U);
  data = tmp & 12288U;
  }
  if ((data & 8192U) != 0U) {
    return (0);
  } else {
  }
  timeout = timeout + 1U;
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (0);
  } else {
  }
  if (data == 0U) {
    goto ldv_40206;
  } else {
  }
  {
  ast_moutdwm(ast, 510525552U, 0U);
  }
  return (1);
}
}
static int mmc_test_burst2(struct ast_private *ast , u32 datagen )
{
  u32 data ;
  u32 timeout ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 65U);
  timeout = 0U;
  }
  ldv_40214:
  {
  tmp = ast_mindwm(ast, 510525552U);
  data = tmp & 4096U;
  timeout = timeout + 1U;
  }
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (-1);
  } else {
  }
  if (data == 0U) {
    goto ldv_40214;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525560U);
  data = (data | (data >> 16)) & 65535U;
  ast_moutdwm(ast, 510525552U, 0U);
  }
  return ((int )data);
}
}
static int mmc_test_single(struct ast_private *ast , u32 datagen )
{
  u32 data ;
  u32 timeout ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 197U);
  timeout = 0U;
  }
  ldv_40222:
  {
  tmp = ast_mindwm(ast, 510525552U);
  data = tmp & 12288U;
  }
  if ((data & 8192U) != 0U) {
    return (0);
  } else {
  }
  timeout = timeout + 1U;
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (0);
  } else {
  }
  if (data == 0U) {
    goto ldv_40222;
  } else {
  }
  {
  ast_moutdwm(ast, 510525552U, 0U);
  }
  return (1);
}
}
static int mmc_test_single2(struct ast_private *ast , u32 datagen )
{
  u32 data ;
  u32 timeout ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525552U, (datagen << 3) | 5U);
  timeout = 0U;
  }
  ldv_40230:
  {
  tmp = ast_mindwm(ast, 510525552U);
  data = tmp & 4096U;
  timeout = timeout + 1U;
  }
  if (timeout > 5000000U) {
    {
    ast_moutdwm(ast, 510525552U, 0U);
    }
    return (-1);
  } else {
  }
  if (data == 0U) {
    goto ldv_40230;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525560U);
  data = (data | (data >> 16)) & 65535U;
  ast_moutdwm(ast, 510525552U, 0U);
  }
  return ((int )data);
}
}
static int cbr_test(struct ast_private *ast )
{
  u32 data ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mmc_test_single2(ast, 0U);
  data = (u32 )tmp;
  }
  if ((data & 255U) != 0U && (data & 65280U) != 0U) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_40238;
  ldv_40237:
  {
  tmp___0 = mmc_test_burst2(ast, (u32 )i);
  data = (u32 )tmp___0;
  }
  if ((data & 255U) != 0U && (data & 65280U) != 0U) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_40238: ;
  if (i <= 7) {
    goto ldv_40237;
  } else {
  }
  if (data == 0U) {
    return (3);
  } else
  if ((data & 255U) != 0U) {
    return (2);
  } else {
  }
  return (1);
}
}
static int cbr_scan(struct ast_private *ast )
{
  u32 data ;
  u32 data2 ;
  u32 patcnt ;
  u32 loop ;
  int tmp ;
  {
  data2 = 3U;
  patcnt = 0U;
  goto ldv_40251;
  ldv_40250:
  {
  ast_moutdwm(ast, 510525564U, pattern[patcnt]);
  loop = 0U;
  }
  goto ldv_40249;
  ldv_40248:
  {
  tmp = cbr_test(ast);
  data = (u32 )tmp;
  }
  if (data != 0U) {
    data2 = data2 & data;
    if (data2 == 0U) {
      return (0);
    } else {
    }
    goto ldv_40247;
  } else {
  }
  loop = loop + 1U;
  ldv_40249: ;
  if (loop <= 4U) {
    goto ldv_40248;
  } else {
  }
  ldv_40247: ;
  if (loop == 5U) {
    return (0);
  } else {
  }
  patcnt = patcnt + 1U;
  ldv_40251: ;
  if (patcnt <= 7U) {
    goto ldv_40250;
  } else {
  }
  return ((int )data2);
}
}
static u32 cbr_test2(struct ast_private *ast )
{
  u32 data ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mmc_test_burst2(ast, 0U);
  data = (u32 )tmp;
  }
  if (data == 65535U) {
    return (0U);
  } else {
  }
  {
  tmp___0 = mmc_test_single2(ast, 0U);
  data = data | (u32 )tmp___0;
  }
  if (data == 65535U) {
    return (0U);
  } else {
  }
  return (~ data & 65535U);
}
}
static u32 cbr_scan2(struct ast_private *ast )
{
  u32 data ;
  u32 data2 ;
  u32 patcnt ;
  u32 loop ;
  {
  data2 = 65535U;
  patcnt = 0U;
  goto ldv_40268;
  ldv_40267:
  {
  ast_moutdwm(ast, 510525564U, pattern[patcnt]);
  loop = 0U;
  }
  goto ldv_40266;
  ldv_40265:
  {
  data = cbr_test2(ast);
  }
  if (data != 0U) {
    data2 = data2 & data;
    if (data2 == 0U) {
      return (0U);
    } else {
    }
    goto ldv_40264;
  } else {
  }
  loop = loop + 1U;
  ldv_40266: ;
  if (loop <= 4U) {
    goto ldv_40265;
  } else {
  }
  ldv_40264: ;
  if (loop == 5U) {
    return (0U);
  } else {
  }
  patcnt = patcnt + 1U;
  ldv_40268: ;
  if (patcnt <= 7U) {
    goto ldv_40267;
  } else {
  }
  return (data2);
}
}
static u32 cbr_test3(struct ast_private *ast )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mmc_test_burst(ast, 0U);
  }
  if (tmp == 0) {
    return (0U);
  } else {
  }
  {
  tmp___0 = mmc_test_single(ast, 0U);
  }
  if (tmp___0 == 0) {
    return (0U);
  } else {
  }
  return (1U);
}
}
static u32 cbr_scan3(struct ast_private *ast )
{
  u32 patcnt ;
  u32 loop ;
  u32 tmp ;
  {
  patcnt = 0U;
  goto ldv_40282;
  ldv_40281:
  {
  ast_moutdwm(ast, 510525564U, pattern[patcnt]);
  loop = 0U;
  }
  goto ldv_40280;
  ldv_40279:
  {
  tmp = cbr_test3(ast);
  }
  if (tmp != 0U) {
    goto ldv_40278;
  } else {
  }
  loop = loop + 1U;
  ldv_40280: ;
  if (loop <= 1U) {
    goto ldv_40279;
  } else {
  }
  ldv_40278: ;
  if (loop == 2U) {
    return (0U);
  } else {
  }
  patcnt = patcnt + 1U;
  ldv_40282: ;
  if (patcnt <= 7U) {
    goto ldv_40281;
  } else {
  }
  return (1U);
}
}
static bool finetuneDQI_L(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 gold_sadj[2U] ;
  u32 dllmin[16U] ;
  u32 dllmax[16U] ;
  u32 dlli ;
  u32 data ;
  u32 cnt ;
  u32 mask ;
  u32 passcnt ;
  u32 retry ;
  bool status ;
  u32 tmp ;
  {
  retry = 0U;
  status = 0;
  FINETUNE_START:
  cnt = 0U;
  goto ldv_40300;
  ldv_40299:
  dllmin[cnt] = 255U;
  dllmax[cnt] = 0U;
  cnt = cnt + 1U;
  ldv_40300: ;
  if (cnt <= 15U) {
    goto ldv_40299;
  } else {
  }
  passcnt = 0U;
  dlli = 0U;
  goto ldv_40307;
  ldv_40306:
  {
  ast_moutdwm(ast, 510525544U, ((dlli << 16) | (dlli << 24)) | 5120U);
  ast_moutdwm(ast, 510525556U, 4095U);
  data = cbr_scan2(ast);
  }
  if (data != 0U) {
    mask = 65537U;
    cnt = 0U;
    goto ldv_40303;
    ldv_40302: ;
    if ((data & mask) != 0U) {
      if (dllmin[cnt] > dlli) {
        dllmin[cnt] = dlli;
      } else {
      }
      if (dllmax[cnt] < dlli) {
        dllmax[cnt] = dlli;
      } else {
      }
    } else {
    }
    mask = mask << 1;
    cnt = cnt + 1U;
    ldv_40303: ;
    if (cnt <= 15U) {
      goto ldv_40302;
    } else {
    }
    passcnt = passcnt + 1U;
  } else
  if (passcnt > 9U) {
    goto ldv_40305;
  } else {
  }
  dlli = dlli + 1U;
  ldv_40307: ;
  if (dlli <= 75U) {
    goto ldv_40306;
  } else {
  }
  ldv_40305:
  gold_sadj[0] = 0U;
  passcnt = 0U;
  cnt = 0U;
  goto ldv_40309;
  ldv_40308: ;
  if (dllmax[cnt] > dllmin[cnt] && dllmax[cnt] - dllmin[cnt] > 9U) {
    gold_sadj[0] = gold_sadj[0] + dllmin[cnt];
    passcnt = passcnt + 1U;
  } else {
  }
  cnt = cnt + 1U;
  ldv_40309: ;
  if (cnt <= 15U) {
    goto ldv_40308;
  } else {
  }
  tmp = retry;
  retry = retry + 1U;
  if (tmp > 10U) {
    goto FINETUNE_DONE;
  } else {
  }
  if (passcnt != 16U) {
    goto FINETUNE_START;
  } else {
  }
  status = 1;
  FINETUNE_DONE:
  gold_sadj[0] = gold_sadj[0] >> 4;
  gold_sadj[1] = gold_sadj[0];
  data = 0U;
  cnt = 0U;
  goto ldv_40313;
  ldv_40312:
  data = data >> 3;
  if (dllmax[cnt] > dllmin[cnt] && dllmax[cnt] - dllmin[cnt] > 9U) {
    dlli = dllmin[cnt];
    if (gold_sadj[0] >= dlli) {
      dlli = (gold_sadj[0] - dlli) * 19U >> 5;
      if (dlli > 3U) {
        dlli = 3U;
      } else {
      }
    } else {
      dlli = (dlli - gold_sadj[0]) * 19U >> 5;
      if (dlli > 4U) {
        dlli = 4U;
      } else {
      }
      dlli = - dlli & 7U;
    }
    data = data | (dlli << 21);
  } else {
  }
  cnt = cnt + 1U;
  ldv_40313: ;
  if (cnt <= 7U) {
    goto ldv_40312;
  } else {
  }
  {
  ast_moutdwm(ast, 510525568U, data);
  data = 0U;
  cnt = 8U;
  }
  goto ldv_40316;
  ldv_40315:
  data = data >> 3;
  if (dllmax[cnt] > dllmin[cnt] && dllmax[cnt] - dllmin[cnt] > 9U) {
    dlli = dllmin[cnt];
    if (gold_sadj[1] >= dlli) {
      dlli = (gold_sadj[1] - dlli) * 19U >> 5;
      if (dlli > 3U) {
        dlli = 3U;
      } else {
        dlli = (dlli - 1U) & 7U;
      }
    } else {
      dlli = (dlli - gold_sadj[1]) * 19U >> 5;
      dlli = dlli + 1U;
      if (dlli > 4U) {
        dlli = 4U;
      } else {
      }
      dlli = - dlli & 7U;
    }
    data = data | (dlli << 21);
  } else {
  }
  cnt = cnt + 1U;
  ldv_40316: ;
  if (cnt <= 15U) {
    goto ldv_40315;
  } else {
  }
  {
  ast_moutdwm(ast, 510525572U, data);
  }
  return (status);
}
}
static void finetuneDQSI(struct ast_private *ast )
{
  u32 dlli ;
  u32 dqsip ;
  u32 dqidly ;
  u32 reg_mcr18 ;
  u32 reg_mcr0c ;
  u32 passcnt[2U] ;
  u32 diff ;
  u32 g_dqidly ;
  u32 g_dqsip ;
  u32 g_margin ;
  u32 g_side ;
  u16 pass[32U][2U][2U] ;
  char tag[2U][76U] ;
  u32 tmp ;
  {
  {
  reg_mcr0c = ast_mindwm(ast, 510525452U);
  reg_mcr18 = ast_mindwm(ast, 510525464U);
  reg_mcr18 = reg_mcr18 & 65535U;
  ast_moutdwm(ast, 510525464U, reg_mcr18);
  dlli = 0U;
  }
  goto ldv_40335;
  ldv_40334:
  tag[0][dlli] = 0;
  tag[1][dlli] = 0;
  dlli = dlli + 1U;
  ldv_40335: ;
  if (dlli <= 75U) {
    goto ldv_40334;
  } else {
  }
  dqidly = 0U;
  goto ldv_40338;
  ldv_40337:
  pass[dqidly][0][0] = 255U;
  pass[dqidly][0][1] = 0U;
  pass[dqidly][1][0] = 255U;
  pass[dqidly][1][1] = 0U;
  dqidly = dqidly + 1U;
  ldv_40338: ;
  if (dqidly <= 31U) {
    goto ldv_40337;
  } else {
  }
  dqidly = 0U;
  goto ldv_40347;
  ldv_40346:
  passcnt[1] = 0U;
  passcnt[0] = passcnt[1];
  dqsip = 0U;
  goto ldv_40344;
  ldv_40343:
  {
  ast_moutdwm(ast, 510525452U, 0U);
  ast_moutdwm(ast, 510525464U, (reg_mcr18 | (dqidly << 16)) | (dqsip << 23));
  ast_moutdwm(ast, 510525452U, reg_mcr0c);
  dlli = 0U;
  }
  goto ldv_40342;
  ldv_40341:
  {
  ast_moutdwm(ast, 510525544U, ((dlli << 16) | (dlli << 24)) | 4864U);
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525556U, 1023U);
  tmp = cbr_scan3(ast);
  }
  if (tmp != 0U) {
    if (dlli == 0U) {
      goto ldv_40340;
    } else {
    }
    passcnt[dqsip] = passcnt[dqsip] + 1U;
    tag[dqsip][dlli] = 80;
    if (dlli < (u32 )pass[dqidly][dqsip][0]) {
      pass[dqidly][dqsip][0] = (unsigned short )dlli;
    } else {
    }
    if (dlli > (u32 )pass[dqidly][dqsip][1]) {
      pass[dqidly][dqsip][1] = (unsigned short )dlli;
    } else {
    }
  } else
  if (passcnt[dqsip] > 4U) {
    goto ldv_40340;
  } else {
    pass[dqidly][dqsip][0] = 255U;
    pass[dqidly][dqsip][1] = 0U;
  }
  dlli = dlli + 1U;
  ldv_40342: ;
  if (dlli <= 75U) {
    goto ldv_40341;
  } else {
  }
  ldv_40340:
  dqsip = dqsip + 1U;
  ldv_40344: ;
  if (dqsip <= 1U) {
    goto ldv_40343;
  } else {
  }
  if (passcnt[0] == 0U && passcnt[1] == 0U) {
    dqidly = dqidly + 1U;
  } else {
  }
  dqidly = dqidly + 1U;
  ldv_40347: ;
  if (dqidly <= 31U) {
    goto ldv_40346;
  } else {
  }
  g_side = 0U;
  g_margin = g_side;
  g_dqsip = g_margin;
  g_dqidly = g_dqsip;
  dqidly = 0U;
  goto ldv_40360;
  ldv_40359:
  dqsip = 0U;
  goto ldv_40357;
  ldv_40356: ;
  if ((int )pass[dqidly][dqsip][0] > (int )pass[dqidly][dqsip][1]) {
    goto ldv_40349;
  } else {
  }
  diff = (u32 )((int )pass[dqidly][dqsip][1] - (int )pass[dqidly][dqsip][0]);
  if (diff + 2U < g_margin) {
    goto ldv_40349;
  } else {
  }
  passcnt[1] = 0U;
  passcnt[0] = passcnt[1];
  dlli = (u32 )pass[dqidly][dqsip][0];
  goto ldv_40351;
  ldv_40350:
  dlli = dlli - 1U;
  passcnt[0] = passcnt[0] + 1U;
  ldv_40351: ;
  if (dlli != 0U && (int )((signed char )tag[dqsip][dlli]) != 0) {
    goto ldv_40350;
  } else {
  }
  dlli = (u32 )pass[dqidly][dqsip][1];
  goto ldv_40354;
  ldv_40353:
  dlli = dlli + 1U;
  passcnt[1] = passcnt[1] + 1U;
  ldv_40354: ;
  if (dlli <= 75U && (int )((signed char )tag[dqsip][dlli]) != 0) {
    goto ldv_40353;
  } else {
  }
  if (passcnt[0] > passcnt[1]) {
    passcnt[0] = passcnt[1];
  } else {
  }
  passcnt[1] = 0U;
  if (passcnt[0] > g_side) {
    passcnt[1] = passcnt[0] - g_side;
  } else {
  }
  if (diff > g_margin + 1U && (passcnt[1] != 0U || passcnt[0] > 8U)) {
    g_margin = diff;
    g_dqidly = dqidly;
    g_dqsip = dqsip;
    g_side = passcnt[0];
  } else
  if (passcnt[1] > 1U && g_side <= 7U) {
    if (diff > g_margin) {
      g_margin = diff;
    } else {
    }
    g_dqidly = dqidly;
    g_dqsip = dqsip;
    g_side = passcnt[0];
  } else {
  }
  ldv_40349:
  dqsip = dqsip + 1U;
  ldv_40357: ;
  if (dqsip <= 1U) {
    goto ldv_40356;
  } else {
  }
  dqidly = dqidly + 1U;
  ldv_40360: ;
  if (dqidly <= 31U) {
    goto ldv_40359;
  } else {
  }
  {
  reg_mcr18 = (reg_mcr18 | (g_dqidly << 16)) | (g_dqsip << 23);
  ast_moutdwm(ast, 510525464U, reg_mcr18);
  }
  return;
}
}
static bool cbr_dll2(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 dllmin[2U] ;
  u32 dllmax[2U] ;
  u32 dlli ;
  u32 data ;
  u32 passcnt ;
  u32 retry ;
  bool status ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  {
  retry = 0U;
  status = 0;
  finetuneDQSI(ast);
  tmp = finetuneDQI_L(ast, param);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (status);
  } else {
  }
  CBR_START2:
  dllmin[1] = 255U;
  dllmin[0] = dllmin[1];
  dllmax[1] = 0U;
  dllmax[0] = dllmax[1];
  passcnt = 0U;
  dlli = 0U;
  goto ldv_40376;
  ldv_40375:
  {
  ast_moutdwm(ast, 510525544U, ((dlli << 16) | (dlli << 24)) | 4864U);
  ast_moutdwm(ast, 510525556U, 65535U);
  tmp___1 = cbr_scan(ast);
  data = (u32 )tmp___1;
  }
  if (data != 0U) {
    if ((int )data & 1) {
      if (dllmin[0] > dlli) {
        dllmin[0] = dlli;
      } else {
      }
      if (dllmax[0] < dlli) {
        dllmax[0] = dlli;
      } else {
      }
    } else {
    }
    if ((data & 2U) != 0U) {
      if (dllmin[1] > dlli) {
        dllmin[1] = dlli;
      } else {
      }
      if (dllmax[1] < dlli) {
        dllmax[1] = dlli;
      } else {
      }
    } else {
    }
    passcnt = passcnt + 1U;
  } else
  if (passcnt > 9U) {
    goto ldv_40374;
  } else {
  }
  dlli = dlli + 1U;
  ldv_40376: ;
  if (dlli <= 75U) {
    goto ldv_40375;
  } else {
  }
  ldv_40374:
  tmp___2 = retry;
  retry = retry + 1U;
  if (tmp___2 > 10U) {
    goto CBR_DONE2;
  } else {
  }
  if (dllmax[0] == 0U || dllmax[0] - dllmin[0] <= 9U) {
    goto CBR_START2;
  } else {
  }
  if (dllmax[1] == 0U || dllmax[1] - dllmin[1] <= 9U) {
    goto CBR_START2;
  } else {
  }
  status = 1;
  CBR_DONE2:
  {
  dlli = (dllmin[1] + dllmax[1]) >> 1;
  dlli = dlli << 8;
  dlli = dlli + ((dllmin[0] + dllmax[0]) >> 1);
  tmp___3 = ast_mindwm(ast, 510787672U);
  ast_moutdwm(ast, 510525544U, tmp___3 | (dlli << 16));
  }
  return (status);
}
}
static void get_ddr3_info(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 trap ;
  u32 trap_AC2 ;
  u32 trap_MRS ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510533632U, 378054824U);
  tmp = ast_mindwm(ast, 510533744U);
  trap = (tmp >> 25) & 3U;
  trap_AC2 = (trap << 16) + 131072U;
  trap_AC2 = trap_AC2 | (((trap & 2U) << 19) + 3145728U);
  trap_MRS = (trap << 4) + 16U;
  trap_MRS = trap_MRS | ((trap & 2U) << 18);
  param->reg_MADJ = 216140U;
  param->reg_SADJ = 6144U;
  param->reg_DRV = 240U;
  param->reg_PERIOD = param->dram_freq;
  param->rodt = 0U;
  }
  {
  if (param->dram_freq == 336U) {
    goto case_336;
  } else {
  }
  if (param->dram_freq == 396U) {
    goto case_396;
  } else {
  }
  if (param->dram_freq == 408U) {
    goto case_408;
  } else {
  }
  if (param->dram_freq == 456U) {
    goto case_456;
  } else {
  }
  if (param->dram_freq == 504U) {
    goto case_504;
  } else {
  }
  if (param->dram_freq == 528U) {
    goto case_528;
  } else {
  }
  if (param->dram_freq == 576U) {
    goto case_576;
  } else {
  }
  if (param->dram_freq == 600U) {
    goto case_600;
  } else {
  }
  if (param->dram_freq == 624U) {
    goto case_624;
  } else {
  }
  goto switch_default___0;
  case_336:
  {
  ast_moutdwm(ast, 510533664U, 400U);
  param->wodt = 0U;
  param->reg_AC1 = 572532517U;
  param->reg_AC2 = trap_AC2 | 2852156947U;
  param->reg_DQSIC = 186U;
  param->reg_MRS = trap_MRS | 67113984U;
  param->reg_EMRS = 0U;
  param->reg_IOZ = 35U;
  param->reg_DQIDLY = 116U;
  param->reg_FREQ = 19904U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 3U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0: ;
  case_1:
  param->reg_AC2 = trap_AC2 | 2852156947U;
  goto ldv_40389;
  case_6:
  param->reg_AC2 = trap_AC2 | 2852156956U;
  goto ldv_40389;
  case_7:
  param->reg_AC2 = trap_AC2 | 2852156982U;
  goto ldv_40389;
  switch_break___0: ;
  }
  ldv_40389: ;
  goto ldv_40392;
  switch_default___0: ;
  case_396:
  {
  ast_moutdwm(ast, 510533664U, 1009U);
  param->wodt = 1U;
  param->reg_AC1 = 858794021U;
  param->reg_AC2 = trap_AC2 | 3422590487U;
  param->reg_DQSIC = 226U;
  param->reg_MRS = trap_MRS | 67114496U;
  param->reg_EMRS = 0U;
  param->reg_IOZ = 52U;
  param->reg_DRV = 250U;
  param->reg_DQIDLY = 137U;
  param->reg_FREQ = 20544U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 4U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0___0;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___0;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___0;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___0;
  } else {
  }
  goto switch_default___1;
  switch_default___1: ;
  case_0___0: ;
  case_1___0:
  param->reg_AC2 = trap_AC2 | 3422590487U;
  goto ldv_40398;
  case_6___0:
  param->reg_AC2 = trap_AC2 | 3422590498U;
  goto ldv_40398;
  case_7___0:
  param->reg_AC2 = trap_AC2 | 3422590527U;
  goto ldv_40398;
  switch_break___1: ;
  }
  ldv_40398: ;
  goto ldv_40392;
  case_408:
  {
  ast_moutdwm(ast, 510533664U, 496U);
  param->wodt = 1U;
  param->reg_AC1 = 858794021U;
  param->reg_AC2 = trap_AC2 | 3422590487U;
  param->reg_DQSIC = 226U;
  param->reg_MRS = trap_MRS | 67114496U;
  param->reg_EMRS = 0U;
  param->reg_IOZ = 35U;
  param->reg_DRV = 250U;
  param->reg_DQIDLY = 137U;
  param->reg_FREQ = 20672U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 4U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0___1;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___1;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___1;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___1;
  } else {
  }
  goto switch_default___2;
  switch_default___2: ;
  case_0___1: ;
  case_1___1:
  param->reg_AC2 = trap_AC2 | 3422590487U;
  goto ldv_40405;
  case_6___1:
  param->reg_AC2 = trap_AC2 | 3422590498U;
  goto ldv_40405;
  case_7___1:
  param->reg_AC2 = trap_AC2 | 3422590527U;
  goto ldv_40405;
  switch_break___2: ;
  }
  ldv_40405: ;
  goto ldv_40392;
  case_456:
  {
  ast_moutdwm(ast, 510533664U, 560U);
  param->wodt = 0U;
  param->reg_AC1 = 858794278U;
  param->reg_AC2 = 3443824154U;
  param->reg_DQSIC = 252U;
  param->reg_MRS = 530480U;
  param->reg_EMRS = 0U;
  param->reg_IOZ = 69U;
  param->reg_DQIDLY = 151U;
  param->reg_FREQ = 21184U;
  param->madj_max = 88U;
  param->dll2_finetune_step = 4U;
  }
  goto ldv_40392;
  case_504:
  {
  ast_moutdwm(ast, 510533664U, 624U);
  param->wodt = 1U;
  param->reg_AC1 = 858794278U;
  param->reg_AC2 = 3729040925U;
  param->reg_DQSIC = 279U;
  param->reg_MRS = 530992U;
  param->reg_EMRS = 0U;
  param->reg_IOZ = 117440699U;
  param->reg_DQIDLY = 160U;
  param->reg_FREQ = 21696U;
  param->madj_max = 79U;
  param->dll2_finetune_step = 4U;
  }
  goto ldv_40392;
  case_528:
  {
  ast_moutdwm(ast, 510533664U, 656U);
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 858794278U;
  param->reg_AC2 = 4014257694U;
  param->reg_DQSIC = 293U;
  param->reg_MRS = 530992U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 245U;
  param->reg_IOZ = 35U;
  param->reg_DQIDLY = 136U;
  param->reg_FREQ = 21952U;
  param->madj_max = 76U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40392;
  case_576:
  {
  ast_moutdwm(ast, 510533664U, 320U);
  param->reg_MADJ = 1271912U;
  param->reg_SADJ = 17716U;
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 858794551U;
  param->reg_AC2 = 4015437342U;
  param->reg_DQSIC = 319U;
  param->reg_MRS = 1055312U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 250U;
  param->reg_IOZ = 35U;
  param->reg_DQIDLY = 120U;
  param->reg_FREQ = 22464U;
  param->madj_max = 136U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40392;
  case_600:
  {
  ast_moutdwm(ast, 510533664U, 737U);
  param->reg_MADJ = 1271912U;
  param->reg_SADJ = 17716U;
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 842017335U;
  param->reg_AC2 = 3747001887U;
  param->reg_DQSIC = 333U;
  param->reg_MRS = 1055312U;
  param->reg_EMRS = 4U;
  param->reg_DRV = 245U;
  param->reg_IOZ = 35U;
  param->reg_DQIDLY = 120U;
  param->reg_FREQ = 22720U;
  param->madj_max = 132U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40392;
  case_624:
  {
  ast_moutdwm(ast, 510533664U, 352U);
  param->reg_MADJ = 1271912U;
  param->reg_SADJ = 17716U;
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 842017335U;
  param->reg_AC2 = 4015437345U;
  param->reg_DQSIC = 346U;
  param->reg_MRS = 34609744U;
  param->reg_EMRS = 4U;
  param->reg_DRV = 245U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 120U;
  param->reg_FREQ = 22976U;
  param->madj_max = 128U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40392;
  switch_break: ;
  }
  ldv_40392: ;
  {
  if (param->dram_chipid == 0U) {
    goto case_0___2;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___2;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___2;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___2;
  } else {
  }
  goto switch_default___3;
  case_0___2:
  param->dram_config = 304U;
  goto ldv_40415;
  switch_default___3: ;
  case_1___2:
  param->dram_config = 305U;
  goto ldv_40415;
  case_6___2:
  param->dram_config = 306U;
  goto ldv_40415;
  case_7___2:
  param->dram_config = 307U;
  goto ldv_40415;
  switch_break___3: ;
  }
  ldv_40415: ;
  {
  if (param->vram_size == 8388608U) {
    goto case_8388608;
  } else {
  }
  if (param->vram_size == 16777216U) {
    goto case_16777216;
  } else {
  }
  if (param->vram_size == 33554432U) {
    goto case_33554432;
  } else {
  }
  if (param->vram_size == 67108864U) {
    goto case_67108864;
  } else {
  }
  goto switch_default___4;
  switch_default___4: ;
  case_8388608:
  param->dram_config = param->dram_config;
  goto ldv_40422;
  case_16777216:
  param->dram_config = param->dram_config | 4U;
  goto ldv_40422;
  case_33554432:
  param->dram_config = param->dram_config | 8U;
  goto ldv_40422;
  case_67108864:
  param->dram_config = param->dram_config | 12U;
  goto ldv_40422;
  switch_break___4: ;
  }
  ldv_40422: ;
  return;
}
}
static void ddr3_init(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 data ;
  u32 data2 ;
  u32 retry ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  {
  retry = 0U;
  ddr3_init_start:
  {
  ast_moutdwm(ast, 510525440U, 4234150665U);
  ast_moutdwm(ast, 510525464U, 256U);
  ast_moutdwm(ast, 510525476U, 0U);
  ast_moutdwm(ast, 510525492U, 0U);
  __const_udelay(42950UL);
  ast_moutdwm(ast, 510525540U, param->reg_MADJ);
  ast_moutdwm(ast, 510525544U, param->reg_SADJ);
  __const_udelay(42950UL);
  ast_moutdwm(ast, 510525540U, param->reg_MADJ | 786432U);
  __const_udelay(42950UL);
  ast_moutdwm(ast, 510525444U, param->dram_config);
  ast_moutdwm(ast, 510525448U, 9438223U);
  ast_moutdwm(ast, 510525456U, param->reg_AC1);
  ast_moutdwm(ast, 510525460U, param->reg_AC2);
  ast_moutdwm(ast, 510525472U, param->reg_DQSIC);
  ast_moutdwm(ast, 510525568U, 0U);
  ast_moutdwm(ast, 510525572U, 0U);
  ast_moutdwm(ast, 510525576U, param->reg_DQIDLY);
  ast_moutdwm(ast, 510525464U, 1073783152U);
  ast_moutdwm(ast, 510525464U, 9072U);
  ast_moutdwm(ast, 510525496U, 0U);
  ast_moutdwm(ast, 510525504U, 4282664004U);
  ast_moutdwm(ast, 510525508U, 572662306U);
  ast_moutdwm(ast, 510525512U, 572662306U);
  ast_moutdwm(ast, 510525516U, 2U);
  ast_moutdwm(ast, 510525520U, 2147483648U);
  ast_moutdwm(ast, 510525520U, 0U);
  ast_moutdwm(ast, 510525524U, 0U);
  ast_moutdwm(ast, 510525536U, param->reg_DRV);
  ast_moutdwm(ast, 510525548U, param->reg_IOZ);
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525556U, 0U);
  ast_moutdwm(ast, 510525560U, 0U);
  ast_moutdwm(ast, 510525564U, 0U);
  }
  ldv_40434:
  {
  data = ast_mindwm(ast, 510525468U);
  }
  if ((data & 134217728U) == 0U) {
    goto ldv_40434;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525468U);
  data = (data >> 8) & 255U;
  }
  goto ldv_40440;
  ldv_40439:
  {
  tmp = ast_mindwm(ast, 510525540U);
  data2 = (tmp & 4294180863U) + 4U;
  }
  if ((data2 & 255U) > param->madj_max) {
    goto ldv_40436;
  } else {
  }
  {
  ast_moutdwm(ast, 510525540U, data2);
  }
  if ((data2 & 1048576U) != 0U) {
    data2 = ((data2 & 255U) >> 3) + 3U;
  } else {
    data2 = ((data2 & 255U) >> 2) + 5U;
  }
  {
  tmp___0 = ast_mindwm(ast, 510525544U);
  data = tmp___0 & 4294902015U;
  data2 = data2 + (data & 255U);
  data = data | (data2 << 8);
  ast_moutdwm(ast, 510525544U, data);
  __const_udelay(42950UL);
  tmp___1 = ast_mindwm(ast, 510525540U);
  ast_moutdwm(ast, 510525540U, tmp___1 | 786432U);
  __const_udelay(42950UL);
  tmp___2 = ast_mindwm(ast, 510525464U);
  data = tmp___2 & 4294963711U;
  ast_moutdwm(ast, 510525464U, data);
  data = data | 512U;
  ast_moutdwm(ast, 510525464U, data);
  }
  ldv_40437:
  {
  data = ast_mindwm(ast, 510525468U);
  }
  if ((data & 134217728U) == 0U) {
    goto ldv_40437;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525468U);
  data = (data >> 8) & 255U;
  }
  ldv_40440: ;
  if ((data & 8U) != 0U || ((data & 7U) <= 1U || data <= 3U)) {
    goto ldv_40439;
  } else {
  }
  ldv_40436:
  {
  tmp___3 = ast_mindwm(ast, 510525544U);
  ast_moutdwm(ast, 510787672U, tmp___3 & 65535U);
  tmp___4 = ast_mindwm(ast, 510525464U);
  data = tmp___4 | 3072U;
  ast_moutdwm(ast, 510525464U, data);
  ast_moutdwm(ast, 510525492U, 1U);
  ast_moutdwm(ast, 510525452U, 64U);
  __const_udelay(214750UL);
  ast_moutdwm(ast, 510525484U, param->reg_MRS | 256U);
  ast_moutdwm(ast, 510525488U, param->reg_EMRS);
  ast_moutdwm(ast, 510525480U, 5U);
  ast_moutdwm(ast, 510525480U, 7U);
  ast_moutdwm(ast, 510525480U, 3U);
  ast_moutdwm(ast, 510525480U, 1U);
  ast_moutdwm(ast, 510525484U, param->reg_MRS);
  ast_moutdwm(ast, 510525452U, 23560U);
  ast_moutdwm(ast, 510525480U, 1U);
  ast_moutdwm(ast, 510525452U, 23553U);
  data = 0U;
  }
  if (param->wodt != 0U) {
    data = 768U;
  } else {
  }
  if (param->rodt != 0U) {
    data = (data | ((param->reg_AC2 & 393216U) >> 3)) | 12288U;
  } else {
  }
  {
  ast_moutdwm(ast, 510525492U, data | 3U);
  tmp___5 = cbr_dll2(ast, param);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    tmp___7 = retry;
    retry = retry + 1U;
    if (tmp___7 <= 9U) {
      goto ddr3_init_start;
    } else {
    }
  } else {
  }
  {
  ast_moutdwm(ast, 510525728U, param->reg_FREQ);
  }
  return;
}
}
static void get_ddr2_info(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 trap ;
  u32 trap_AC2 ;
  u32 trap_MRS ;
  u32 tmp ;
  {
  {
  ast_moutdwm(ast, 510533632U, 378054824U);
  tmp = ast_mindwm(ast, 510533744U);
  trap = (tmp >> 25) & 3U;
  trap_AC2 = (trap << 20) | (trap << 16);
  trap_AC2 = trap_AC2 + 1114112U;
  trap_MRS = (trap << 4) | 64U;
  param->reg_MADJ = 216140U;
  param->reg_SADJ = 6144U;
  param->reg_DRV = 240U;
  param->reg_PERIOD = param->dram_freq;
  param->rodt = 0U;
  }
  {
  if (param->dram_freq == 264U) {
    goto case_264;
  } else {
  }
  if (param->dram_freq == 336U) {
    goto case_336;
  } else {
  }
  if (param->dram_freq == 396U) {
    goto case_396;
  } else {
  }
  if (param->dram_freq == 408U) {
    goto case_408;
  } else {
  }
  if (param->dram_freq == 456U) {
    goto case_456;
  } else {
  }
  if (param->dram_freq == 504U) {
    goto case_504;
  } else {
  }
  if (param->dram_freq == 528U) {
    goto case_528;
  } else {
  }
  if (param->dram_freq == 552U) {
    goto case_552;
  } else {
  }
  if (param->dram_freq == 576U) {
    goto case_576;
  } else {
  }
  goto switch_default___0;
  case_264:
  {
  ast_moutdwm(ast, 510533664U, 304U);
  param->wodt = 0U;
  param->reg_AC1 = 286266643U;
  param->reg_AC2 = 2014408721U;
  param->reg_DQSIC = 146U;
  param->reg_MRS = 2114U;
  param->reg_EMRS = 0U;
  param->reg_DRV = 240U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 90U;
  param->reg_FREQ = 19136U;
  param->madj_max = 138U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  case_336:
  {
  ast_moutdwm(ast, 510533664U, 400U);
  param->wodt = 1U;
  param->reg_AC1 = 572532243U;
  param->reg_AC2 = trap_AC2 | 2852163606U;
  param->reg_DQSIC = 186U;
  param->reg_MRS = trap_MRS | 2562U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 250U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 116U;
  param->reg_FREQ = 19904U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 3U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0:
  param->reg_AC2 = trap_AC2 | 2852163602U;
  goto ldv_40453;
  case_1:
  param->reg_AC2 = trap_AC2 | 2852163606U;
  goto ldv_40453;
  case_6:
  param->reg_AC2 = trap_AC2 | 2852163619U;
  goto ldv_40453;
  case_7:
  param->reg_AC2 = trap_AC2 | 2852163643U;
  goto ldv_40453;
  switch_break___0: ;
  }
  ldv_40453: ;
  goto ldv_40449;
  switch_default___0: ;
  case_396:
  {
  ast_moutdwm(ast, 510533664U, 1009U);
  param->wodt = 1U;
  param->rodt = 0U;
  param->reg_AC1 = 858793748U;
  param->reg_AC2 = trap_AC2 | 3422597147U;
  param->reg_DQSIC = 226U;
  param->reg_MRS = trap_MRS | 3074U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 250U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 137U;
  param->reg_FREQ = 20544U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 4U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0___0;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___0;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___0;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___0;
  } else {
  }
  goto switch_default___1;
  case_0___0:
  param->reg_AC2 = trap_AC2 | 3422597142U;
  goto ldv_40460;
  switch_default___1: ;
  case_1___0:
  param->reg_AC2 = trap_AC2 | 3422597147U;
  goto ldv_40460;
  case_6___0:
  param->reg_AC2 = trap_AC2 | 3422597163U;
  goto ldv_40460;
  case_7___0:
  param->reg_AC2 = trap_AC2 | 3422597183U;
  goto ldv_40460;
  switch_break___1: ;
  }
  ldv_40460: ;
  goto ldv_40449;
  case_408:
  {
  ast_moutdwm(ast, 510533664U, 496U);
  param->wodt = 1U;
  param->rodt = 0U;
  param->reg_AC1 = 858793748U;
  param->reg_AC2 = trap_AC2 | 3422597147U;
  param->reg_DQSIC = 226U;
  param->reg_MRS = trap_MRS | 3074U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 250U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 137U;
  param->reg_FREQ = 20672U;
  param->madj_max = 96U;
  param->dll2_finetune_step = 4U;
  }
  {
  if (param->dram_chipid == 0U) {
    goto case_0___1;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___1;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___1;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___1;
  } else {
  }
  goto switch_default___2;
  case_0___1:
  param->reg_AC2 = trap_AC2 | 3422597142U;
  goto ldv_40467;
  switch_default___2: ;
  case_1___1:
  param->reg_AC2 = trap_AC2 | 3422597147U;
  goto ldv_40467;
  case_6___1:
  param->reg_AC2 = trap_AC2 | 3422597163U;
  goto ldv_40467;
  case_7___1:
  param->reg_AC2 = trap_AC2 | 3422597183U;
  goto ldv_40467;
  switch_break___2: ;
  }
  ldv_40467: ;
  goto ldv_40449;
  case_456:
  {
  ast_moutdwm(ast, 510533664U, 560U);
  param->wodt = 0U;
  param->reg_AC1 = 858794005U;
  param->reg_AC2 = 3443830814U;
  param->reg_DQSIC = 252U;
  param->reg_MRS = 3698U;
  param->reg_EMRS = 0U;
  param->reg_DRV = 0U;
  param->reg_IOZ = 52U;
  param->reg_DQIDLY = 151U;
  param->reg_FREQ = 21184U;
  param->madj_max = 88U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  case_504:
  {
  ast_moutdwm(ast, 510533664U, 609U);
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 858794005U;
  param->reg_AC2 = 3729047586U;
  param->reg_DQSIC = 279U;
  param->reg_MRS = 3698U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 10U;
  param->reg_IOZ = 69U;
  param->reg_DQIDLY = 160U;
  param->reg_FREQ = 21696U;
  param->madj_max = 79U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  case_528:
  {
  ast_moutdwm(ast, 510533664U, 288U);
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 858794005U;
  param->reg_AC2 = 4014264356U;
  param->reg_DQSIC = 293U;
  param->reg_MRS = 3698U;
  param->reg_EMRS = 4U;
  param->reg_DRV = 249U;
  param->reg_IOZ = 69U;
  param->reg_DQIDLY = 167U;
  param->reg_FREQ = 21952U;
  param->madj_max = 76U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  case_552:
  {
  ast_moutdwm(ast, 510533664U, 673U);
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 1128278293U;
  param->reg_AC2 = 4282703909U;
  param->reg_DQSIC = 306U;
  param->reg_MRS = 3698U;
  param->reg_EMRS = 64U;
  param->reg_DRV = 10U;
  param->reg_IOZ = 69U;
  param->reg_DQIDLY = 173U;
  param->reg_FREQ = 22208U;
  param->madj_max = 76U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  case_576:
  {
  ast_moutdwm(ast, 510533664U, 320U);
  param->wodt = 1U;
  param->rodt = 1U;
  param->reg_AC1 = 1128278293U;
  param->reg_AC2 = 4282703911U;
  param->reg_DQSIC = 319U;
  param->reg_MRS = 3698U;
  param->reg_EMRS = 4U;
  param->reg_DRV = 245U;
  param->reg_IOZ = 69U;
  param->reg_DQIDLY = 179U;
  param->reg_FREQ = 22464U;
  param->madj_max = 76U;
  param->dll2_finetune_step = 3U;
  }
  goto ldv_40449;
  switch_break: ;
  }
  ldv_40449: ;
  {
  if (param->dram_chipid == 0U) {
    goto case_0___2;
  } else {
  }
  if (param->dram_chipid == 1U) {
    goto case_1___2;
  } else {
  }
  if (param->dram_chipid == 6U) {
    goto case_6___2;
  } else {
  }
  if (param->dram_chipid == 7U) {
    goto case_7___2;
  } else {
  }
  goto switch_default___3;
  case_0___2:
  param->dram_config = 256U;
  goto ldv_40478;
  switch_default___3: ;
  case_1___2:
  param->dram_config = 289U;
  goto ldv_40478;
  case_6___2:
  param->dram_config = 290U;
  goto ldv_40478;
  case_7___2:
  param->dram_config = 291U;
  goto ldv_40478;
  switch_break___3: ;
  }
  ldv_40478: ;
  {
  if (param->vram_size == 8388608U) {
    goto case_8388608;
  } else {
  }
  if (param->vram_size == 16777216U) {
    goto case_16777216;
  } else {
  }
  if (param->vram_size == 33554432U) {
    goto case_33554432;
  } else {
  }
  if (param->vram_size == 67108864U) {
    goto case_67108864;
  } else {
  }
  goto switch_default___4;
  switch_default___4: ;
  case_8388608:
  param->dram_config = param->dram_config;
  goto ldv_40485;
  case_16777216:
  param->dram_config = param->dram_config | 4U;
  goto ldv_40485;
  case_33554432:
  param->dram_config = param->dram_config | 8U;
  goto ldv_40485;
  case_67108864:
  param->dram_config = param->dram_config | 12U;
  goto ldv_40485;
  switch_break___4: ;
  }
  ldv_40485: ;
  return;
}
}
static void ddr2_init(struct ast_private *ast , struct ast2300_dram_param *param )
{
  u32 data ;
  u32 data2 ;
  u32 retry ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  {
  retry = 0U;
  ddr2_init_start:
  {
  ast_moutdwm(ast, 510525440U, 4234150665U);
  ast_moutdwm(ast, 510525464U, 256U);
  ast_moutdwm(ast, 510525476U, 0U);
  ast_moutdwm(ast, 510525540U, param->reg_MADJ);
  ast_moutdwm(ast, 510525544U, param->reg_SADJ);
  __const_udelay(42950UL);
  ast_moutdwm(ast, 510525540U, param->reg_MADJ | 786432U);
  __const_udelay(42950UL);
  ast_moutdwm(ast, 510525444U, param->dram_config);
  ast_moutdwm(ast, 510525448U, 9438223U);
  ast_moutdwm(ast, 510525456U, param->reg_AC1);
  ast_moutdwm(ast, 510525460U, param->reg_AC2);
  ast_moutdwm(ast, 510525472U, param->reg_DQSIC);
  ast_moutdwm(ast, 510525568U, 0U);
  ast_moutdwm(ast, 510525572U, 0U);
  ast_moutdwm(ast, 510525576U, param->reg_DQIDLY);
  ast_moutdwm(ast, 510525464U, 1073783088U);
  ast_moutdwm(ast, 510525464U, 9008U);
  ast_moutdwm(ast, 510525496U, 0U);
  ast_moutdwm(ast, 510525504U, 4286611456U);
  ast_moutdwm(ast, 510525508U, 2290386022U);
  ast_moutdwm(ast, 510525512U, 1145307144U);
  ast_moutdwm(ast, 510525516U, 0U);
  ast_moutdwm(ast, 510525520U, 2147483648U);
  ast_moutdwm(ast, 510525520U, 0U);
  ast_moutdwm(ast, 510525524U, 0U);
  ast_moutdwm(ast, 510525536U, param->reg_DRV);
  ast_moutdwm(ast, 510525548U, param->reg_IOZ);
  ast_moutdwm(ast, 510525552U, 0U);
  ast_moutdwm(ast, 510525556U, 0U);
  ast_moutdwm(ast, 510525560U, 0U);
  ast_moutdwm(ast, 510525564U, 0U);
  }
  ldv_40497:
  {
  data = ast_mindwm(ast, 510525468U);
  }
  if ((data & 134217728U) == 0U) {
    goto ldv_40497;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525468U);
  data = (data >> 8) & 255U;
  }
  goto ldv_40503;
  ldv_40502:
  {
  tmp = ast_mindwm(ast, 510525540U);
  data2 = (tmp & 4294180863U) + 4U;
  }
  if ((data2 & 255U) > param->madj_max) {
    goto ldv_40499;
  } else {
  }
  {
  ast_moutdwm(ast, 510525540U, data2);
  }
  if ((data2 & 1048576U) != 0U) {
    data2 = ((data2 & 255U) >> 3) + 3U;
  } else {
    data2 = ((data2 & 255U) >> 2) + 5U;
  }
  {
  tmp___0 = ast_mindwm(ast, 510525544U);
  data = tmp___0 & 4294902015U;
  data2 = data2 + (data & 255U);
  data = data | (data2 << 8);
  ast_moutdwm(ast, 510525544U, data);
  __const_udelay(42950UL);
  tmp___1 = ast_mindwm(ast, 510525540U);
  ast_moutdwm(ast, 510525540U, tmp___1 | 786432U);
  __const_udelay(42950UL);
  tmp___2 = ast_mindwm(ast, 510525464U);
  data = tmp___2 & 4294963711U;
  ast_moutdwm(ast, 510525464U, data);
  data = data | 512U;
  ast_moutdwm(ast, 510525464U, data);
  }
  ldv_40500:
  {
  data = ast_mindwm(ast, 510525468U);
  }
  if ((data & 134217728U) == 0U) {
    goto ldv_40500;
  } else {
  }
  {
  data = ast_mindwm(ast, 510525468U);
  data = (data >> 8) & 255U;
  }
  ldv_40503: ;
  if ((data & 8U) != 0U || ((data & 7U) <= 1U || data <= 3U)) {
    goto ldv_40502;
  } else {
  }
  ldv_40499:
  {
  tmp___3 = ast_mindwm(ast, 510525448U);
  ast_moutdwm(ast, 510787672U, tmp___3 & 65535U);
  tmp___4 = ast_mindwm(ast, 510525464U);
  data = tmp___4 | 3072U;
  ast_moutdwm(ast, 510525464U, data);
  ast_moutdwm(ast, 510525492U, 1U);
  ast_moutdwm(ast, 510525452U, 0U);
  __const_udelay(214750UL);
  ast_moutdwm(ast, 510525484U, param->reg_MRS | 256U);
  ast_moutdwm(ast, 510525488U, param->reg_EMRS);
  ast_moutdwm(ast, 510525480U, 5U);
  ast_moutdwm(ast, 510525480U, 7U);
  ast_moutdwm(ast, 510525480U, 3U);
  ast_moutdwm(ast, 510525480U, 1U);
  ast_moutdwm(ast, 510525452U, 23560U);
  ast_moutdwm(ast, 510525484U, param->reg_MRS);
  ast_moutdwm(ast, 510525480U, 1U);
  ast_moutdwm(ast, 510525488U, param->reg_EMRS | 896U);
  ast_moutdwm(ast, 510525480U, 3U);
  ast_moutdwm(ast, 510525488U, param->reg_EMRS);
  ast_moutdwm(ast, 510525480U, 3U);
  ast_moutdwm(ast, 510525452U, 2147441665U);
  data = 0U;
  }
  if (param->wodt != 0U) {
    data = 1280U;
  } else {
  }
  if (param->rodt != 0U) {
    data = (data | ((param->reg_AC2 & 393216U) >> 3)) | 12288U;
  } else {
  }
  {
  ast_moutdwm(ast, 510525492U, data | 3U);
  ast_moutdwm(ast, 510525728U, param->reg_FREQ);
  tmp___5 = cbr_dll2(ast, param);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    tmp___7 = retry;
    retry = retry + 1U;
    if (tmp___7 <= 9U) {
      goto ddr2_init_start;
    } else {
    }
  } else {
  }
  return;
}
}
static void ast_init_dram_2300(struct drm_device *dev )
{
  struct ast_private *ast ;
  struct ast2300_dram_param param ;
  u32 temp ;
  u8 reg ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  reg = ast_get_index_reg_mask(ast, 84U, 208, 255);
  }
  if ((int )((signed char )reg) >= 0) {
    {
    ast_write32(ast, 61444U, 510525440U);
    ast_write32(ast, 61440U, 1U);
    ast_write32(ast, 73728U, 378054824U);
    }
    ldv_40511:
    {
    tmp = ast_read32(ast, 73728U);
    }
    if (tmp != 1U) {
      goto ldv_40511;
    } else {
    }
    {
    ast_write32(ast, 65536U, 4234150665U);
    }
    ldv_40513:
    {
    tmp___0 = ast_read32(ast, 65536U);
    }
    if (tmp___0 != 1U) {
      goto ldv_40513;
    } else {
    }
    {
    temp = ast_read32(ast, 73736U);
    temp = temp | 115U;
    ast_write32(ast, 73736U, temp);
    param.dram_type = 0U;
    }
    if ((temp & 16777216U) != 0U) {
      param.dram_type = 1U;
    } else {
    }
    param.dram_chipid = ast->dram_type;
    param.dram_freq = ast->mclk;
    param.vram_size = ast->vram_size;
    if (param.dram_type == 0U) {
      {
      get_ddr3_info(ast, & param);
      ddr3_init(ast, & param);
      }
    } else {
      {
      get_ddr2_info(ast, & param);
      ddr2_init(ast, & param);
      }
    }
    {
    temp = ast_mindwm(ast, 510533696U);
    ast_moutdwm(ast, 510533696U, temp | 64U);
    }
  } else {
  }
  ldv_40515:
  {
  reg = ast_get_index_reg_mask(ast, 84U, 208, 255);
  }
  if (((int )reg & 64) == 0) {
    goto ldv_40515;
  } else {
  }
  return;
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void msleep(unsigned int ) ;
int ast_load_dp501_microcode(struct drm_device *dev ) ;
bool ast_launch_m68k(struct drm_device *dev ) ;
int ast_load_dp501_microcode(struct drm_device *dev )
{
  struct ast_private *ast ;
  char *fw_name ;
  int err ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  fw_name = (char *)"ast_dp501_fw.bin";
  err = request_firmware(& ast->dp501_fw, (char const *)fw_name, dev->dev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
static void send_ack(struct ast_private *ast )
{
  u8 sendack ;
  {
  {
  sendack = ast_get_index_reg_mask(ast, 84U, 155, 255);
  sendack = (u8 )((unsigned int )sendack | 128U);
  ast_set_index_reg_mask(ast, 84U, 155, 0, (int )sendack);
  }
  return;
}
}
static void send_nack(struct ast_private *ast )
{
  u8 sendack ;
  {
  {
  sendack = ast_get_index_reg_mask(ast, 84U, 155, 255);
  sendack = (unsigned int )sendack & 127U;
  ast_set_index_reg_mask(ast, 84U, 155, 0, (int )sendack);
  }
  return;
}
}
static bool wait_ack(struct ast_private *ast )
{
  u8 waitack ;
  u32 retry ;
  u32 tmp ;
  {
  retry = 0U;
  ldv_40093:
  {
  waitack = ast_get_index_reg_mask(ast, 84U, 210, 255);
  waitack = (unsigned int )waitack & 128U;
  __const_udelay(429500UL);
  }
  if ((unsigned int )waitack == 0U) {
    tmp = retry;
    retry = retry + 1U;
    if (tmp <= 999U) {
      goto ldv_40093;
    } else {
      goto ldv_40094;
    }
  } else {
  }
  ldv_40094: ;
  if (retry <= 999U) {
    return (1);
  } else {
    return (0);
  }
}
}
static bool wait_nack(struct ast_private *ast )
{
  u8 waitack ;
  u32 retry ;
  u32 tmp ;
  {
  retry = 0U;
  ldv_40100:
  {
  waitack = ast_get_index_reg_mask(ast, 84U, 210, 255);
  waitack = (unsigned int )waitack & 128U;
  __const_udelay(429500UL);
  }
  if ((unsigned int )waitack != 0U) {
    tmp = retry;
    retry = retry + 1U;
    if (tmp <= 999U) {
      goto ldv_40100;
    } else {
      goto ldv_40101;
    }
  } else {
  }
  ldv_40101: ;
  if (retry <= 999U) {
    return (1);
  } else {
    return (0);
  }
}
}
static void set_cmd_trigger(struct ast_private *ast )
{
  {
  {
  ast_set_index_reg_mask(ast, 84U, 155, 191, 64);
  }
  return;
}
}
static void clear_cmd_trigger(struct ast_private *ast )
{
  {
  {
  ast_set_index_reg_mask(ast, 84U, 155, 191, 0);
  }
  return;
}
}
static bool ast_write_cmd(struct drm_device *dev , u8 data )
{
  struct ast_private *ast ;
  int retry ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  retry = 0;
  tmp___1 = wait_nack(ast);
  }
  if ((int )tmp___1) {
    {
    send_nack(ast);
    ast_set_index_reg_mask(ast, 84U, 154, 0, (int )data);
    send_ack(ast);
    set_cmd_trigger(ast);
    }
    ldv_40114:
    {
    tmp = wait_ack(ast);
    }
    if ((int )tmp) {
      {
      clear_cmd_trigger(ast);
      send_nack(ast);
      }
      return (1);
    } else {
    }
    tmp___0 = retry;
    retry = retry + 1;
    if (tmp___0 <= 99) {
      goto ldv_40114;
    } else {
    }
  } else {
  }
  {
  clear_cmd_trigger(ast);
  send_nack(ast);
  }
  return (0);
}
}
static bool ast_write_data(struct drm_device *dev , u8 data )
{
  struct ast_private *ast ;
  bool tmp ;
  bool tmp___0 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  tmp___0 = wait_nack(ast);
  }
  if ((int )tmp___0) {
    {
    send_nack(ast);
    ast_set_index_reg_mask(ast, 84U, 154, 0, (int )data);
    send_ack(ast);
    tmp = wait_ack(ast);
    }
    if ((int )tmp) {
      {
      send_nack(ast);
      }
      return (1);
    } else {
    }
  } else {
  }
  {
  send_nack(ast);
  }
  return (0);
}
}
void ast_set_dp501_video_output(struct drm_device *dev , u8 mode )
{
  {
  {
  ast_write_cmd(dev, 64);
  ast_write_data(dev, (int )mode);
  msleep(10U);
  }
  return;
}
}
static u32 get_fw_base(struct ast_private *ast )
{
  u32 tmp ;
  {
  {
  tmp = ast_mindwm(ast, 510533892U);
  }
  return (tmp & 2147483647U);
}
}
bool ast_backup_fw(struct drm_device *dev , u8 *addr , u32 size )
{
  struct ast_private *ast ;
  u32 i ;
  u32 data ;
  u32 boot_address ;
  u32 tmp ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  tmp = ast_mindwm(ast, 510533888U);
  data = tmp & 1U;
  }
  if (data != 0U) {
    {
    boot_address = get_fw_base(ast);
    i = 0U;
    }
    goto ldv_40138;
    ldv_40137:
    {
    *((u32 *)addr + (unsigned long )i) = ast_mindwm(ast, boot_address + i);
    i = i + 4U;
    }
    ldv_40138: ;
    if (i < size) {
      goto ldv_40137;
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
bool ast_launch_m68k(struct drm_device *dev )
{
  struct ast_private *ast ;
  u32 i ;
  u32 data ;
  u32 len ;
  u32 boot_address ;
  u8 *fw_addr ;
  u8 jreg ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  len = 0U;
  fw_addr = (u8 *)0U;
  tmp = ast_mindwm(ast, 510533888U);
  data = tmp & 1U;
  }
  if (data == 0U) {
    if ((unsigned long )ast->dp501_fw_addr != (unsigned long )((u8 *)0U)) {
      fw_addr = ast->dp501_fw_addr;
      len = 32768U;
    } else
    if ((unsigned long )ast->dp501_fw != (unsigned long )((struct firmware const *)0)) {
      fw_addr = (u8 *)(ast->dp501_fw)->data;
      len = (u32 )(ast->dp501_fw)->size;
    } else {
    }
    {
    ast_moutdwm(ast, 510533632U, 378054824U);
    data = ast_mindwm(ast, 510525444U);
    }
    {
    if ((data & 3U) == 0U) {
      goto case_0;
    } else {
    }
    if ((data & 3U) == 1U) {
      goto case_1;
    } else {
    }
    if ((data & 3U) == 2U) {
      goto case_2;
    } else {
    }
    if ((data & 3U) == 3U) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0:
    boot_address = 1140850688U;
    goto ldv_40151;
    switch_default: ;
    case_1:
    boot_address = 1207959552U;
    goto ldv_40151;
    case_2:
    boot_address = 1342177280U;
    goto ldv_40151;
    case_3:
    boot_address = 1610612736U;
    goto ldv_40151;
    switch_break: ;
    }
    ldv_40151:
    boot_address = boot_address - 2097152U;
    i = 0U;
    goto ldv_40157;
    ldv_40156:
    {
    data = *((u32 *)fw_addr + (unsigned long )i);
    ast_moutdwm(ast, boot_address + i, data);
    i = i + 4U;
    }
    ldv_40157: ;
    if (i < len) {
      goto ldv_40156;
    } else {
    }
    {
    ast_moutdwm(ast, 510533632U, 378054824U);
    ast_moutdwm(ast, 510533892U, boot_address + 2147483648U);
    ast_moutdwm(ast, 510533888U, 1U);
    tmp___0 = ast_mindwm(ast, 510533696U);
    data = tmp___0 & 4294963711U;
    data = data | 2048U;
    ast_moutdwm(ast, 510533696U, data);
    jreg = ast_get_index_reg_mask(ast, 84U, 153, 252);
    jreg = (u8 )((unsigned int )jreg | 2U);
    ast_set_index_reg(ast, 84U, 153, (int )jreg);
    }
  } else {
  }
  return (1);
}
}
u8 ast_get_dp501_max_clk(struct drm_device *dev )
{
  struct ast_private *ast ;
  u32 boot_address ;
  u32 offset ;
  u32 data ;
  u8 linkcap[4U] ;
  u8 linkrate ;
  u8 linklanes ;
  u8 maxclk ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  maxclk = 255U;
  boot_address = get_fw_base(ast);
  offset = 61440U;
  data = ast_mindwm(ast, boot_address + offset);
  }
  if ((data & 240U) != 16U) {
    return (maxclk);
  } else {
  }
  {
  offset = 61460U;
  *((u32 *)(& linkcap)) = ast_mindwm(ast, boot_address + offset);
  }
  if ((unsigned int )linkcap[2] == 0U) {
    linkrate = linkcap[0];
    linklanes = linkcap[1];
    data = (u32 )((unsigned int )linkrate == 10U ? (int )linklanes * 90 : (int )linklanes * 54);
    if (data > 255U) {
      data = 255U;
    } else {
    }
    maxclk = (unsigned char )data;
  } else {
  }
  return (maxclk);
}
}
bool ast_dp501_read_edid(struct drm_device *dev , u8 *ediddata )
{
  struct ast_private *ast ;
  u32 i ;
  u32 boot_address ;
  u32 offset ;
  u32 data ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  boot_address = get_fw_base(ast);
  offset = 61440U;
  data = ast_mindwm(ast, boot_address + offset);
  }
  if ((data & 240U) != 16U) {
    return (0);
  } else {
  }
  {
  offset = 61456U;
  data = ast_mindwm(ast, boot_address + offset);
  }
  if ((data & 1U) == 0U) {
    return (0);
  } else {
  }
  offset = 61472U;
  i = 0U;
  goto ldv_40180;
  ldv_40179:
  {
  data = ast_mindwm(ast, (boot_address + offset) + i);
  *((u32 *)ediddata + (unsigned long )i) = data;
  i = i + 4U;
  }
  ldv_40180: ;
  if (i <= 127U) {
    goto ldv_40179;
  } else {
  }
  return (1);
}
}
static bool ast_init_dvo(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 jreg ;
  u32 data ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_write32(ast, 61444U, 510525440U);
  ast_write32(ast, 61440U, 1U);
  ast_write32(ast, 73728U, 378054824U);
  jreg = ast_get_index_reg_mask(ast, 84U, 208, 255);
  }
  if ((int )((signed char )jreg) >= 0) {
    {
    data = ast_read32(ast, 73736U);
    data = data & 4294965503U;
    data = data | 1280U;
    ast_write32(ast, 73736U, data);
    }
    if ((unsigned int )ast->chip == 5U) {
      {
      data = ast_read32(ast, 73860U);
      data = data | 4294836224U;
      ast_write32(ast, 73860U, data);
      data = ast_read32(ast, 73864U);
      data = data | 1048575U;
      ast_write32(ast, 73864U, data);
      data = ast_read32(ast, 73872U);
      data = data & 4294967247U;
      data = data | 32U;
      ast_write32(ast, 73872U, data);
      }
    } else {
      {
      data = ast_read32(ast, 73864U);
      data = data | 805306368U;
      ast_write32(ast, 73864U, data);
      data = ast_read32(ast, 73868U);
      data = data | 207U;
      ast_write32(ast, 73868U, data);
      data = ast_read32(ast, 73892U);
      data = data | 4294901760U;
      ast_write32(ast, 73892U, data);
      data = ast_read32(ast, 73896U);
      data = data | 15U;
      ast_write32(ast, 73896U, data);
      data = ast_read32(ast, 73876U);
      data = data | 2U;
      ast_write32(ast, 73876U, data);
      }
    }
  } else {
  }
  {
  data = ast_read32(ast, 73772U);
  data = data & 4294705151U;
  ast_write32(ast, 73772U, data);
  ast_set_index_reg_mask(ast, 84U, 163, 207, 128);
  }
  return (1);
}
}
static void ast_init_analog(struct drm_device *dev )
{
  struct ast_private *ast ;
  u32 data ;
  {
  {
  ast = (struct ast_private *)dev->dev_private;
  ast_write32(ast, 61444U, 510525440U);
  ast_write32(ast, 61440U, 1U);
  ast_write32(ast, 73728U, 378054824U);
  ast_write32(ast, 73728U, 378054824U);
  ast_write32(ast, 73728U, 378054824U);
  data = ast_read32(ast, 73772U);
  data = data & 4294770687U;
  ast_write32(ast, 0U, data);
  ast_set_index_reg_mask(ast, 84U, 163, 207, 0);
  }
  return;
}
}
void ast_init_3rdtx(struct drm_device *dev )
{
  struct ast_private *ast ;
  u8 jreg ;
  {
  ast = (struct ast_private *)dev->dev_private;
  if ((unsigned int )ast->chip - 5U <= 1U) {
    {
    jreg = ast_get_index_reg_mask(ast, 84U, 209, 255);
    }
    {
    if (((int )jreg & 14) == 4) {
      goto case_4;
    } else {
    }
    if (((int )jreg & 14) == 8) {
      goto case_8;
    } else {
    }
    if (((int )jreg & 14) == 12) {
      goto case_12;
    } else {
    }
    goto switch_default;
    case_4:
    {
    ast_init_dvo(dev);
    }
    goto ldv_40199;
    case_8:
    {
    ast_launch_m68k(dev);
    }
    goto ldv_40199;
    case_12:
    {
    ast_init_dvo(dev);
    }
    goto ldv_40199;
    switch_default: ;
    if ((unsigned int )ast->tx_chip_type == 1U) {
      {
      ast_init_dvo(dev);
      }
    } else {
      {
      ast_init_analog(dev);
      }
    }
    switch_break: ;
    }
    ldv_40199: ;
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
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
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
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
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
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
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
void *ldv_undef_ptr(void) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(void)
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
struct gendisk *ldv_linux_block_genhd_alloc_disk(void)
{
  struct gendisk *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct gendisk *)tmp;
  ldv_assert_linux_block_genhd__double_allocation(ldv_linux_block_genhd_disk_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct gendisk *)0)) {
    ldv_linux_block_genhd_disk_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
struct request_queue *ldv_linux_block_queue_request_queue(void)
{
  struct request_queue *res ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  res = (struct request_queue *)tmp;
  ldv_assert_linux_block_queue__double_allocation(ldv_linux_block_queue_queue_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct request_queue *)0)) {
    ldv_linux_block_queue_queue_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
struct request *ldv_linux_block_request_blk_get_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  }
  if ((mask == 16U || mask == 208U) || mask == 16U) {
    {
    ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
    }
  } else {
  }
  if ((unsigned long )res != (unsigned long )((struct request *)0)) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
struct request *ldv_linux_block_request_blk_make_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_undef_ptr();
  res = (struct request *)tmp;
  ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
  tmp___0 = ldv_is_err((void const *)res);
  }
  if (tmp___0 == 0L) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
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
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
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
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
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
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_undef_ptr();
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
struct urb *ldv_linux_usb_urb_usb_alloc_urb(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_undef_ptr();
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return ((struct urb *)arbitrary_memory);
  } else {
  }
  ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + 1;
  return ((struct urb *)arbitrary_memory);
}
}
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
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
extern void *external_allocated_data(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
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
int ldv_undef_int_negative(void) ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_base_of_ww_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_base_of_ww_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_base_of_ww_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_base_of_ww_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_base_of_ww_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_base_of_ww_mutex(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_base_of_ww_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_base_of_ww_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_fb_info(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock_of_fb_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_fb_info(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock_of_fb_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_of_fb_info(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock_of_fb_info(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock_of_fb_info(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock_of_fb_info(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_struct_mutex_of_drm_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_struct_mutex_of_drm_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_struct_mutex_of_drm_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_struct_mutex_of_drm_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_struct_mutex_of_drm_device(atomic_t *cnt ,
                                                                                        struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_struct_mutex_of_drm_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_struct_mutex_of_drm_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_update_lock_of_backlight_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_update_lock_of_backlight_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_update_lock_of_backlight_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_update_lock_of_backlight_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_update_lock_of_backlight_device(atomic_t *cnt ,
                                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_update_lock_of_backlight_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_base_of_ww_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_of_fb_info);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_struct_mutex_of_drm_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_update_lock_of_backlight_device);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_dirty_lock_of_ast_fbdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_dirty_lock_of_ast_fbdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 2);
  ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_dirty_lock_of_ast_fbdev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_dirty_lock_of_ast_fbdev(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_dirty_lock_of_ast_fbdev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_dirty_lock_of_ast_fbdev(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_dirty_lock_of_ast_fbdev();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_dirty_lock_of_ast_fbdev(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_dirty_lock_of_ast_fbdev(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_ttm_mem_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_ttm_mem_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_ttm_mem_global(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_ttm_mem_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_ttm_mem_global(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_ttm_mem_global(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_ttm_mem_global();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_ttm_mem_global(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_ttm_mem_global(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lru_lock_of_ttm_bo_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lru_lock_of_ttm_bo_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 2);
  ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lru_lock_of_ttm_bo_global(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lru_lock_of_ttm_bo_global(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lru_lock_of_ttm_bo_global(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lru_lock_of_ttm_bo_global(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lru_lock_of_ttm_bo_global();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lru_lock_of_ttm_bo_global(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lru_lock_of_ttm_bo_global(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dirty_lock_of_ast_fbdev == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_ttm_mem_global == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lru_lock_of_ttm_bo_global == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
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
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
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
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
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
void ldv_assert_linux_lib_idr__not_initialized(int expr )
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
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
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
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
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
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
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
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
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
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
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
void ldv_assert_linux_net_sock__double_release(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
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
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
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
void ldv_assert_linux_block_request__double_put(int expr )
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
void ldv_assert_linux_block_request__get_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
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
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
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
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
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
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
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
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
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
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
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
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
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
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
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
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
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
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ww_mutex_lock(struct ww_mutex *arg0, struct ww_acquire_ctx *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __ww_mutex_lock_interruptible(struct ww_mutex *arg0, struct ww_acquire_ctx *arg1) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int arch_phys_wc_add(unsigned long arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void arch_phys_wc_del(int arg0) {
  return;
}
void console_lock() {
  return;
}
void console_unlock() {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_add_edid_modes(struct drm_connector *arg0, struct edid *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int drm_compat_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void drm_connector_cleanup(struct drm_connector *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_connector_init(struct drm_device *arg0, struct drm_connector *arg1, const struct drm_connector_funcs *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_connector_register(struct drm_connector *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_connector_unregister(struct drm_connector *arg0) {
  return;
}
void drm_crtc_cleanup(struct drm_crtc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_crtc_helper_set_config(struct drm_mode_set *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_crtc_init(struct drm_device *arg0, struct drm_crtc *arg1, const struct drm_crtc_funcs *arg2) {
  return __VERIFIER_nondet_int();
}
void drm_encoder_cleanup(struct drm_encoder *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_encoder_init(struct drm_device *arg0, struct drm_encoder *arg1, const struct drm_encoder_funcs *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void drm_err(const char *arg0, ...) {
  return;
}
void drm_fb_get_bpp_depth(uint32_t arg0, unsigned int *arg1, int *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_blank(int arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_check_var(struct fb_var_screeninfo *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_debug_enter(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_debug_leave(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_fb_helper_fill_fix(struct fb_info *arg0, uint32_t arg1, uint32_t arg2) {
  return;
}
void drm_fb_helper_fill_var(struct fb_info *arg0, struct drm_fb_helper *arg1, uint32_t arg2, uint32_t arg3) {
  return;
}
void drm_fb_helper_fini(struct drm_fb_helper *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_init(struct drm_device *arg0, struct drm_fb_helper *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_initial_config(struct drm_fb_helper *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_pan_display(struct fb_var_screeninfo *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_fb_helper_prepare(struct drm_device *arg0, struct drm_fb_helper *arg1, const struct drm_fb_helper_funcs *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_set_par(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_setcmap(struct fb_cmap *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_single_add_all_connectors(struct drm_fb_helper *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_framebuffer_cleanup(struct drm_framebuffer *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_framebuffer_init(struct drm_device *arg0, struct drm_framebuffer *arg1, const struct drm_framebuffer_funcs *arg2) {
  return __VERIFIER_nondet_int();
}
void drm_framebuffer_unregister_private(struct drm_framebuffer *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_gem_dumb_destroy(struct drm_file *arg0, struct drm_device *arg1, uint32_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_gem_handle_create(struct drm_file *arg0, struct drm_gem_object *arg1, u32 *arg2) {
  return __VERIFIER_nondet_int();
}
void drm_gem_object_free(struct kref *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_gem_object_init(struct drm_device *arg0, struct drm_gem_object *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct drm_gem_object *drm_gem_object_lookup(struct drm_device *arg0, struct drm_file *arg1, u32 arg2) {
  return (struct drm_gem_object *)external_alloc();
}
void drm_gem_object_release(struct drm_gem_object *arg0) {
  return;
}
void *external_alloc(void);
struct edid *drm_get_edid(struct drm_connector *arg0, struct i2c_adapter *arg1) {
  return (struct edid *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int drm_get_pci_dev(struct pci_dev *arg0, const struct pci_device_id *arg1, struct drm_driver *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_global_item_ref(struct drm_global_reference *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_global_item_unref(struct drm_global_reference *arg0) {
  return;
}
void drm_helper_connector_dpms(struct drm_connector *arg0, int arg1) {
  return;
}
void drm_helper_disable_unused_functions(struct drm_device *arg0) {
  return;
}
void drm_helper_mode_fill_fb_struct(struct drm_framebuffer *arg0, struct drm_mode_fb_cmd2 *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_helper_probe_single_connector_modes(struct drm_connector *arg0, uint32_t arg1, uint32_t arg2) {
  return __VERIFIER_nondet_int();
}
void drm_helper_resume_force_mode(struct drm_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int drm_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void drm_kms_helper_poll_disable(struct drm_device *arg0) {
  return;
}
void drm_kms_helper_poll_enable(struct drm_device *arg0) {
  return;
}
void drm_mode_config_cleanup(struct drm_device *arg0) {
  return;
}
void drm_mode_config_init(struct drm_device *arg0) {
  return;
}
void drm_mode_config_reset(struct drm_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_mode_connector_attach_encoder(struct drm_connector *arg0, struct drm_encoder *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_mode_connector_update_edid_property(struct drm_connector *arg0, const struct edid *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_mode_crtc_set_gamma_size(struct drm_crtc *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
uint32_t drm_mode_legacy_fb_format(uint32_t arg0, uint32_t arg1) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
struct drm_mode_object *drm_mode_object_find(struct drm_device *arg0, uint32_t arg1, uint32_t arg2) {
  return (struct drm_mode_object *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int drm_mode_vrefresh(const struct drm_display_mode *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_pci_exit(struct drm_driver *arg0, struct pci_driver *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_pci_init(struct drm_driver *arg0, struct pci_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_pci_set_busid(struct drm_device *arg0, struct drm_master *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int drm_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
void drm_put_dev(struct drm_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t drm_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int drm_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_ut_debug_printk(const char *arg0, const char *arg1, ...) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool drm_vma_node_is_allowed(struct drm_vma_offset_node *arg0, struct file *arg1) {
  return __VERIFIER_nondet_bool();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int fb_alloc_cmap(struct fb_cmap *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void fb_dealloc_cmap(struct fb_cmap *arg0) {
  return;
}
void fb_set_suspend(struct fb_info *arg0, int arg1) {
  return;
}
void *external_alloc(void);
struct fb_info *framebuffer_alloc(size_t arg0, struct device *arg1) {
  return (struct fb_info *)external_alloc();
}
void framebuffer_release(struct fb_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_bit_add_bus(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread8(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16(u16 arg0, void *arg1) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void iowrite8(u8 arg0, void *arg1) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void sys_copyarea(struct fb_info *arg0, const struct fb_copyarea *arg1) {
  return;
}
void sys_fillrect(struct fb_info *arg0, const struct fb_fillrect *arg1) {
  return;
}
void sys_imageblit(struct fb_info *arg0, const struct fb_image *arg1) {
  return;
}
void ttm_bo_add_to_lru(struct ttm_buffer_object *arg0) {
  return;
}
void ttm_bo_del_sub_from_lru(struct ttm_buffer_object *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_device_init(struct ttm_bo_device *arg0, struct ttm_bo_global *arg1, struct ttm_bo_driver *arg2, struct address_space *arg3, uint64_t arg4, bool arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_device_release(struct ttm_bo_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t ttm_bo_dma_acc_size(struct ttm_bo_device *arg0, unsigned long arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_init(struct ttm_bo_device *arg0, struct ttm_buffer_object *arg1, unsigned long arg2, enum ttm_bo_type arg3, struct ttm_placement *arg4, uint32_t arg5, bool arg6, struct file *arg7, size_t arg8, struct sg_table *arg9, struct reservation_object *arg10, void (*arg11)(struct ttm_buffer_object *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_init_mm(struct ttm_bo_device *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_kmap(struct ttm_buffer_object *arg0, unsigned long arg1, unsigned long arg2, struct ttm_bo_kmap_obj *arg3) {
  return __VERIFIER_nondet_int();
}
void ttm_bo_kunmap(struct ttm_bo_kmap_obj *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_mmap(struct file *arg0, struct vm_area_struct *arg1, struct ttm_bo_device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_move_memcpy(struct ttm_buffer_object *arg0, bool arg1, bool arg2, struct ttm_mem_reg *arg3) {
  return __VERIFIER_nondet_int();
}
void ttm_bo_unref(struct ttm_buffer_object **arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_validate(struct ttm_buffer_object *arg0, struct ttm_placement *arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_mem_global_init(struct ttm_mem_global *arg0) {
  return __VERIFIER_nondet_int();
}
void ttm_mem_global_release(struct ttm_mem_global *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_pool_populate(struct ttm_tt *arg0) {
  return __VERIFIER_nondet_int();
}
void ttm_pool_unpopulate(struct ttm_tt *arg0) {
  return;
}
void ttm_tt_fini(struct ttm_tt *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_tt_init(struct ttm_tt *arg0, struct ttm_bo_device *arg1, unsigned long arg2, uint32_t arg3, struct page *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int unregister_framebuffer(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
void vfree(const void *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool vgacon_text_force() {
  return __VERIFIER_nondet_bool();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void ww_mutex_unlock(struct ww_mutex *arg0) {
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
