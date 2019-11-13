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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char *__kernel_caddr_t;
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
typedef __kernel_caddr_t *caddr_t;
typedef unsigned char u_char;
typedef __s32 int32_t;
typedef __u32 uint32_t;
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
struct request;
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
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
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
struct tss_struct;
struct mm_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
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
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long stack[64U] ;
};
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct execute_work {
   struct work_struct work ;
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
struct bio_vec;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
union __anonunion____missing_field_name_199 {
   struct bio_integrity_payload *bi_integrity ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_199 __annonCompField65 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct block_device_operations;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
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
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_214 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_215 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_214 __annonCompField73 ;
   union __anonunion____missing_field_name_215 __annonCompField74 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct elevator_queue;
struct blk_trace;
struct bsg_job;
struct blkcg_gq;
struct blk_flush_queue;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_216 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_217 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_218 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_220 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_221 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct_elv_220 elv ;
   struct __anonstruct_flush_221 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_216 __annonCompField75 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_217 __annonCompField76 ;
   union __anonunion____missing_field_name_218 __annonCompField77 ;
   union __anonunion____missing_field_name_219 __annonCompField78 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
   int alloc_policy ;
   int next_tag ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   int mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int map_size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_223 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_223 __annonCompField79 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_cmnd;
struct scsi_device;
struct scsi_host_cmd_pool;
struct scsi_target;
struct Scsi_Host;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
union __anonunion____missing_field_name_224 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   union __anonunion____missing_field_name_224 __annonCompField80 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
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
union __anonunion____missing_field_name_231 {
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
   union __anonunion____missing_field_name_231 __annonCompField81 ;
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
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int channel ;
   u64 lun ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char try_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned char prot_flags ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   int flags ;
   unsigned char tag ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
typedef struct scsi_cmnd Scsi_Cmnd;
struct mbox_out {
   u8 cmd ;
   u8 cmdid ;
   u16 numsectors ;
   u32 lba ;
   u32 xferaddr ;
   u8 logdrv ;
   u8 numsgelements ;
   u8 resvd ;
};
struct mbox_in {
   u8 volatile busy ;
   u8 volatile numstatus ;
   u8 volatile status ;
   u8 volatile completed[46U] ;
   u8 volatile poll ;
   u8 volatile ack ;
};
struct __anonstruct_mbox_t_232 {
   struct mbox_out m_out ;
   struct mbox_in m_in ;
};
typedef struct __anonstruct_mbox_t_232 mbox_t;
struct __anonstruct_mbox64_t_233 {
   u32 xfer_segment_lo ;
   u32 xfer_segment_hi ;
   mbox_t mbox ;
};
typedef struct __anonstruct_mbox64_t_233 mbox64_t;
struct __anonstruct_mega_passthru_234 {
   unsigned char timeout : 3 ;
   unsigned char ars : 1 ;
   unsigned char reserved : 3 ;
   unsigned char islogical : 1 ;
   u8 logdrv ;
   u8 channel ;
   u8 target ;
   u8 queuetag ;
   u8 queueaction ;
   u8 cdb[10U] ;
   u8 cdblen ;
   u8 reqsenselen ;
   u8 reqsensearea[32U] ;
   u8 numsgelements ;
   u8 scsistatus ;
   u32 dataxferaddr ;
   u32 dataxferlen ;
};
typedef struct __anonstruct_mega_passthru_234 mega_passthru;
struct __anonstruct_mega_ext_passthru_235 {
   unsigned char timeout : 3 ;
   unsigned char ars : 1 ;
   unsigned char rsvd1 : 1 ;
   unsigned char cd_rom : 1 ;
   unsigned char rsvd2 : 1 ;
   unsigned char islogical : 1 ;
   u8 logdrv ;
   u8 channel ;
   u8 target ;
   u8 queuetag ;
   u8 queueaction ;
   u8 cdblen ;
   u8 rsvd3 ;
   u8 cdb[16U] ;
   u8 numsgelements ;
   u8 status ;
   u8 reqsenselen ;
   u8 reqsensearea[32U] ;
   u8 rsvd4 ;
   u32 dataxferaddr ;
   u32 dataxferlen ;
};
typedef struct __anonstruct_mega_ext_passthru_235 mega_ext_passthru;
struct __anonstruct_mega_sgl64_236 {
   u64 address ;
   u32 length ;
};
typedef struct __anonstruct_mega_sgl64_236 mega_sgl64;
struct __anonstruct_mega_sglist_237 {
   u32 address ;
   u32 length ;
};
typedef struct __anonstruct_mega_sglist_237 mega_sglist;
struct __anonstruct_scb_t_238 {
   int idx ;
   u32 state ;
   struct list_head list ;
   u8 raw_mbox[66U] ;
   u32 dma_type ;
   u32 dma_direction ;
   Scsi_Cmnd *cmd ;
   dma_addr_t dma_h_bulkdata ;
   dma_addr_t dma_h_sgdata ;
   mega_sglist *sgl ;
   mega_sgl64 *sgl64 ;
   dma_addr_t sgl_dma_addr ;
   mega_passthru *pthru ;
   dma_addr_t pthru_dma_addr ;
   mega_ext_passthru *epthru ;
   dma_addr_t epthru_dma_addr ;
};
typedef struct __anonstruct_scb_t_238 scb_t;
struct __anonstruct_mega_product_info_239 {
   u32 data_size ;
   u32 config_signature ;
   u8 fw_version[16U] ;
   u8 bios_version[16U] ;
   u8 product_name[80U] ;
   u8 max_commands ;
   u8 nchannels ;
   u8 fc_loop_present ;
   u8 mem_type ;
   u32 signature ;
   u16 dram_size ;
   u16 subsysid ;
   u16 subsysvid ;
   u8 notify_counters ;
   u8 pad1k[889U] ;
};
typedef struct __anonstruct_mega_product_info_239 mega_product_info;
struct notify {
   u32 global_counter ;
   u8 param_counter ;
   u8 param_id ;
   u16 param_val ;
   u8 write_config_counter ;
   u8 write_config_rsvd[3U] ;
   u8 ldrv_op_counter ;
   u8 ldrv_opid ;
   u8 ldrv_opcmd ;
   u8 ldrv_opstatus ;
   u8 ldrv_state_counter ;
   u8 ldrv_state_id ;
   u8 ldrv_state_new ;
   u8 ldrv_state_old ;
   u8 pdrv_state_counter ;
   u8 pdrv_state_id ;
   u8 pdrv_state_new ;
   u8 pdrv_state_old ;
   u8 pdrv_fmt_counter ;
   u8 pdrv_fmt_id ;
   u8 pdrv_fmt_val ;
   u8 pdrv_fmt_rsvd ;
   u8 targ_xfer_counter ;
   u8 targ_xfer_id ;
   u8 targ_xfer_val ;
   u8 targ_xfer_rsvd ;
   u8 fcloop_id_chg_counter ;
   u8 fcloopid_pdrvid ;
   u8 fcloop_id0 ;
   u8 fcloop_id1 ;
   u8 fcloop_state_counter ;
   u8 fcloop_state0 ;
   u8 fcloop_state1 ;
   u8 fcloop_state_rsvd ;
};
struct __anonstruct_mega_inquiry3_240 {
   u32 data_size ;
   struct notify notify ;
   u8 notify_rsvd[88U] ;
   u8 rebuild_rate ;
   u8 cache_flush_interval ;
   u8 sense_alert ;
   u8 drive_insert_count ;
   u8 battery_status ;
   u8 num_ldrv ;
   u8 recon_state[5U] ;
   u16 ldrv_op_status[5U] ;
   u32 ldrv_size[40U] ;
   u8 ldrv_prop[40U] ;
   u8 ldrv_state[40U] ;
   u8 pdrv_state[256U] ;
   u16 pdrv_format[16U] ;
   u8 targ_xfer[80U] ;
   u8 pad1k[263U] ;
};
typedef struct __anonstruct_mega_inquiry3_240 mega_inquiry3;
struct __anonstruct_mega_adp_info_241 {
   u8 max_commands ;
   u8 rebuild_rate ;
   u8 max_targ_per_chan ;
   u8 nchannels ;
   u8 fw_version[4U] ;
   u16 age_of_flash ;
   u8 chip_set_value ;
   u8 dram_size ;
   u8 cache_flush_interval ;
   u8 bios_version[4U] ;
   u8 board_type ;
   u8 sense_alert ;
   u8 write_config_count ;
   u8 drive_inserted_count ;
   u8 inserted_drive ;
   u8 battery_status ;
   u8 dec_fault_bus_info ;
};
typedef struct __anonstruct_mega_adp_info_241 mega_adp_info;
struct __anonstruct_mega_ldrv_info_242 {
   u8 num_ldrv ;
   u8 rsvd[3U] ;
   u32 ldrv_size[8U] ;
   u8 ldrv_prop[8U] ;
   u8 ldrv_state[8U] ;
};
typedef struct __anonstruct_mega_ldrv_info_242 mega_ldrv_info;
struct __anonstruct_mega_pdrv_info_243 {
   u8 pdrv_state[75U] ;
   u8 rsvd ;
};
typedef struct __anonstruct_mega_pdrv_info_243 mega_pdrv_info;
struct __anonstruct_mraid_inquiry_244 {
   mega_adp_info adapter_info ;
   mega_ldrv_info logdrv_info ;
   mega_pdrv_info pdrv_info ;
};
typedef struct __anonstruct_mraid_inquiry_244 mraid_inquiry;
struct __anonstruct_mraid_ext_inquiry_245 {
   mraid_inquiry raid_inq ;
   u16 phys_drv_format[5U] ;
   u8 stack_attn ;
   u8 modem_status ;
   u8 rsvd[2U] ;
};
typedef struct __anonstruct_mraid_ext_inquiry_245 mraid_ext_inquiry;
struct __anonstruct_adp_device_246 {
   u8 channel ;
   u8 target ;
};
typedef struct __anonstruct_adp_device_246 adp_device;
struct __anonstruct_adp_span_40ld_247 {
   u32 start_blk ;
   u32 num_blks ;
   adp_device device[32U] ;
};
typedef struct __anonstruct_adp_span_40ld_247 adp_span_40ld;
struct __anonstruct_adp_span_8ld_248 {
   u32 start_blk ;
   u32 num_blks ;
   adp_device device[8U] ;
};
typedef struct __anonstruct_adp_span_8ld_248 adp_span_8ld;
struct __anonstruct_logdrv_param_249 {
   u8 span_depth ;
   u8 level ;
   u8 read_ahead ;
   u8 stripe_sz ;
   u8 status ;
   u8 write_mode ;
   u8 direct_io ;
   u8 row_size ;
};
typedef struct __anonstruct_logdrv_param_249 logdrv_param;
struct __anonstruct_logdrv_40ld_250 {
   logdrv_param lparam ;
   adp_span_40ld span[8U] ;
};
typedef struct __anonstruct_logdrv_40ld_250 logdrv_40ld;
struct __anonstruct_logdrv_8ld_251 {
   logdrv_param lparam ;
   adp_span_8ld span[8U] ;
};
typedef struct __anonstruct_logdrv_8ld_251 logdrv_8ld;
struct __anonstruct_phys_drv_252 {
   u8 type ;
   u8 cur_status ;
   u8 tag_depth ;
   u8 sync_neg ;
   u32 size ;
};
typedef struct __anonstruct_phys_drv_252 phys_drv;
struct __anonstruct_disk_array_40ld_253 {
   u8 nlog_drives ;
   u8 resvd[3U] ;
   logdrv_40ld ldrv[40U] ;
   phys_drv pdrv[75U] ;
};
typedef struct __anonstruct_disk_array_40ld_253 disk_array_40ld;
struct __anonstruct_disk_array_8ld_254 {
   u8 nlog_drives ;
   u8 resvd[3U] ;
   logdrv_8ld ldrv[8U] ;
   phys_drv pdrv[75U] ;
};
typedef struct __anonstruct_disk_array_8ld_254 disk_array_8ld;
struct __anonstruct_fcs_256 {
   u8 opcode ;
   u8 subopcode ;
   u16 adapno ;
   u8 *buffer ;
   u32 length ;
};
union __anonunion_ui_255 {
   u8 fca[16U] ;
   struct __anonstruct_fcs_256 fcs ;
};
struct uioctl_t {
   u32 inlen ;
   u32 outlen ;
   union __anonunion_ui_255 ui ;
   u8 mbox[18U] ;
   mega_passthru pthru ;
   char *data ;
};
struct mcontroller {
   u64 base ;
   u8 irq ;
   u8 numldrv ;
   u8 pcibus ;
   u16 pcidev ;
   u8 pcifun ;
   u16 pciid ;
   u16 pcivendor ;
   u8 pcislot ;
   u32 uid ;
};
struct __anonstruct_megacmd_t_257 {
   u8 cmd ;
   u8 cmdid ;
   u8 opcode ;
   u8 subopcode ;
   u32 lba ;
   u32 xferaddr ;
   u8 logdrv ;
   u8 rsvd[3U] ;
   u8 numstatus ;
   u8 status ;
};
typedef struct __anonstruct_megacmd_t_257 megacmd_t;
union __anonunion___ua_259 {
   u8 __raw_mbox[18U] ;
   void *__uaddr ;
};
struct __anonstruct_nitioctl_t_258 {
   char signature[8U] ;
   u32 opcode ;
   u32 adapno ;
   union __anonunion___ua_259 __ua ;
   u32 xferlen ;
   u32 flags ;
};
typedef struct __anonstruct_nitioctl_t_258 nitioctl_t;
struct __anonstruct_megastat_t_260 {
   int num_ldrv ;
   u32 nreads[40U] ;
   u32 nreadblocks[40U] ;
   u32 nwrites[40U] ;
   u32 nwriteblocks[40U] ;
   u32 rd_errors[40U] ;
   u32 wr_errors[40U] ;
};
typedef struct __anonstruct_megastat_t_260 megastat_t;
struct private_bios_data {
   unsigned char geometry : 4 ;
   unsigned char unused : 4 ;
   u8 boot_drv ;
   u8 rsvd[12U] ;
   u16 cksum ;
};
struct __anonstruct_adapter_t_261 {
   int this_id ;
   u32 flag ;
   unsigned long base ;
   void *mmio_base ;
   mbox64_t *una_mbox64 ;
   dma_addr_t una_mbox64_dma ;
   mbox64_t volatile *mbox64 ;
   mbox_t volatile *mbox ;
   dma_addr_t mbox_dma ;
   struct pci_dev *dev ;
   struct list_head free_list ;
   struct list_head pending_list ;
   struct list_head completed_list ;
   struct Scsi_Host *host ;
   u8 *mega_buffer ;
   dma_addr_t buf_dma_handle ;
   mega_product_info product_info ;
   u8 max_cmds ;
   scb_t *scb_list ;
   atomic_t pend_cmds ;
   u8 numldrv ;
   u8 fw_version[7U] ;
   u8 bios_version[7U] ;
   struct proc_dir_entry *controller_proc_dir_entry ;
   struct proc_dir_entry *proc_read ;
   struct proc_dir_entry *proc_stat ;
   struct proc_dir_entry *proc_mbox ;
   struct proc_dir_entry *proc_rr ;
   struct proc_dir_entry *proc_battery ;
   struct proc_dir_entry *proc_pdrvstat[4U] ;
   struct proc_dir_entry *proc_rdrvstat[4U] ;
   int has_64bit_addr ;
   int support_ext_cdb ;
   int boot_ldrv_enabled ;
   int boot_ldrv ;
   int boot_pdrv_enabled ;
   int boot_pdrv_ch ;
   int boot_pdrv_tgt ;
   int support_random_del ;
   int read_ldidmap ;
   atomic_t quiescent ;
   spinlock_t lock ;
   u8 logdrv_chan[9U] ;
   int mega_ch_class ;
   u8 sglen ;
   scb_t int_scb ;
   struct mutex int_mtx ;
   int int_status ;
   struct completion int_waitq ;
   int has_cluster ;
};
typedef struct __anonstruct_adapter_t_261 adapter_t;
struct mega_hbas {
   int is_bios_enabled ;
   adapter_t *hostdata_addr ;
};
struct mega_proc_file {
   char const *name ;
   unsigned short ptr_offset ;
   int (*show)(struct seq_file * , void * ) ;
};
struct ldv_struct_EMGentry_28 {
   int signal_pending ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_19 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_2 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_3 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_scsi_host_template_instance_4 {
   struct Scsi_Host *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef struct Scsi_Host *ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
long ldv__builtin_expect(long exp , long c ) ;
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
int ldv_linux_fs_char_dev_register_chrdev(int major___0 ) ;
void ldv_linux_fs_char_dev_unregister_chrdev_region(void) ;
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
int ldv_linux_usb_gadget_register_chrdev(int major___0 ) ;
void ldv_linux_usb_gadget_unregister_chrdev_region(void) ;
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
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_kernel_sched_completion_init_completion_int_waitq_of_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_sched_completion_wait_for_completion_int_waitq_of_NOT_ARG_SIGN(void) ;
int ldv_undef_int(void) ;
void *ldv_linux_arch_io_io_mem_remap(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_131(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_128(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_132(void) ;
static void ldv_ldv_pre_probe_134(void) ;
static void ldv_ldv_pre_probe_136(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_133(int retval ) ;
static int ldv_ldv_post_probe_135(int retval ) ;
static int ldv_ldv_post_probe_137(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_129(void) ;
static void ldv_ldv_check_final_state_130(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
extern void ldv_after_alloc(void * ) ;
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
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_megadev_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_megadev_mutex(struct mutex *lock ) ;
extern struct module __this_module ;
extern struct pv_cpu_ops pv_cpu_ops ;
extern struct pv_irq_ops pv_irq_ops ;
extern int printk(char const * , ...) ;
extern void ___might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
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
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
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
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void slow_down_io(void)
{
  {
  {
  (*(pv_cpu_ops.io_delay))();
  }
  return;
}
}
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
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  {
  rep_nop();
  }
  return;
}
}
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v ) ;
__inline static void atomic_inc(atomic_t *v ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_7206;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7206;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7206;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_7206;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7206: ;
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7218;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7218;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7218;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7218;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7218: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_init_completion_117(struct completion *x ) ;
extern void wait_for_completion(struct completion * ) ;
static void ldv_wait_for_completion_113(struct completion *ldv_func_arg1 ) ;
extern void complete(struct completion * ) ;
extern struct resource ioport_resource ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_write(struct seq_file * , void const * , size_t ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
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
__inline static void *ioremap(resource_size_t offset , unsigned long size ) ;
static void ldv_iounmap_120(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_123(void volatile *ldv_func_arg1 ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outb_p(unsigned char value , int port )
{
  {
  {
  outb((int )value, port);
  slow_down_io();
  }
  return;
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  }
  return (value);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern bool capable(int ) ;
extern int _cond_resched(void) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern struct pci_dev *pci_alloc_dev(struct pci_bus * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_124(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_127(struct pci_driver *ldv_func_arg1 ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  }
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
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
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
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
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
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
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  dev_set_drvdata(& pdev->dev, data);
  }
  return;
}
}
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int ldv_register_chrdev_90(unsigned int major___0 , char const *name ,
                                           struct file_operations const *fops )
{
  int tmp ;
  {
  {
  tmp = __register_chrdev(major___0, 0U, 256U, name, fops);
  }
  return (tmp);
}
}
__inline static int register_chrdev(unsigned int major___0 , char const *name ,
                                    struct file_operations const *fops ) ;
__inline static int ldv_register_chrdev_125(unsigned int major___0 , char const *name ,
                                            struct file_operations const *fops ) ;
__inline static void ldv_unregister_chrdev_91(unsigned int major___0 , char const *name )
{
  {
  {
  __unregister_chrdev(major___0, 0U, 256U, name);
  }
  return;
}
}
__inline static void unregister_chrdev(unsigned int major___0 , char const *name ) ;
__inline static void ldv_unregister_chrdev_126(unsigned int major___0 , char const *name ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static void pagefault_disable(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void pagefault_enable(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  }
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  {
  pagefault_enable();
  }
  return;
}
}
extern char const *scsi_device_type(unsigned int ) ;
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
static struct Scsi_Host *ldv_scsi_host_alloc_115(struct scsi_host_template *ldv_func_arg1 ,
                                                 int ldv_func_arg2 ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
static void ldv_scsi_remove_host_122(struct Scsi_Host *ldv_func_arg1 ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  {
  tmp = scsi_add_host_with_dma(host, dev, dev);
  }
  return (tmp);
}
}
__inline static int ldv_scsi_add_host_118(struct Scsi_Host *host , struct device *dev ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_mkdir_data(char const * , umode_t , struct proc_dir_entry * ,
                                              void * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void *proc_get_parent_data(struct inode const * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
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
__inline static int ldv_request_irq_116(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_119(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int scsi_partsize(unsigned char * , unsigned long , unsigned int * , unsigned int * ,
                         unsigned int * ) ;
extern unsigned char *scsi_bios_ptable(struct block_device * ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.nents);
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
char const *megaraid_info(struct Scsi_Host *host ) ;
static int mega_query_adapter(adapter_t *adapter ) ;
static int issue_scb(adapter_t *adapter , scb_t *scb ) ;
static int mega_setup_mailbox(adapter_t *adapter ) ;
static int megaraid_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd ) ;
static scb_t *mega_build_cmd(adapter_t *adapter , Scsi_Cmnd *cmd , int *busy ) ;
static void __mega_runpendq(adapter_t *adapter ) ;
static int issue_scb_block(adapter_t *adapter , u_char *raw_mbox ) ;
static irqreturn_t megaraid_isr_memmapped(int irq , void *devp ) ;
static irqreturn_t megaraid_isr_iomapped(int irq , void *devp ) ;
static void mega_free_scb(adapter_t *adapter , scb_t *scb ) ;
static int megaraid_abort(Scsi_Cmnd *cmd ) ;
static int megaraid_reset(struct scsi_cmnd *cmd ) ;
static int megaraid_abort_and_reset(adapter_t *adapter , Scsi_Cmnd *cmd , int aor ) ;
static int megaraid_biosparam(struct scsi_device *sdev , struct block_device *bdev ,
                              sector_t capacity , int *geom ) ;
static int mega_build_sglist(adapter_t *adapter , scb_t *scb , u32 *buf , u32 *len ) ;
static int __mega_busywait_mbox(adapter_t *adapter ) ;
static void mega_rundoneq(adapter_t *adapter ) ;
static void mega_cmd_done(adapter_t *adapter , u8 *completed , int nstatus , int status ) ;
__inline static void mega_free_sgl(adapter_t *adapter ) ;
static void mega_8_to_40ld(mraid_inquiry *inquiry , mega_inquiry3 *enquiry3 , mega_product_info *product_info ) ;
static int megadev_open(struct inode *inode , struct file *filep ) ;
static int megadev_ioctl(struct file *filep , unsigned int cmd , unsigned long arg ) ;
static int mega_m_to_n(void *arg , nitioctl_t *uioc ) ;
static int mega_n_to_m(void *arg , megacmd_t *mc ) ;
static int mega_init_scb(adapter_t *adapter ) ;
static int mega_is_bios_enabled(adapter_t *adapter ) ;
static void mega_create_proc_entry(int index , struct proc_dir_entry *parent ) ;
static int mega_adapinq(adapter_t *adapter , dma_addr_t dma_handle ) ;
static int mega_internal_dev_inquiry(adapter_t *adapter , u8 ch , u8 tgt , dma_addr_t buf_dma_handle ) ;
static int mega_support_ext_cdb(adapter_t *adapter ) ;
static mega_passthru *mega_prepare_passthru(adapter_t *adapter , scb_t *scb , Scsi_Cmnd *cmd ,
                                            int channel , int target ) ;
static mega_ext_passthru *mega_prepare_extpassthru(adapter_t *adapter , scb_t *scb ,
                                                   Scsi_Cmnd *cmd , int channel ,
                                                   int target ) ;
static void mega_enum_raid_scsi(adapter_t *adapter ) ;
static void mega_get_boot_drv(adapter_t *adapter ) ;
static int mega_support_random_del(adapter_t *adapter ) ;
static int mega_del_logdrv(adapter_t *adapter , int logdrv ) ;
static int mega_do_del_logdrv(adapter_t *adapter , int logdrv ) ;
static void mega_get_max_sgl(adapter_t *adapter ) ;
static int mega_internal_command(adapter_t *adapter , megacmd_t *mc , mega_passthru *pthru ) ;
static int mega_support_cluster(adapter_t *adapter ) ;
static struct mutex megadev_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "megadev_mutex.wait_lock",
                                                           0, 0UL}}}}, {& megadev_mutex.wait_list,
                                                                        & megadev_mutex.wait_list},
    0, (void *)(& megadev_mutex), {0, {0, 0}, "megadev_mutex", 0, 0UL}};
static unsigned int max_cmd_per_lun = 63U;
static unsigned short max_sectors_per_io = 128U;
static unsigned short max_mbox_busy_wait = 10U;
static int hba_count ;
static adapter_t *hba_soft_state[32U] ;
static struct proc_dir_entry *mega_proc_dir_entry ;
static struct mega_hbas mega_hbas[32U] ;
static long megadev_unlocked_ioctl(struct file *filep , unsigned int cmd , unsigned long arg ) ;
static struct file_operations const megadev_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, 0, & megadev_unlocked_ioctl,
    0, 0, 0, & megadev_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct mcontroller mcontroller[32U] ;
static u32 driver_ver = 33554432U;
static int major ;
static int trace_level ;
static int mega_setup_mailbox(adapter_t *adapter )
{
  unsigned long align ;
  void *tmp ;
  {
  {
  tmp = pci_alloc_consistent(adapter->dev, 74UL, & adapter->una_mbox64_dma);
  adapter->una_mbox64 = (mbox64_t *)tmp;
  }
  if ((unsigned long )adapter->una_mbox64 == (unsigned long )((mbox64_t *)0)) {
    return (-1);
  } else {
  }
  adapter->mbox = (mbox_t volatile *)(& (adapter->una_mbox64)->mbox);
  adapter->mbox = (mbox_t volatile *)(((unsigned long )adapter->mbox + 15UL) & 0xfffffffffffffff0UL);
  adapter->mbox64 = (mbox64_t volatile *)((unsigned long )adapter->mbox - 8UL);
  align = (unsigned long )((long )adapter->mbox - (long )(& (adapter->una_mbox64)->mbox));
  adapter->mbox_dma = (adapter->una_mbox64_dma + (unsigned long long )align) + 8ULL;
  if (((long )adapter->flag & 268435456L) != 0L) {
    {
    outb((int )((unsigned char )adapter->mbox_dma), (int )((unsigned int )(adapter->host)->io_port + 4U));
    outb((int )((unsigned char )(adapter->mbox_dma >> 8)), (int )((unsigned int )(adapter->host)->io_port + 5U));
    outb((int )((unsigned char )(adapter->mbox_dma >> 16)), (int )((unsigned int )(adapter->host)->io_port + 6U));
    outb((int )((unsigned char )(adapter->mbox_dma >> 24)), (int )((unsigned int )(adapter->host)->io_port + 7U));
    outb(0, (int )((unsigned int )(adapter->host)->io_port + 11U));
    outb_p(8, (int )adapter->base);
    outb_p(192, (int )((unsigned int )adapter->base + 1U));
    }
  } else {
  }
  return (0);
}
}
static int mega_query_adapter(adapter_t *adapter )
{
  dma_addr_t prod_info_dma_handle ;
  mega_inquiry3 *inquiry3 ;
  u8 raw_mbox[15U] ;
  mbox_t *mbox ;
  int retval ;
  mraid_ext_inquiry *ext_inq ;
  mraid_inquiry *inq ;
  dma_addr_t dma_handle ;
  void *tmp ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  memset((void *)(& mbox->m_out), 0, 15UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  inquiry3 = (mega_inquiry3 *)adapter->mega_buffer;
  raw_mbox[0] = 161U;
  raw_mbox[2] = 15U;
  raw_mbox[3] = 2U;
  retval = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  if (retval != 0) {
    {
    tmp = pci_alloc_consistent(adapter->dev, 166UL, & dma_handle);
    ext_inq = (mraid_ext_inquiry *)tmp;
    }
    if ((unsigned long )ext_inq == (unsigned long )((mraid_ext_inquiry *)0)) {
      return (-1);
    } else {
    }
    {
    inq = & ext_inq->raid_inq;
    mbox->m_out.xferaddr = (unsigned int )dma_handle;
    mbox->m_out.cmd = 4U;
    issue_scb_block(adapter, (u_char *)(& raw_mbox));
    mega_8_to_40ld(inq, inquiry3, & adapter->product_info);
    pci_free_consistent(adapter->dev, 166UL, (void *)ext_inq, dma_handle);
    }
  } else {
    {
    adapter->flag = adapter->flag | 134217728U;
    prod_info_dma_handle = pci_map_single(adapter->dev, (void *)(& adapter->product_info),
                                          1024UL, 2);
    mbox->m_out.xferaddr = (u32 )prod_info_dma_handle;
    raw_mbox[0] = 161U;
    raw_mbox[2] = 14U;
    retval = issue_scb_block(adapter, (u_char *)(& raw_mbox));
    }
    if (retval != 0) {
      {
      printk("\fmegaraid: Product_info cmd failed with error: %d\n", retval);
      }
    } else {
    }
    {
    pci_unmap_single(adapter->dev, prod_info_dma_handle, 1024UL, 2);
    }
  }
  (adapter->host)->max_channel = (unsigned int )((int )adapter->product_info.nchannels + 3);
  (adapter->host)->max_id = 16U;
  (adapter->host)->max_lun = 7ULL;
  (adapter->host)->cmd_per_lun = (short )max_cmd_per_lun;
  adapter->numldrv = inquiry3->num_ldrv;
  adapter->max_cmds = adapter->product_info.max_commands;
  if ((unsigned int )adapter->max_cmds > 126U) {
    adapter->max_cmds = 126U;
  } else {
  }
  {
  (adapter->host)->can_queue = (int )adapter->max_cmds + -1;
  mega_get_max_sgl(adapter);
  (adapter->host)->sg_tablesize = (unsigned short )adapter->sglen;
  }
  if ((unsigned int )adapter->product_info.subsysvid == 4156U) {
    {
    sprintf((char *)(& adapter->fw_version), "%c%d%d.%d%d", (int )adapter->product_info.fw_version[2],
            0, (int )adapter->product_info.fw_version[1] & 15, 0, (int )adapter->product_info.fw_version[0] & 15);
    sprintf((char *)(& adapter->bios_version), "%c%d%d.%d%d", (int )adapter->product_info.bios_version[2],
            0, (int )adapter->product_info.bios_version[1] & 15, 0, (int )adapter->product_info.bios_version[0] & 15);
    }
  } else {
    {
    memcpy((void *)(& adapter->fw_version), (void const *)(& adapter->product_info.fw_version),
             4UL);
    adapter->fw_version[4] = 0U;
    memcpy((void *)(& adapter->bios_version), (void const *)(& adapter->product_info.bios_version),
             4UL);
    adapter->bios_version[4] = 0U;
    }
  }
  {
  printk("\rmegaraid: [%s:%s] detected %d logical drives.\n", (u8 *)(& adapter->fw_version),
         (u8 *)(& adapter->bios_version), (int )adapter->numldrv);
  adapter->support_ext_cdb = mega_support_ext_cdb(adapter);
  }
  if (adapter->support_ext_cdb != 0) {
    {
    printk("\rmegaraid: supports extended CDBs.\n");
    }
  } else {
  }
  return (0);
}
}
__inline static void mega_runpendq(adapter_t *adapter )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)(& adapter->pending_list));
  }
  if (tmp == 0) {
    {
    __mega_runpendq(adapter);
    }
  } else {
  }
  return;
}
}
static int megaraid_queue_lck(Scsi_Cmnd *scmd , void (*done)(Scsi_Cmnd * ) )
{
  adapter_t *adapter ;
  scb_t *scb ;
  int busy ;
  unsigned long flags ;
  int tmp ;
  {
  {
  busy = 0;
  adapter = (adapter_t *)(& ((scmd->device)->host)->hostdata);
  scmd->scsi_done = done;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(& adapter->lock);
  scb = mega_build_cmd(adapter, scmd, & busy);
  }
  if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
    goto out;
  } else {
  }
  {
  scb->state = scb->state | 2U;
  list_add_tail(& scb->list, & adapter->pending_list);
  tmp = atomic_read((atomic_t const *)(& adapter->quiescent));
  }
  if (tmp == 0) {
    {
    mega_runpendq(adapter);
    }
  } else {
  }
  busy = 0;
  out:
  {
  ldv_spin_unlock_irqrestore_97(& adapter->lock, flags);
  }
  return (busy);
}
}
static int megaraid_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(shost->host_lock);
  scsi_cmd_get_serial(shost, cmd);
  rc = megaraid_queue_lck(cmd, cmd->scsi_done);
  ldv_spin_unlock_irqrestore_99(shost->host_lock, irq_flags);
  }
  return (rc);
}
}
__inline static scb_t *mega_allocate_scb(adapter_t *adapter , Scsi_Cmnd *cmd )
{
  struct list_head *head ;
  scb_t *scb ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  head = & adapter->free_list;
  tmp = list_empty((struct list_head const *)head);
  }
  if (tmp == 0) {
    {
    __mptr = (struct list_head const *)head->next;
    scb = (scb_t *)__mptr + 0xfffffffffffffff8UL;
    list_del_init(head->next);
    scb->state = 1U;
    scb->cmd = cmd;
    scb->dma_type = 65535U;
    }
    return (scb);
  } else {
  }
  return ((scb_t *)0);
}
}
__inline static int mega_get_ldrv_num(adapter_t *adapter , Scsi_Cmnd *cmd , int channel )
{
  int tgt ;
  int ldrv_num ;
  {
  tgt = (int )(cmd->device)->id;
  if (tgt > adapter->this_id) {
    tgt = tgt - 1;
  } else {
  }
  ldrv_num = channel * 15 + tgt;
  if (adapter->boot_ldrv_enabled != 0) {
    if (ldrv_num == 0) {
      ldrv_num = adapter->boot_ldrv;
    } else
    if (ldrv_num <= adapter->boot_ldrv) {
      ldrv_num = ldrv_num - 1;
    } else {
    }
  } else {
  }
  if (adapter->support_random_del != 0 && adapter->read_ldidmap != 0) {
    {
    if ((int )*(cmd->cmnd) == 8) {
      goto case_8;
    } else {
    }
    if ((int )*(cmd->cmnd) == 10) {
      goto case_10;
    } else {
    }
    if ((int )*(cmd->cmnd) == 40) {
      goto case_40;
    } else {
    }
    if ((int )*(cmd->cmnd) == 42) {
      goto case_42;
    } else {
    }
    goto switch_break;
    case_8: ;
    case_10: ;
    case_40: ;
    case_42:
    ldrv_num = ldrv_num + 128;
    switch_break: ;
    }
  } else {
  }
  return (ldrv_num);
}
}
extern void __compiletime_assert_669(void) ;
static scb_t *mega_build_cmd(adapter_t *adapter , Scsi_Cmnd *cmd , int *busy )
{
  mega_ext_passthru *epthru ;
  mega_passthru *pthru ;
  scb_t *scb ;
  mbox_t *mbox ;
  u32 seg ;
  char islogical ;
  int max_ldrv_num ;
  int channel ;
  int target ;
  int ldrv_num ;
  char *buf ;
  struct scatterlist *sg ;
  struct page *tmp ;
  void *tmp___0 ;
  bool __cond ;
  int tmp___1 ;
  int tmp___2 ;
  {
  channel = 0;
  target = 0;
  ldrv_num = 0;
  islogical = (char )adapter->logdrv_chan[(cmd->device)->channel];
  if (adapter->boot_pdrv_enabled != 0) {
    if ((int )((signed char )islogical) != 0) {
      channel = (int )((cmd->device)->channel - (unsigned int )adapter->product_info.nchannels);
    } else {
      channel = (int )(cmd->device)->channel;
      target = (int )(cmd->device)->id;
      if (target == 0) {
        target = adapter->boot_pdrv_tgt;
      } else
      if (target == adapter->boot_pdrv_tgt) {
        target = 0;
      } else {
      }
    }
  } else
  if ((int )((signed char )islogical) != 0) {
    channel = (int )(cmd->device)->channel;
  } else {
    channel = (int )((cmd->device)->channel - 4U);
    target = (int )(cmd->device)->id;
  }
  if ((int )((signed char )islogical) != 0) {
    if ((cmd->device)->lun != 0ULL) {
      {
      cmd->result = 262144;
      (*(cmd->scsi_done))(cmd);
      }
      return ((scb_t *)0);
    } else {
    }
    {
    ldrv_num = mega_get_ldrv_num(adapter, cmd, channel);
    max_ldrv_num = ((long )adapter->flag & 134217728L) != 0L ? 40 : 8;
    }
    if (adapter->read_ldidmap != 0) {
      max_ldrv_num = max_ldrv_num + 128;
    } else {
    }
    if (ldrv_num > max_ldrv_num) {
      {
      cmd->result = 262144;
      (*(cmd->scsi_done))(cmd);
      }
      return ((scb_t *)0);
    } else {
    }
  } else
  if ((cmd->device)->lun > 7ULL) {
    {
    cmd->result = 262144;
    (*(cmd->scsi_done))(cmd);
    }
    return ((scb_t *)0);
  } else {
  }
  if ((int )((signed char )islogical) != 0) {
    {
    if ((int )*(cmd->cmnd) == 0) {
      goto case_0;
    } else {
    }
    if ((int )*(cmd->cmnd) == 26) {
      goto case_26;
    } else {
    }
    if ((int )*(cmd->cmnd) == 37) {
      goto case_37;
    } else {
    }
    if ((int )*(cmd->cmnd) == 18) {
      goto case_18;
    } else {
    }
    if ((int )*(cmd->cmnd) == 8) {
      goto case_8;
    } else {
    }
    if ((int )*(cmd->cmnd) == 10) {
      goto case_10;
    } else {
    }
    if ((int )*(cmd->cmnd) == 40) {
      goto case_40;
    } else {
    }
    if ((int )*(cmd->cmnd) == 42) {
      goto case_42;
    } else {
    }
    if ((int )*(cmd->cmnd) == 168) {
      goto case_168;
    } else {
    }
    if ((int )*(cmd->cmnd) == 170) {
      goto case_170;
    } else {
    }
    if ((int )*(cmd->cmnd) == 22) {
      goto case_22;
    } else {
    }
    if ((int )*(cmd->cmnd) == 23) {
      goto case_23;
    } else {
    }
    goto switch_default;
    case_0: ;
    if (adapter->has_cluster == 0) {
      {
      cmd->result = 0;
      (*(cmd->scsi_done))(cmd);
      }
      return ((scb_t *)0);
    } else {
    }
    {
    scb = mega_allocate_scb(adapter, cmd);
    }
    if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
      *busy = 1;
      return ((scb_t *)0);
    } else {
    }
    scb->raw_mbox[0] = 110U;
    scb->raw_mbox[2] = 4U;
    scb->raw_mbox[3] = (u8 )ldrv_num;
    scb->dma_direction = 3U;
    return (scb);
    case_26:
    {
    sg = scsi_sglist(cmd);
    tmp = sg_page(sg);
    tmp___0 = kmap_atomic(tmp);
    buf = (char *)tmp___0 + (unsigned long )sg->offset;
    memset((void *)buf, 0, (size_t )*(cmd->cmnd + 4UL));
    __cond = 0;
    }
    if ((int )__cond) {
      {
      __compiletime_assert_669();
      }
    } else {
    }
    {
    __kunmap_atomic((void *)(buf + - ((unsigned long )sg->offset)));
    cmd->result = 0;
    (*(cmd->scsi_done))(cmd);
    }
    return ((scb_t *)0);
    case_37: ;
    case_18: ;
    if ((((long )adapter->flag >> (int )(cmd->device)->channel) & 1L) == 0L) {
      {
      printk("\rscsi%d: scanning scsi channel %d ", (adapter->host)->host_no, (cmd->device)->channel);
      printk("for logical drives.\n");
      adapter->flag = (u32 )((int )adapter->flag | (int )(1L << (int )(cmd->device)->channel));
      }
    } else {
    }
    {
    scb = mega_allocate_scb(adapter, cmd);
    }
    if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
      *busy = 1;
      return ((scb_t *)0);
    } else {
    }
    {
    pthru = scb->pthru;
    mbox = (mbox_t *)(& scb->raw_mbox);
    memset((void *)mbox, 0, 66UL);
    memset((void *)pthru, 0, 60UL);
    pthru->timeout = 0U;
    pthru->ars = 1U;
    pthru->reqsenselen = 14U;
    pthru->islogical = 1U;
    pthru->logdrv = (u8 )ldrv_num;
    pthru->cdblen = (u8 )cmd->cmd_len;
    memcpy((void *)(& pthru->cdb), (void const *)cmd->cmnd, (size_t )cmd->cmd_len);
    }
    if (adapter->has_64bit_addr != 0) {
      mbox->m_out.cmd = 195U;
    } else {
      mbox->m_out.cmd = 3U;
    }
    {
    scb->dma_direction = 2U;
    tmp___1 = mega_build_sglist(adapter, scb, & pthru->dataxferaddr, & pthru->dataxferlen);
    pthru->numsgelements = (u8 )tmp___1;
    mbox->m_out.xferaddr = (u32 )scb->pthru_dma_addr;
    }
    return (scb);
    case_8: ;
    case_10: ;
    case_40: ;
    case_42: ;
    case_168: ;
    case_170:
    {
    scb = mega_allocate_scb(adapter, cmd);
    }
    if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
      *busy = 1;
      return ((scb_t *)0);
    } else {
    }
    {
    mbox = (mbox_t *)(& scb->raw_mbox);
    memset((void *)mbox, 0, 66UL);
    mbox->m_out.logdrv = (u8 )ldrv_num;
    }
    if (adapter->has_64bit_addr != 0) {
      mbox->m_out.cmd = ((int )*(cmd->cmnd) & 2) != 0 ? 168U : 167U;
    } else {
      mbox->m_out.cmd = ((int )*(cmd->cmnd) & 2) != 0 ? 2U : 1U;
    }
    if ((unsigned int )cmd->cmd_len == 6U) {
      mbox->m_out.numsectors = (u16 )*(cmd->cmnd + 4UL);
      mbox->m_out.lba = (((unsigned int )*(cmd->cmnd + 1UL) << 16) | ((unsigned int )*(cmd->cmnd + 2UL) << 8)) | (unsigned int )*(cmd->cmnd + 3UL);
      mbox->m_out.lba = mbox->m_out.lba & 2097151U;
    } else {
    }
    if ((unsigned int )cmd->cmd_len == 10U) {
      mbox->m_out.numsectors = (int )((u16 )*(cmd->cmnd + 8UL)) | ((int )((u16 )*(cmd->cmnd + 7UL)) << 8U);
      mbox->m_out.lba = ((((unsigned int )*(cmd->cmnd + 2UL) << 24) | ((unsigned int )*(cmd->cmnd + 3UL) << 16)) | ((unsigned int )*(cmd->cmnd + 4UL) << 8)) | (unsigned int )*(cmd->cmnd + 5UL);
    } else {
    }
    if ((unsigned int )cmd->cmd_len == 12U) {
      mbox->m_out.lba = ((((unsigned int )*(cmd->cmnd + 2UL) << 24) | ((unsigned int )*(cmd->cmnd + 3UL) << 16)) | ((unsigned int )*(cmd->cmnd + 4UL) << 8)) | (unsigned int )*(cmd->cmnd + 5UL);
      mbox->m_out.numsectors = ((int )((u16 )*(cmd->cmnd + 8UL)) << 8U) | (int )((u16 )*(cmd->cmnd + 9UL));
    } else {
    }
    if (((int )*(cmd->cmnd) & 15) == 8) {
      scb->dma_direction = 2U;
    } else {
      scb->dma_direction = 1U;
    }
    {
    tmp___2 = mega_build_sglist(adapter, scb, & mbox->m_out.xferaddr, & seg);
    mbox->m_out.numsgelements = (u8 )tmp___2;
    }
    return (scb);
    case_22: ;
    case_23: ;
    if (adapter->has_cluster == 0) {
      {
      cmd->result = 262144;
      (*(cmd->scsi_done))(cmd);
      }
      return ((scb_t *)0);
    } else {
    }
    {
    scb = mega_allocate_scb(adapter, cmd);
    }
    if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
      *busy = 1;
      return ((scb_t *)0);
    } else {
    }
    scb->raw_mbox[0] = 110U;
    scb->raw_mbox[2] = (unsigned int )*(cmd->cmnd) == 22U ? 1U : 2U;
    scb->raw_mbox[3] = (u8 )ldrv_num;
    scb->dma_direction = 3U;
    return (scb);
    switch_default:
    {
    cmd->result = 262144;
    (*(cmd->scsi_done))(cmd);
    }
    return ((scb_t *)0);
    switch_break: ;
    }
  } else {
    {
    scb = mega_allocate_scb(adapter, cmd);
    }
    if ((unsigned long )scb == (unsigned long )((scb_t *)0)) {
      *busy = 1;
      return ((scb_t *)0);
    } else {
    }
    {
    mbox = (mbox_t *)(& scb->raw_mbox);
    memset((void *)mbox, 0, 66UL);
    }
    if (adapter->support_ext_cdb != 0) {
      {
      epthru = mega_prepare_extpassthru(adapter, scb, cmd, channel, target);
      mbox->m_out.cmd = 227U;
      mbox->m_out.xferaddr = (u32 )scb->epthru_dma_addr;
      }
    } else {
      {
      pthru = mega_prepare_passthru(adapter, scb, cmd, channel, target);
      }
      if (adapter->has_64bit_addr != 0) {
        mbox->m_out.cmd = 195U;
      } else {
        mbox->m_out.cmd = 3U;
      }
      mbox->m_out.xferaddr = (u32 )scb->pthru_dma_addr;
    }
    return (scb);
  }
  return ((scb_t *)0);
}
}
static mega_passthru *mega_prepare_passthru(adapter_t *adapter , scb_t *scb , Scsi_Cmnd *cmd ,
                                            int channel , int target )
{
  mega_passthru *pthru ;
  int tmp ;
  {
  {
  pthru = scb->pthru;
  memset((void *)pthru, 0, 60UL);
  pthru->timeout = 2U;
  pthru->ars = 1U;
  pthru->reqsenselen = 14U;
  pthru->islogical = 0U;
  pthru->channel = ((long )adapter->flag & 134217728L) == 0L ? (u8 )channel : 0U;
  pthru->target = ((long )adapter->flag & 134217728L) != 0L ? (u8 )((int )((signed char )(channel << 4)) | (int )((signed char )target)) : (u8 )target;
  pthru->cdblen = (u8 )cmd->cmd_len;
  pthru->logdrv = (u8 )(cmd->device)->lun;
  memcpy((void *)(& pthru->cdb), (void const *)cmd->cmnd, (size_t )cmd->cmd_len);
  scb->dma_direction = 0U;
  }
  {
  if ((int )*(cmd->cmnd) == 18) {
    goto case_18;
  } else {
  }
  if ((int )*(cmd->cmnd) == 37) {
    goto case_37;
  } else {
  }
  goto switch_default;
  case_18: ;
  case_37: ;
  if ((((long )adapter->flag >> (int )(cmd->device)->channel) & 1L) == 0L) {
    {
    printk("\rscsi%d: scanning scsi channel %d [P%d] ", (adapter->host)->host_no,
           (cmd->device)->channel, channel);
    printk("for physical devices.\n");
    adapter->flag = (u32 )((int )adapter->flag | (int )(1L << (int )(cmd->device)->channel));
    }
  } else {
  }
  switch_default:
  {
  tmp = mega_build_sglist(adapter, scb, & pthru->dataxferaddr, & pthru->dataxferlen);
  pthru->numsgelements = (u8 )tmp;
  }
  goto ldv_38837;
  switch_break: ;
  }
  ldv_38837: ;
  return (pthru);
}
}
static mega_ext_passthru *mega_prepare_extpassthru(adapter_t *adapter , scb_t *scb ,
                                                   Scsi_Cmnd *cmd , int channel ,
                                                   int target )
{
  mega_ext_passthru *epthru ;
  int tmp ;
  {
  {
  epthru = scb->epthru;
  memset((void *)epthru, 0, 68UL);
  epthru->timeout = 2U;
  epthru->ars = 1U;
  epthru->reqsenselen = 14U;
  epthru->islogical = 0U;
  epthru->channel = ((long )adapter->flag & 134217728L) == 0L ? (u8 )channel : 0U;
  epthru->target = ((long )adapter->flag & 134217728L) != 0L ? (u8 )((int )((signed char )(channel << 4)) | (int )((signed char )target)) : (u8 )target;
  epthru->cdblen = (u8 )cmd->cmd_len;
  epthru->logdrv = (u8 )(cmd->device)->lun;
  memcpy((void *)(& epthru->cdb), (void const *)cmd->cmnd, (size_t )cmd->cmd_len);
  scb->dma_direction = 0U;
  }
  {
  if ((int )*(cmd->cmnd) == 18) {
    goto case_18;
  } else {
  }
  if ((int )*(cmd->cmnd) == 37) {
    goto case_37;
  } else {
  }
  goto switch_default;
  case_18: ;
  case_37: ;
  if ((((long )adapter->flag >> (int )(cmd->device)->channel) & 1L) == 0L) {
    {
    printk("\rscsi%d: scanning scsi channel %d [P%d] ", (adapter->host)->host_no,
           (cmd->device)->channel, channel);
    printk("for physical devices.\n");
    adapter->flag = (u32 )((int )adapter->flag | (int )(1L << (int )(cmd->device)->channel));
    }
  } else {
  }
  switch_default:
  {
  tmp = mega_build_sglist(adapter, scb, & epthru->dataxferaddr, & epthru->dataxferlen);
  epthru->numsgelements = (u8 )tmp;
  }
  goto ldv_38849;
  switch_break: ;
  }
  ldv_38849: ;
  return (epthru);
}
}
static void __mega_runpendq(adapter_t *adapter )
{
  scb_t *scb ;
  struct list_head *pos ;
  struct list_head *next ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  pos = adapter->pending_list.next;
  next = pos->next;
  goto ldv_38859;
  ldv_38858:
  __mptr = (struct list_head const *)pos;
  scb = (scb_t *)__mptr + 0xfffffffffffffff8UL;
  if ((scb->state & 4U) == 0U) {
    {
    tmp = issue_scb(adapter, scb);
    }
    if (tmp != 0) {
      return;
    } else {
    }
  } else {
  }
  pos = next;
  next = pos->next;
  ldv_38859: ;
  if ((unsigned long )pos != (unsigned long )(& adapter->pending_list)) {
    goto ldv_38858;
  } else {
  }
  return;
}
}
static int issue_scb(adapter_t *adapter , scb_t *scb )
{
  mbox64_t volatile *mbox64 ;
  mbox_t volatile *mbox ;
  unsigned int i ;
  long tmp ;
  long tmp___0 ;
  {
  {
  mbox64 = adapter->mbox64;
  mbox = adapter->mbox;
  i = 0U;
  tmp = ldv__builtin_expect((unsigned int )((unsigned char )mbox->m_in.busy) != 0U, 0L);
  }
  if (tmp != 0L) {
    ldv_38868:
    {
    __const_udelay(4295UL);
    i = i + 1U;
    }
    if ((unsigned int )((unsigned char )mbox->m_in.busy) != 0U && i < (unsigned int )max_mbox_busy_wait) {
      goto ldv_38868;
    } else {
    }
    if ((unsigned int )((unsigned char )mbox->m_in.busy) != 0U) {
      return (-1);
    } else {
    }
  } else {
  }
  {
  memcpy((void *)(& mbox->m_out), (void const *)(& scb->raw_mbox), 15UL);
  mbox->m_out.cmdid = (u8 volatile )scb->idx;
  mbox->m_in.busy = 1U;
  atomic_inc(& adapter->pend_cmds);
  }
  {
  if ((int )mbox->m_out.cmd == 167) {
    goto case_167;
  } else {
  }
  if ((int )mbox->m_out.cmd == 168) {
    goto case_168;
  } else {
  }
  if ((int )mbox->m_out.cmd == 195) {
    goto case_195;
  } else {
  }
  if ((int )mbox->m_out.cmd == 227) {
    goto case_227;
  } else {
  }
  goto switch_default;
  case_167: ;
  case_168: ;
  case_195: ;
  case_227:
  mbox64->xfer_segment_lo = mbox->m_out.xferaddr;
  mbox64->xfer_segment_hi = 0U;
  mbox->m_out.xferaddr = 4294967295U;
  goto ldv_38874;
  switch_default:
  mbox64->xfer_segment_lo = 0U;
  mbox64->xfer_segment_hi = 0U;
  switch_break: ;
  }
  ldv_38874:
  {
  scb->state = scb->state | 4U;
  tmp___0 = ldv__builtin_expect(((long )adapter->flag & 536870912L) != 0L, 1L);
  }
  if (tmp___0 != 0L) {
    {
    mbox->m_in.poll = 0U;
    mbox->m_in.ack = 0U;
    writel((unsigned int )adapter->mbox_dma | 1U, (void volatile *)adapter->mmio_base + 32U);
    }
  } else {
    {
    outb_p(192, (int )((unsigned int )adapter->base + 1U));
    outb_p(16, (int )adapter->base);
    }
  }
  return (0);
}
}
__inline static int mega_busywait_mbox(adapter_t *adapter )
{
  int tmp ;
  {
  if ((unsigned int )((unsigned char )(adapter->mbox)->m_in.busy) != 0U) {
    {
    tmp = __mega_busywait_mbox(adapter);
    }
    return (tmp);
  } else {
  }
  return (0);
}
}
static int issue_scb_block(adapter_t *adapter , u_char *raw_mbox )
{
  mbox64_t volatile *mbox64 ;
  mbox_t volatile *mbox ;
  u8 byte ;
  int tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  {
  mbox64 = adapter->mbox64;
  mbox = adapter->mbox;
  tmp = mega_busywait_mbox(adapter);
  }
  if (tmp != 0) {
    goto bug_blocked_mailbox;
  } else {
  }
  {
  memcpy((void *)mbox, (void const *)raw_mbox, 15UL);
  mbox->m_out.cmdid = 254U;
  mbox->m_in.busy = 1U;
  }
  {
  if ((int )*raw_mbox == 167) {
    goto case_167;
  } else {
  }
  if ((int )*raw_mbox == 168) {
    goto case_168;
  } else {
  }
  if ((int )*raw_mbox == 195) {
    goto case_195;
  } else {
  }
  if ((int )*raw_mbox == 227) {
    goto case_227;
  } else {
  }
  goto switch_default;
  case_167: ;
  case_168: ;
  case_195: ;
  case_227:
  mbox64->xfer_segment_lo = mbox->m_out.xferaddr;
  mbox64->xfer_segment_hi = 0U;
  mbox->m_out.xferaddr = 4294967295U;
  goto ldv_38891;
  switch_default:
  mbox64->xfer_segment_lo = 0U;
  mbox64->xfer_segment_hi = 0U;
  switch_break: ;
  }
  ldv_38891:
  {
  tmp___1 = ldv__builtin_expect(((long )adapter->flag & 536870912L) != 0L, 1L);
  }
  if (tmp___1 != 0L) {
    {
    mbox->m_in.poll = 0U;
    mbox->m_in.ack = 0U;
    mbox->m_in.numstatus = 255U;
    mbox->m_in.status = 255U;
    writel((unsigned int )adapter->mbox_dma | 1U, (void volatile *)adapter->mmio_base + 32U);
    }
    goto ldv_38894;
    ldv_38893:
    {
    cpu_relax();
    }
    ldv_38894: ;
    if ((unsigned int )((unsigned char )mbox->m_in.numstatus) == 255U) {
      goto ldv_38893;
    } else {
    }
    mbox->m_in.numstatus = 255U;
    goto ldv_38897;
    ldv_38896:
    {
    cpu_relax();
    }
    ldv_38897: ;
    if ((unsigned int )((unsigned char )mbox->m_in.poll) != 119U) {
      goto ldv_38896;
    } else {
    }
    {
    mbox->m_in.poll = 0U;
    mbox->m_in.ack = 119U;
    writel((unsigned int )adapter->mbox_dma | 2U, (void volatile *)adapter->mmio_base + 32U);
    }
    goto ldv_38900;
    ldv_38899:
    {
    cpu_relax();
    }
    ldv_38900:
    {
    tmp___0 = readl((void const volatile *)adapter->mmio_base + 32U);
    }
    if ((tmp___0 & 2U) != 0U) {
      goto ldv_38899;
    } else {
    }
  } else {
    {
    outb_p(0, (int )((unsigned int )adapter->base + 1U));
    outb_p(16, (int )adapter->base);
    }
    goto ldv_38903;
    ldv_38902:
    {
    cpu_relax();
    }
    ldv_38903:
    {
    byte = inb_p((int )((unsigned int )adapter->base + 10U));
    }
    if (((int )byte & 64) == 0) {
      goto ldv_38902;
    } else {
    }
    {
    outb_p((int )byte, (int )((unsigned int )adapter->base + 10U));
    outb_p(192, (int )((unsigned int )adapter->base + 1U));
    outb_p(8, (int )adapter->base);
    }
  }
  return ((int )mbox->m_in.status);
  bug_blocked_mailbox:
  {
  printk("\fmegaraid: Blocked mailbox......!!\n");
  __const_udelay(4295000UL);
  }
  return (-1);
}
}
static irqreturn_t megaraid_isr_iomapped(int irq , void *devp )
{
  adapter_t *adapter ;
  unsigned long flags ;
  u8 status ;
  u8 nstatus ;
  u8 completed[46U] ;
  u8 byte ;
  int handled ;
  int tmp ;
  {
  {
  adapter = (adapter_t *)devp;
  handled = 0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(& adapter->lock);
  }
  ldv_38920:
  {
  byte = inb_p((int )((unsigned int )adapter->base + 10U));
  }
  if (((int )byte & 64) == 0) {
    goto out_unlock;
  } else {
  }
  {
  outb_p((int )byte, (int )((unsigned int )adapter->base + 10U));
  }
  goto ldv_38918;
  ldv_38917:
  {
  cpu_relax();
  }
  ldv_38918:
  nstatus = (adapter->mbox)->m_in.numstatus;
  if ((unsigned int )nstatus == 255U) {
    goto ldv_38917;
  } else {
  }
  {
  (adapter->mbox)->m_in.numstatus = 255U;
  status = (adapter->mbox)->m_in.status;
  atomic_sub((int )nstatus, & adapter->pend_cmds);
  memcpy((void *)(& completed), (void const *)(& (adapter->mbox)->m_in.completed),
           (size_t )nstatus);
  outb_p(8, (int )adapter->base);
  mega_cmd_done(adapter, (u8 *)(& completed), (int )nstatus, (int )status);
  mega_rundoneq(adapter);
  handled = 1;
  tmp = atomic_read((atomic_t const *)(& adapter->quiescent));
  }
  if (tmp == 0) {
    {
    mega_runpendq(adapter);
    }
  } else {
  }
  goto ldv_38920;
  out_unlock:
  {
  ldv_spin_unlock_irqrestore_97(& adapter->lock, flags);
  }
  return (handled != 0);
}
}
static irqreturn_t megaraid_isr_memmapped(int irq , void *devp )
{
  adapter_t *adapter ;
  unsigned long flags ;
  u8 status ;
  u32 dword ;
  u8 nstatus ;
  u8 completed[46U] ;
  int handled ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  adapter = (adapter_t *)devp;
  dword = 0U;
  handled = 0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(& adapter->lock);
  }
  ldv_38939:
  {
  dword = readl((void const volatile *)adapter->mmio_base + 44U);
  }
  if (dword != 268440116U) {
    goto out_unlock;
  } else {
  }
  {
  writel(268440116U, (void volatile *)adapter->mmio_base + 44U);
  }
  goto ldv_38934;
  ldv_38933:
  {
  cpu_relax();
  }
  ldv_38934:
  nstatus = (adapter->mbox)->m_in.numstatus;
  if ((unsigned int )nstatus == 255U) {
    goto ldv_38933;
  } else {
  }
  {
  (adapter->mbox)->m_in.numstatus = 255U;
  status = (adapter->mbox)->m_in.status;
  atomic_sub((int )nstatus, & adapter->pend_cmds);
  memcpy((void *)(& completed), (void const *)(& (adapter->mbox)->m_in.completed),
           (size_t )nstatus);
  writel(2U, (void volatile *)adapter->mmio_base + 32U);
  handled = 1;
  }
  goto ldv_38937;
  ldv_38936:
  {
  cpu_relax();
  }
  ldv_38937:
  {
  tmp = readl((void const volatile *)adapter->mmio_base + 32U);
  }
  if ((tmp & 2U) != 0U) {
    goto ldv_38936;
  } else {
  }
  {
  mega_cmd_done(adapter, (u8 *)(& completed), (int )nstatus, (int )status);
  mega_rundoneq(adapter);
  tmp___0 = atomic_read((atomic_t const *)(& adapter->quiescent));
  }
  if (tmp___0 == 0) {
    {
    mega_runpendq(adapter);
    }
  } else {
  }
  goto ldv_38939;
  out_unlock:
  {
  ldv_spin_unlock_irqrestore_97(& adapter->lock, flags);
  }
  return (handled != 0);
}
}
static void mega_cmd_done(adapter_t *adapter , u8 *completed , int nstatus , int status )
{
  mega_ext_passthru *epthru ;
  struct scatterlist *sgl ;
  Scsi_Cmnd *cmd ;
  mega_passthru *pthru ;
  mbox_t *mbox ;
  u8 c ;
  scb_t *scb ;
  int islogical ;
  int cmdid ;
  int i ;
  void *tmp ;
  struct page *tmp___0 ;
  {
  epthru = (mega_ext_passthru *)0;
  cmd = (Scsi_Cmnd *)0;
  pthru = (mega_passthru *)0;
  mbox = (mbox_t *)0;
  i = 0;
  goto ldv_38963;
  ldv_38962:
  cmdid = (int )*(completed + (unsigned long )i);
  if (cmdid == 127) {
    {
    scb = & adapter->int_scb;
    list_del_init(& scb->list);
    scb->state = 0U;
    adapter->int_status = status;
    complete(& adapter->int_waitq);
    }
  } else {
    scb = adapter->scb_list + (unsigned long )cmdid;
    if ((scb->state & 4U) == 0U || (unsigned long )scb->cmd == (unsigned long )((Scsi_Cmnd *)0)) {
      {
      printk("\nmegaraid: invalid command ");
      printk("Id %d, scb->state:%x, scsi cmd:%p\n", cmdid, scb->state, scb->cmd);
      }
      goto ldv_38956;
    } else {
    }
    if ((scb->state & 8U) != 0U) {
      {
      printk("\fmegaraid: aborted cmd [%x] complete.\n", scb->idx);
      (scb->cmd)->result = 327680;
      list_add_tail((struct list_head *)(& (scb->cmd)->SCp), & adapter->completed_list);
      mega_free_scb(adapter, scb);
      }
      goto ldv_38956;
    } else {
    }
    if ((scb->state & 16U) != 0U) {
      {
      printk("\fmegaraid: reset cmd [%x] complete.\n", scb->idx);
      (scb->cmd)->result = 524288;
      list_add_tail((struct list_head *)(& (scb->cmd)->SCp), & adapter->completed_list);
      mega_free_scb(adapter, scb);
      }
      goto ldv_38956;
    } else {
    }
    cmd = scb->cmd;
    pthru = scb->pthru;
    epthru = scb->epthru;
    mbox = (mbox_t *)(& scb->raw_mbox);
  }
  islogical = (int )adapter->logdrv_chan[(cmd->device)->channel];
  if ((unsigned int )*(cmd->cmnd) == 18U && islogical == 0) {
    {
    sgl = scsi_sglist(cmd);
    tmp___0 = sg_page(sgl);
    }
    if ((unsigned long )tmp___0 != (unsigned long )((struct page *)0)) {
      {
      tmp = sg_virt(sgl);
      c = *((unsigned char *)tmp);
      }
    } else {
      {
      printk("\fmegaraid: invalid sg.\n");
      c = 0U;
      }
    }
    if ((adapter->mega_ch_class >> (int )(cmd->device)->channel) & 1 && ((int )c & 31) == 0) {
      status = 240;
    } else {
    }
  } else {
  }
  cmd->result = 0;
  {
  if (status == 0) {
    goto case_0;
  } else {
  }
  if (status == 2) {
    goto case_2;
  } else {
  }
  if (status == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_0:
  cmd->result = cmd->result;
  goto ldv_38958;
  case_2: ;
  if ((unsigned int )mbox->m_out.cmd == 3U || (unsigned int )mbox->m_out.cmd == 195U) {
    {
    memcpy((void *)cmd->sense_buffer, (void const *)(& pthru->reqsensearea), 14UL);
    cmd->result = 134217730;
    }
  } else
  if ((unsigned int )mbox->m_out.cmd == 227U) {
    {
    memcpy((void *)cmd->sense_buffer, (void const *)(& epthru->reqsensearea),
             14UL);
    cmd->result = 134217730;
    }
  } else {
    *(cmd->sense_buffer) = 112U;
    *(cmd->sense_buffer + 2UL) = 11U;
    cmd->result = cmd->result | 2;
  }
  goto ldv_38958;
  case_8:
  cmd->result = cmd->result | (status | 131072);
  goto ldv_38958;
  switch_default: ;
  if ((unsigned int )*(cmd->cmnd) == 0U) {
    cmd->result = cmd->result | 458776;
  } else
  if (status == 1 && (unsigned int )*(cmd->cmnd) - 22U <= 1U) {
    cmd->result = cmd->result | 458776;
  } else {
    cmd->result = cmd->result | (status | 262144);
  }
  switch_break: ;
  }
  ldv_38958:
  {
  mega_free_scb(adapter, scb);
  list_add_tail((struct list_head *)(& cmd->SCp), & adapter->completed_list);
  }
  ldv_38956:
  i = i + 1;
  ldv_38963: ;
  if (i < nstatus) {
    goto ldv_38962;
  } else {
  }
  return;
}
}
static void mega_rundoneq(adapter_t *adapter )
{
  Scsi_Cmnd *cmd ;
  struct list_head *pos ;
  struct scsi_pointer *spos ;
  struct scsi_pointer const *__mptr ;
  {
  pos = adapter->completed_list.next;
  goto ldv_38974;
  ldv_38973:
  {
  spos = (struct scsi_pointer *)pos;
  __mptr = (struct scsi_pointer const *)spos;
  cmd = (Scsi_Cmnd *)__mptr + 0xfffffffffffffe80UL;
  (*(cmd->scsi_done))(cmd);
  pos = pos->next;
  }
  ldv_38974: ;
  if ((unsigned long )pos != (unsigned long )(& adapter->completed_list)) {
    goto ldv_38973;
  } else {
  }
  {
  INIT_LIST_HEAD(& adapter->completed_list);
  }
  return;
}
}
static void mega_free_scb(adapter_t *adapter , scb_t *scb )
{
  {
  {
  if (scb->dma_type == 65535U) {
    goto case_65535;
  } else {
  }
  if (scb->dma_type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_65535: ;
  goto ldv_38981;
  case_2:
  {
  scsi_dma_unmap(scb->cmd);
  }
  goto ldv_38981;
  switch_default: ;
  goto ldv_38981;
  switch_break: ;
  }
  ldv_38981:
  {
  list_del_init(& scb->list);
  scb->state = 0U;
  scb->cmd = (Scsi_Cmnd *)0;
  list_add(& scb->list, & adapter->free_list);
  }
  return;
}
}
static int __mega_busywait_mbox(adapter_t *adapter )
{
  mbox_t volatile *mbox ;
  long counter ;
  {
  mbox = adapter->mbox;
  counter = 0L;
  goto ldv_38991;
  ldv_38990: ;
  if ((unsigned int )((unsigned char )mbox->m_in.busy) == 0U) {
    return (0);
  } else {
  }
  {
  __const_udelay(429500UL);
  ___might_sleep("drivers/scsi/megaraid.c", 1712, 0);
  _cond_resched();
  counter = counter + 1L;
  }
  ldv_38991: ;
  if (counter <= 9999L) {
    goto ldv_38990;
  } else {
  }
  return (-1);
}
}
static int mega_build_sglist(adapter_t *adapter , scb_t *scb , u32 *buf , u32 *len )
{
  struct scatterlist *sg ;
  Scsi_Cmnd *cmd ;
  int sgcnt ;
  int idx ;
  long tmp ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  {
  cmd = scb->cmd;
  sgcnt = scsi_dma_map(cmd);
  scb->dma_type = 2U;
  tmp = ldv__builtin_expect((long )(sgcnt > (int )adapter->sglen || sgcnt < 0), 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/scsi/megaraid.c"),
                         "i" (1740), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  *len = 0U;
  tmp___0 = scsi_sg_count(cmd);
  }
  if (tmp___0 == 1U && adapter->has_64bit_addr == 0) {
    {
    sg = scsi_sglist(cmd);
    scb->dma_h_bulkdata = sg->dma_address;
    *buf = (unsigned int )scb->dma_h_bulkdata;
    *len = sg->dma_length;
    }
    return (0);
  } else {
  }
  {
  idx = 0;
  sg = scsi_sglist(cmd);
  }
  goto ldv_39004;
  ldv_39003: ;
  if (adapter->has_64bit_addr != 0) {
    (scb->sgl64 + (unsigned long )idx)->address = sg->dma_address;
    tmp___1 = sg->dma_length;
    (scb->sgl64 + (unsigned long )idx)->length = tmp___1;
    *len = *len + tmp___1;
  } else {
    (scb->sgl + (unsigned long )idx)->address = (u32 )sg->dma_address;
    tmp___2 = sg->dma_length;
    (scb->sgl + (unsigned long )idx)->length = tmp___2;
    *len = *len + tmp___2;
  }
  {
  idx = idx + 1;
  sg = sg_next(sg);
  }
  ldv_39004: ;
  if (idx < sgcnt) {
    goto ldv_39003;
  } else {
  }
  *buf = (u32 )scb->sgl_dma_addr;
  return (sgcnt);
}
}
static void mega_8_to_40ld(mraid_inquiry *inquiry , mega_inquiry3 *enquiry3 , mega_product_info *product_info )
{
  int i ;
  {
  product_info->max_commands = inquiry->adapter_info.max_commands;
  enquiry3->rebuild_rate = inquiry->adapter_info.rebuild_rate;
  product_info->nchannels = inquiry->adapter_info.nchannels;
  i = 0;
  goto ldv_39013;
  ldv_39012:
  product_info->fw_version[i] = inquiry->adapter_info.fw_version[i];
  product_info->bios_version[i] = inquiry->adapter_info.bios_version[i];
  i = i + 1;
  ldv_39013: ;
  if (i <= 3) {
    goto ldv_39012;
  } else {
  }
  enquiry3->cache_flush_interval = inquiry->adapter_info.cache_flush_interval;
  product_info->dram_size = (u16 )inquiry->adapter_info.dram_size;
  enquiry3->num_ldrv = inquiry->logdrv_info.num_ldrv;
  i = 0;
  goto ldv_39016;
  ldv_39015:
  enquiry3->ldrv_size[i] = inquiry->logdrv_info.ldrv_size[i];
  enquiry3->ldrv_prop[i] = inquiry->logdrv_info.ldrv_prop[i];
  enquiry3->ldrv_state[i] = inquiry->logdrv_info.ldrv_state[i];
  i = i + 1;
  ldv_39016: ;
  if (i <= 7) {
    goto ldv_39015;
  } else {
  }
  i = 0;
  goto ldv_39019;
  ldv_39018:
  enquiry3->pdrv_state[i] = inquiry->pdrv_info.pdrv_state[i];
  i = i + 1;
  ldv_39019: ;
  if (i <= 74) {
    goto ldv_39018;
  } else {
  }
  return;
}
}
__inline static void mega_free_sgl(adapter_t *adapter )
{
  scb_t *scb ;
  int i ;
  {
  i = 0;
  goto ldv_39027;
  ldv_39026:
  scb = adapter->scb_list + (unsigned long )i;
  if ((unsigned long )scb->sgl64 != (unsigned long )((mega_sgl64 *)0)) {
    {
    pci_free_consistent(adapter->dev, (unsigned long )adapter->sglen * 12UL, (void *)scb->sgl64,
                        scb->sgl_dma_addr);
    scb->sgl64 = (mega_sgl64 *)0;
    }
  } else {
  }
  if ((unsigned long )scb->pthru != (unsigned long )((mega_passthru *)0)) {
    {
    pci_free_consistent(adapter->dev, 60UL, (void *)scb->pthru, scb->pthru_dma_addr);
    scb->pthru = (mega_passthru *)0;
    }
  } else {
  }
  if ((unsigned long )scb->epthru != (unsigned long )((mega_ext_passthru *)0)) {
    {
    pci_free_consistent(adapter->dev, 68UL, (void *)scb->epthru, scb->epthru_dma_addr);
    scb->epthru = (mega_ext_passthru *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_39027: ;
  if (i < (int )adapter->max_cmds) {
    goto ldv_39026;
  } else {
  }
  return;
}
}
char const *megaraid_info(struct Scsi_Host *host )
{
  char buffer[512U] ;
  adapter_t *adapter ;
  {
  {
  adapter = (adapter_t *)(& host->hostdata);
  sprintf((char *)(& buffer), "LSI Logic MegaRAID %s %d commands %d targs %d chans %d luns",
          (u8 *)(& adapter->fw_version), (int )adapter->product_info.max_commands,
          (adapter->host)->max_id, (adapter->host)->max_channel, (unsigned int )(adapter->host)->max_lun);
  }
  return ((char const *)(& buffer));
}
}
static int megaraid_abort(Scsi_Cmnd *cmd )
{
  adapter_t *adapter ;
  int rval ;
  {
  {
  adapter = (adapter_t *)(& ((cmd->device)->host)->hostdata);
  rval = megaraid_abort_and_reset(adapter, cmd, 8);
  mega_rundoneq(adapter);
  }
  return (rval);
}
}
static int megaraid_reset(struct scsi_cmnd *cmd )
{
  adapter_t *adapter ;
  megacmd_t mc ;
  int rval ;
  int tmp ;
  {
  {
  adapter = (adapter_t *)(& ((cmd->device)->host)->hostdata);
  mc.cmd = 110U;
  mc.opcode = 3U;
  tmp = mega_internal_command(adapter, & mc, (mega_passthru *)0);
  }
  if (tmp != 0) {
    {
    printk("\fmegaraid: reservation reset failed.\n");
    }
  } else {
    {
    printk("\016megaraid: reservation reset.\n");
    }
  }
  {
  ldv_spin_lock_irq_104(& adapter->lock);
  rval = megaraid_abort_and_reset(adapter, cmd, 16);
  mega_rundoneq(adapter);
  ldv_spin_unlock_irq_105(& adapter->lock);
  }
  return (rval);
}
}
static int megaraid_abort_and_reset(adapter_t *adapter , Scsi_Cmnd *cmd , int aor )
{
  struct list_head *pos ;
  struct list_head *next ;
  scb_t *scb ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  {
  printk("\fmegaraid: %s cmd=%x <c=%d t=%d l=%d>\n", aor == 8 ? (char *)"ABORTING" : (char *)"RESET",
         (int )*(cmd->cmnd), (cmd->device)->channel, (cmd->device)->id, (unsigned int )(cmd->device)->lun);
  tmp = list_empty((struct list_head const *)(& adapter->pending_list));
  }
  if (tmp != 0) {
    return (8195);
  } else {
  }
  pos = adapter->pending_list.next;
  next = pos->next;
  goto ldv_39056;
  ldv_39055:
  __mptr = (struct list_head const *)pos;
  scb = (scb_t *)__mptr + 0xfffffffffffffff8UL;
  if ((unsigned long )scb->cmd == (unsigned long )cmd) {
    scb->state = scb->state | (u32 )aor;
    if ((scb->state & 4U) != 0U) {
      {
      printk("\fmegaraid: %s[%x], fw owner.\n", aor == 8 ? (char *)"ABORTING" : (char *)"RESET",
             scb->idx);
      }
      return (8195);
    } else {
      {
      printk("\fmegaraid: %s-[%x], driver owner.\n", aor == 8 ? (char *)"ABORTING" : (char *)"RESET",
             scb->idx);
      mega_free_scb(adapter, scb);
      }
      if (aor == 8) {
        cmd->result = 327680;
      } else {
        cmd->result = 524288;
      }
      {
      list_add_tail((struct list_head *)(& cmd->SCp), & adapter->completed_list);
      }
      return (8194);
    }
  } else {
  }
  pos = next;
  next = pos->next;
  ldv_39056: ;
  if ((unsigned long )pos != (unsigned long )(& adapter->pending_list)) {
    goto ldv_39055;
  } else {
  }
  return (8195);
}
}
__inline static int make_local_pdev(adapter_t *adapter , struct pci_dev **pdev )
{
  int tmp ;
  {
  {
  *pdev = pci_alloc_dev((struct pci_bus *)0);
  }
  if ((unsigned long )*pdev == (unsigned long )((struct pci_dev *)0)) {
    return (-1);
  } else {
  }
  {
  memcpy((void *)*pdev, (void const *)adapter->dev, 2968UL);
  tmp = pci_set_dma_mask(*pdev, 4294967295ULL);
  }
  if (tmp != 0) {
    {
    kfree((void const *)*pdev);
    }
    return (-1);
  } else {
  }
  return (0);
}
}
__inline static void free_local_pdev(struct pci_dev *pdev )
{
  {
  {
  kfree((void const *)pdev);
  }
  return;
}
}
__inline static void *mega_allocate_inquiry(dma_addr_t *dma_handle , struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = pci_alloc_consistent(pdev, 1024UL, dma_handle);
  }
  return (tmp);
}
}
__inline static void mega_free_inquiry(void *inquiry , dma_addr_t dma_handle , struct pci_dev *pdev )
{
  {
  {
  pci_free_consistent(pdev, 1024UL, inquiry, dma_handle);
  }
  return;
}
}
static int proc_show_config(struct seq_file *m , void *v )
{
  adapter_t *adapter ;
  int tmp ;
  {
  {
  adapter = (adapter_t *)m->private;
  seq_puts(m, "v2.00.4 (Release Date: Thu Feb 9 08:51:30 EST 2006)\n");
  }
  if ((unsigned int )adapter->product_info.product_name[0] != 0U) {
    {
    seq_printf(m, "%s\n", (u8 *)(& adapter->product_info.product_name));
    }
  } else {
  }
  {
  seq_puts(m, "Controller Type: ");
  }
  if (((long )adapter->flag & 536870912L) != 0L) {
    {
    seq_puts(m, "438/466/467/471/493/518/520/531/532\n");
    }
  } else {
    {
    seq_puts(m, "418/428/434\n");
    }
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    {
    seq_puts(m, "Controller Supports 40 Logical Drives\n");
    }
  } else {
  }
  if (((long )adapter->flag & 67108864L) != 0L) {
    {
    seq_puts(m, "Controller capable of 64-bit memory addressing\n");
    }
  } else {
  }
  if (adapter->has_64bit_addr != 0) {
    {
    seq_puts(m, "Controller using 64-bit memory addressing\n");
    }
  } else {
    {
    seq_puts(m, "Controller is not using 64-bit memory addressing\n");
    }
  }
  {
  seq_printf(m, "Base = %08lx, Irq = %d, ", adapter->base, (adapter->host)->irq);
  seq_printf(m, "Logical Drives = %d, Channels = %d\n", (int )adapter->numldrv, (int )adapter->product_info.nchannels);
  seq_printf(m, "Version =%s:%s, DRAM = %dMb\n", (u8 *)(& adapter->fw_version), (u8 *)(& adapter->bios_version),
             (int )adapter->product_info.dram_size);
  seq_printf(m, "Controller Queue Depth = %d, Driver Queue Depth = %d\n", (int )adapter->product_info.max_commands,
             (int )adapter->max_cmds);
  seq_printf(m, "support_ext_cdb    = %d\n", adapter->support_ext_cdb);
  seq_printf(m, "support_random_del = %d\n", adapter->support_random_del);
  seq_printf(m, "boot_ldrv_enabled  = %d\n", adapter->boot_ldrv_enabled);
  seq_printf(m, "boot_ldrv          = %d\n", adapter->boot_ldrv);
  seq_printf(m, "boot_pdrv_enabled  = %d\n", adapter->boot_pdrv_enabled);
  seq_printf(m, "boot_pdrv_ch       = %d\n", adapter->boot_pdrv_ch);
  seq_printf(m, "boot_pdrv_tgt      = %d\n", adapter->boot_pdrv_tgt);
  tmp = atomic_read((atomic_t const *)(& adapter->quiescent));
  seq_printf(m, "quiescent          = %d\n", tmp);
  seq_printf(m, "has_cluster        = %d\n", adapter->has_cluster);
  seq_puts(m, "\nModule Parameters:\n");
  seq_printf(m, "max_cmd_per_lun    = %d\n", max_cmd_per_lun);
  seq_printf(m, "max_sectors_per_io = %d\n", (int )max_sectors_per_io);
  }
  return (0);
}
}
static int proc_show_stat(struct seq_file *m , void *v )
{
  adapter_t *adapter ;
  int tmp ;
  {
  {
  adapter = (adapter_t *)m->private;
  seq_puts(m, "Statistical Information for this controller\n");
  tmp = atomic_read((atomic_t const *)(& adapter->pend_cmds));
  seq_printf(m, "pend_cmds = %d\n", tmp);
  seq_puts(m, "IO and error counters not compiled in driver.\n");
  }
  return (0);
}
}
static int proc_show_mbox(struct seq_file *m , void *v )
{
  adapter_t *adapter ;
  mbox_t volatile *mbox ;
  {
  {
  adapter = (adapter_t *)m->private;
  mbox = adapter->mbox;
  seq_puts(m, "Contents of Mail Box Structure\n");
  seq_printf(m, "  Fw Command   = 0x%02x\n", (int )mbox->m_out.cmd);
  seq_printf(m, "  Cmd Sequence = 0x%02x\n", (int )mbox->m_out.cmdid);
  seq_printf(m, "  No of Sectors= %04d\n", (int )mbox->m_out.numsectors);
  seq_printf(m, "  LBA          = 0x%02x\n", mbox->m_out.lba);
  seq_printf(m, "  DTA          = 0x%08x\n", mbox->m_out.xferaddr);
  seq_printf(m, "  Logical Drive= 0x%02x\n", (int )mbox->m_out.logdrv);
  seq_printf(m, "  No of SG Elmt= 0x%02x\n", (int )mbox->m_out.numsgelements);
  seq_printf(m, "  Busy         = %01x\n", (int )mbox->m_in.busy);
  seq_printf(m, "  Status       = 0x%02x\n", (int )mbox->m_in.status);
  }
  return (0);
}
}
static int proc_show_rebuild_rate(struct seq_file *m , void *v )
{
  adapter_t *adapter ;
  dma_addr_t dma_handle ;
  caddr_t inquiry ;
  struct pci_dev *pdev ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  adapter = (adapter_t *)m->private;
  tmp = make_local_pdev(adapter, & pdev);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = mega_allocate_inquiry(& dma_handle, pdev);
  inquiry = (caddr_t )tmp___0;
  }
  if ((unsigned long )inquiry == (unsigned long )((caddr_t )0)) {
    goto free_pdev;
  } else {
  }
  {
  tmp___1 = mega_adapinq(adapter, dma_handle);
  }
  if (tmp___1 != 0) {
    {
    seq_puts(m, "Adapter inquiry failed.\n");
    printk("\fmegaraid: inquiry failed.\n");
    }
    goto free_inquiry;
  } else {
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    {
    seq_printf(m, "Rebuild Rate: [%d%%]\n", (int )((mega_inquiry3 *)inquiry)->rebuild_rate);
    }
  } else {
    {
    seq_printf(m, "Rebuild Rate: [%d%%]\n", (int )((mraid_ext_inquiry *)inquiry)->raid_inq.adapter_info.rebuild_rate);
    }
  }
  free_inquiry:
  {
  mega_free_inquiry((void *)inquiry, dma_handle, pdev);
  }
  free_pdev:
  {
  free_local_pdev(pdev);
  }
  return (0);
}
}
static int proc_show_battery(struct seq_file *m , void *v )
{
  adapter_t *adapter ;
  dma_addr_t dma_handle ;
  caddr_t inquiry ;
  struct pci_dev *pdev ;
  u8 battery_status ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  adapter = (adapter_t *)m->private;
  tmp = make_local_pdev(adapter, & pdev);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = mega_allocate_inquiry(& dma_handle, pdev);
  inquiry = (caddr_t )tmp___0;
  }
  if ((unsigned long )inquiry == (unsigned long )((caddr_t )0)) {
    goto free_pdev;
  } else {
  }
  {
  tmp___1 = mega_adapinq(adapter, dma_handle);
  }
  if (tmp___1 != 0) {
    {
    seq_puts(m, "Adapter inquiry failed.\n");
    printk("\fmegaraid: inquiry failed.\n");
    }
    goto free_inquiry;
  } else {
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    battery_status = ((mega_inquiry3 *)inquiry)->battery_status;
  } else {
    battery_status = ((mraid_ext_inquiry *)inquiry)->raid_inq.adapter_info.battery_status;
  }
  {
  seq_printf(m, "Battery Status:[%d]", (int )battery_status);
  }
  if ((unsigned int )battery_status == 0U) {
    {
    seq_puts(m, " Charge Done");
    }
  } else {
  }
  if ((int )battery_status & 1) {
    {
    seq_puts(m, " Module Missing");
    }
  } else {
  }
  if (((int )battery_status & 2) != 0) {
    {
    seq_puts(m, " Low Voltage");
    }
  } else {
  }
  if (((int )battery_status & 4) != 0) {
    {
    seq_puts(m, " Temperature High");
    }
  } else {
  }
  if (((int )battery_status & 8) != 0) {
    {
    seq_puts(m, " Pack Missing");
    }
  } else {
  }
  if (((int )battery_status & 16) != 0) {
    {
    seq_puts(m, " Charge In-progress");
    }
  } else {
  }
  if (((int )battery_status & 32) != 0) {
    {
    seq_puts(m, " Charge Fail");
    }
  } else {
  }
  if (((int )battery_status & 64) != 0) {
    {
    seq_puts(m, " Cycles Exceeded");
    }
  } else {
  }
  {
  seq_putc(m, 10);
  }
  free_inquiry:
  {
  mega_free_inquiry((void *)inquiry, dma_handle, pdev);
  }
  free_pdev:
  {
  free_local_pdev(pdev);
  }
  return (0);
}
}
static void mega_print_inquiry(struct seq_file *m , char *scsi_inq )
{
  int i ;
  char const *tmp ;
  {
  {
  seq_puts(m, "  Vendor: ");
  seq_write(m, (void const *)scsi_inq + 8U, 8UL);
  seq_puts(m, "  Model: ");
  seq_write(m, (void const *)scsi_inq + 16U, 16UL);
  seq_puts(m, "  Rev: ");
  seq_write(m, (void const *)scsi_inq + 32U, 4UL);
  seq_putc(m, 10);
  i = (int )*scsi_inq & 31;
  tmp = scsi_device_type((unsigned int )i);
  seq_printf(m, "  Type:   %s ", tmp);
  seq_printf(m, "                 ANSI SCSI revision: %02x", (int )*(scsi_inq + 2UL) & 7);
  }
  if (((int )*(scsi_inq + 2UL) & 7) == 1 && ((int )*(scsi_inq + 3UL) & 15) == 1) {
    {
    seq_puts(m, " CCS\n");
    }
  } else {
    {
    seq_putc(m, 10);
    }
  }
  return;
}
}
static int proc_show_pdrv(struct seq_file *m , adapter_t *adapter , int channel )
{
  dma_addr_t dma_handle ;
  char *scsi_inq ;
  dma_addr_t scsi_inq_dma_handle ;
  caddr_t inquiry ;
  struct pci_dev *pdev ;
  u8 *pdrv_state ;
  u8 state ;
  int tgt ;
  int max_channels ;
  int i ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = make_local_pdev(adapter, & pdev);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = mega_allocate_inquiry(& dma_handle, pdev);
  inquiry = (caddr_t )tmp___0;
  }
  if ((unsigned long )inquiry == (unsigned long )((caddr_t )0)) {
    goto free_pdev;
  } else {
  }
  {
  tmp___1 = mega_adapinq(adapter, dma_handle);
  }
  if (tmp___1 != 0) {
    {
    seq_puts(m, "Adapter inquiry failed.\n");
    printk("\fmegaraid: inquiry failed.\n");
    }
    goto free_inquiry;
  } else {
  }
  {
  tmp___2 = pci_alloc_consistent(pdev, 256UL, & scsi_inq_dma_handle);
  scsi_inq = (char *)tmp___2;
  }
  if ((unsigned long )scsi_inq == (unsigned long )((char *)0)) {
    {
    seq_puts(m, "memory not available for scsi inq.\n");
    }
    goto free_inquiry;
  } else {
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    pdrv_state = (u8 *)(& ((mega_inquiry3 *)inquiry)->pdrv_state);
  } else {
    pdrv_state = (u8 *)(& ((mraid_ext_inquiry *)inquiry)->raid_inq.pdrv_info.pdrv_state);
  }
  max_channels = (int )adapter->product_info.nchannels;
  if (channel >= max_channels) {
    goto free_pci;
  } else {
  }
  tgt = 0;
  goto ldv_39142;
  ldv_39141:
  i = channel * 16 + tgt;
  state = *(pdrv_state + (unsigned long )i);
  {
  if (((int )state & 15) == 3) {
    goto case_3;
  } else {
  }
  if (((int )state & 15) == 4) {
    goto case_4;
  } else {
  }
  if (((int )state & 15) == 5) {
    goto case_5;
  } else {
  }
  if (((int )state & 15) == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_3:
  {
  seq_printf(m, "Channel:%2d Id:%2d State: Online", channel, tgt);
  }
  goto ldv_39135;
  case_4:
  {
  seq_printf(m, "Channel:%2d Id:%2d State: Failed", channel, tgt);
  }
  goto ldv_39135;
  case_5:
  {
  seq_printf(m, "Channel:%2d Id:%2d State: Rebuild", channel, tgt);
  }
  goto ldv_39135;
  case_6:
  {
  seq_printf(m, "Channel:%2d Id:%2d State: Hot spare", channel, tgt);
  }
  goto ldv_39135;
  switch_default:
  {
  seq_printf(m, "Channel:%2d Id:%2d State: Un-configured", channel, tgt);
  }
  goto ldv_39135;
  switch_break: ;
  }
  ldv_39135:
  {
  memset((void *)scsi_inq, 0, 256UL);
  tmp___3 = mega_internal_dev_inquiry(adapter, (int )((u8 )channel), (int )((u8 )tgt),
                                      scsi_inq_dma_handle);
  }
  if (tmp___3 != 0 || ((int )*scsi_inq & 31) != 0) {
    goto ldv_39140;
  } else {
  }
  {
  seq_puts(m, ".\n");
  mega_print_inquiry(m, scsi_inq);
  }
  ldv_39140:
  tgt = tgt + 1;
  ldv_39142: ;
  if (tgt <= 15) {
    goto ldv_39141;
  } else {
  }
  free_pci:
  {
  pci_free_consistent(pdev, 256UL, (void *)scsi_inq, scsi_inq_dma_handle);
  }
  free_inquiry:
  {
  mega_free_inquiry((void *)inquiry, dma_handle, pdev);
  }
  free_pdev:
  {
  free_local_pdev(pdev);
  }
  return (0);
}
}
static int proc_show_pdrv_ch0(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_pdrv(m, (adapter_t *)m->private, 0);
  }
  return (tmp);
}
}
static int proc_show_pdrv_ch1(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_pdrv(m, (adapter_t *)m->private, 1);
  }
  return (tmp);
}
}
static int proc_show_pdrv_ch2(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_pdrv(m, (adapter_t *)m->private, 2);
  }
  return (tmp);
}
}
static int proc_show_pdrv_ch3(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_pdrv(m, (adapter_t *)m->private, 3);
  }
  return (tmp);
}
}
static int proc_show_rdrv(struct seq_file *m , adapter_t *adapter , int start , int end )
{
  dma_addr_t dma_handle ;
  logdrv_param *lparam ;
  megacmd_t mc ;
  char *disk_array ;
  dma_addr_t disk_array_dma_handle ;
  caddr_t inquiry ;
  struct pci_dev *pdev ;
  u8 *rdrv_state ;
  int num_ldrv ;
  u32 array_sz ;
  int i ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = make_local_pdev(adapter, & pdev);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = mega_allocate_inquiry(& dma_handle, pdev);
  inquiry = (caddr_t )tmp___0;
  }
  if ((unsigned long )inquiry == (unsigned long )((caddr_t )0)) {
    goto free_pdev;
  } else {
  }
  {
  tmp___1 = mega_adapinq(adapter, dma_handle);
  }
  if (tmp___1 != 0) {
    {
    seq_puts(m, "Adapter inquiry failed.\n");
    printk("\fmegaraid: inquiry failed.\n");
    }
    goto free_inquiry;
  } else {
  }
  {
  memset((void *)(& mc), 0, 18UL);
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    array_sz = 23964U;
    rdrv_state = (u8 *)(& ((mega_inquiry3 *)inquiry)->ldrv_state);
    num_ldrv = (int )((mega_inquiry3 *)inquiry)->num_ldrv;
  } else {
    array_sz = 2204U;
    rdrv_state = (u8 *)(& ((mraid_ext_inquiry *)inquiry)->raid_inq.logdrv_info.ldrv_state);
    num_ldrv = (int )((mraid_ext_inquiry *)inquiry)->raid_inq.logdrv_info.num_ldrv;
  }
  {
  tmp___2 = pci_alloc_consistent(pdev, (size_t )array_sz, & disk_array_dma_handle);
  disk_array = (char *)tmp___2;
  }
  if ((unsigned long )disk_array == (unsigned long )((char *)0)) {
    {
    seq_puts(m, "memory not available.\n");
    }
    goto free_inquiry;
  } else {
  }
  mc.xferaddr = (unsigned int )disk_array_dma_handle;
  if (((long )adapter->flag & 134217728L) != 0L) {
    {
    mc.cmd = 161U;
    mc.opcode = 4U;
    tmp___3 = mega_internal_command(adapter, & mc, (mega_passthru *)0);
    }
    if (tmp___3 != 0) {
      {
      seq_puts(m, "40LD read config failed.\n");
      }
      goto free_pci;
    } else {
    }
  } else {
    {
    mc.cmd = 103U;
    tmp___5 = mega_internal_command(adapter, & mc, (mega_passthru *)0);
    }
    if (tmp___5 != 0) {
      {
      mc.cmd = 7U;
      tmp___4 = mega_internal_command(adapter, & mc, (mega_passthru *)0);
      }
      if (tmp___4 != 0) {
        {
        seq_puts(m, "8LD read config failed.\n");
        }
        goto free_pci;
      } else {
      }
    } else {
    }
  }
  i = start;
  goto ldv_39197;
  ldv_39196: ;
  if (((long )adapter->flag & 134217728L) != 0L) {
    lparam = & ((disk_array_40ld *)disk_array)->ldrv[i].lparam;
  } else {
    lparam = & ((disk_array_8ld *)disk_array)->ldrv[i].lparam;
  }
  {
  seq_printf(m, "Logical drive:%2d:, ", i);
  }
  {
  if (((int )*(rdrv_state + (unsigned long )i) & 15) == 0) {
    goto case_0;
  } else {
  }
  if (((int )*(rdrv_state + (unsigned long )i) & 15) == 1) {
    goto case_1;
  } else {
  }
  if (((int )*(rdrv_state + (unsigned long )i) & 15) == 2) {
    goto case_2;
  } else {
  }
  if (((int )*(rdrv_state + (unsigned long )i) & 15) == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  {
  seq_puts(m, "state: offline");
  }
  goto ldv_39181;
  case_1:
  {
  seq_puts(m, "state: degraded");
  }
  goto ldv_39181;
  case_2:
  {
  seq_puts(m, "state: optimal");
  }
  goto ldv_39181;
  case_3:
  {
  seq_puts(m, "state: deleted");
  }
  goto ldv_39181;
  switch_default:
  {
  seq_puts(m, "state: unknown");
  }
  goto ldv_39181;
  switch_break: ;
  }
  ldv_39181: ;
  if (((int )*(rdrv_state + (unsigned long )i) & 240) == 32) {
    {
    seq_puts(m, ", check-consistency in progress");
    }
  } else
  if (((int )*(rdrv_state + (unsigned long )i) & 240) == 16) {
    {
    seq_puts(m, ", initialization in progress");
    }
  } else {
  }
  {
  seq_putc(m, 10);
  seq_printf(m, "Span depth:%3d, ", (int )lparam->span_depth);
  seq_printf(m, "RAID level:%3d, ", (int )lparam->level);
  seq_printf(m, "Stripe size:%3d, ", (unsigned int )lparam->stripe_sz != 0U ? (int )((unsigned int )lparam->stripe_sz / 2U) : 128);
  seq_printf(m, "Row size:%3d\n", (int )lparam->row_size);
  seq_puts(m, "Read Policy: ");
  }
  {
  if ((int )lparam->read_ahead == 0) {
    goto case_0___0;
  } else {
  }
  if ((int )lparam->read_ahead == 1) {
    goto case_1___0;
  } else {
  }
  if ((int )lparam->read_ahead == 2) {
    goto case_2___0;
  } else {
  }
  goto switch_break___0;
  case_0___0:
  {
  seq_puts(m, "No read ahead, ");
  }
  goto ldv_39187;
  case_1___0:
  {
  seq_puts(m, "Read ahead, ");
  }
  goto ldv_39187;
  case_2___0:
  {
  seq_puts(m, "Adaptive, ");
  }
  goto ldv_39187;
  switch_break___0: ;
  }
  ldv_39187:
  {
  seq_puts(m, "Write Policy: ");
  }
  {
  if ((int )lparam->write_mode == 0) {
    goto case_0___1;
  } else {
  }
  if ((int )lparam->write_mode == 1) {
    goto case_1___1;
  } else {
  }
  goto switch_break___1;
  case_0___1:
  {
  seq_puts(m, "Write thru, ");
  }
  goto ldv_39191;
  case_1___1:
  {
  seq_puts(m, "Write back, ");
  }
  goto ldv_39191;
  switch_break___1: ;
  }
  ldv_39191:
  {
  seq_puts(m, "Cache Policy: ");
  }
  {
  if ((int )lparam->direct_io == 0) {
    goto case_0___2;
  } else {
  }
  if ((int )lparam->direct_io == 1) {
    goto case_1___2;
  } else {
  }
  goto switch_break___2;
  case_0___2:
  {
  seq_puts(m, "Cached IO\n\n");
  }
  goto ldv_39194;
  case_1___2:
  {
  seq_puts(m, "Direct IO\n\n");
  }
  goto ldv_39194;
  switch_break___2: ;
  }
  ldv_39194:
  i = i + 1;
  ldv_39197: ;
  if (i < (end + 1 < num_ldrv ? end + 1 : num_ldrv)) {
    goto ldv_39196;
  } else {
  }
  free_pci:
  {
  pci_free_consistent(pdev, (size_t )array_sz, (void *)disk_array, disk_array_dma_handle);
  }
  free_inquiry:
  {
  mega_free_inquiry((void *)inquiry, dma_handle, pdev);
  }
  free_pdev:
  {
  free_local_pdev(pdev);
  }
  return (0);
}
}
static int proc_show_rdrv_10(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_rdrv(m, (adapter_t *)m->private, 0, 9);
  }
  return (tmp);
}
}
static int proc_show_rdrv_20(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_rdrv(m, (adapter_t *)m->private, 10, 19);
  }
  return (tmp);
}
}
static int proc_show_rdrv_30(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_rdrv(m, (adapter_t *)m->private, 20, 29);
  }
  return (tmp);
}
}
static int proc_show_rdrv_40(struct seq_file *m , void *v )
{
  int tmp ;
  {
  {
  tmp = proc_show_rdrv(m, (adapter_t *)m->private, 30, 39);
  }
  return (tmp);
}
}
static int mega_proc_open(struct inode *inode , struct file *file )
{
  adapter_t *adapter ;
  void *tmp ;
  int (*show)(struct seq_file * , void * ) ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = proc_get_parent_data((struct inode const *)inode);
  adapter = (adapter_t *)tmp;
  tmp___0 = PDE_DATA((struct inode const *)inode);
  show = (int (*)(struct seq_file * , void * ))tmp___0;
  tmp___1 = single_open(file, show, (void *)adapter);
  }
  return (tmp___1);
}
}
static struct file_operations const mega_proc_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mega_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct mega_proc_file const mega_proc_files[14U] =
  { {"config", 1216U, & proc_show_config},
        {"stat", 1224U, & proc_show_stat},
        {"mailbox", 1232U, & proc_show_mbox},
        {"rebuild-rate", 1240U, & proc_show_rebuild_rate},
        {"battery-status", 1248U, & proc_show_battery},
        {"diskdrives-ch0", 1256U, & proc_show_pdrv_ch0},
        {"diskdrives-ch1", 1264U, & proc_show_pdrv_ch1},
        {"diskdrives-ch2", 1272U, & proc_show_pdrv_ch2},
        {"diskdrives-ch3", 1280U, & proc_show_pdrv_ch3},
        {"raiddrives-0-9", 1288U, & proc_show_rdrv_10},
        {"raiddrives-10-19", 1296U, & proc_show_rdrv_20},
        {"raiddrives-20-29", 1304U, & proc_show_rdrv_30},
        {"raiddrives-30-39", 1312U, & proc_show_rdrv_40},
        {(char const *)0, (unsigned short)0, 0}};
static void mega_create_proc_entry(int index , struct proc_dir_entry *parent )
{
  struct mega_proc_file const *f ;
  adapter_t *adapter ;
  struct proc_dir_entry *dir ;
  struct proc_dir_entry *de ;
  struct proc_dir_entry **ppde ;
  u8 string[16U] ;
  struct proc_dir_entry *tmp ;
  {
  {
  adapter = hba_soft_state[index];
  sprintf((char *)(& string), "hba%d", (adapter->host)->host_no);
  tmp = proc_mkdir_data((char const *)(& string), 0, parent, (void *)adapter);
  adapter->controller_proc_dir_entry = tmp;
  dir = tmp;
  }
  if ((unsigned long )dir == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    printk("\f\nmegaraid: proc_mkdir failed\n");
    }
    return;
  } else {
  }
  f = (struct mega_proc_file const *)(& mega_proc_files);
  goto ldv_39242;
  ldv_39241:
  {
  de = proc_create_data(f->name, 256, dir, & mega_proc_fops, (void *)f->show);
  }
  if ((unsigned long )de == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    printk("\f\nmegaraid: proc_create failed\n");
    }
    return;
  } else {
  }
  ppde = (struct proc_dir_entry **)adapter + (unsigned long )f->ptr_offset;
  *ppde = de;
  f = f + 1;
  ldv_39242: ;
  if ((unsigned long )f->name != (unsigned long )((char const * )0)) {
    goto ldv_39241;
  } else {
  }
  return;
}
}
static int megaraid_biosparam(struct scsi_device *sdev , struct block_device *bdev ,
                              sector_t capacity , int *geom )
{
  adapter_t *adapter ;
  unsigned char *bh ;
  int heads ;
  int sectors ;
  int cylinders ;
  int rval ;
  {
  adapter = (adapter_t *)(& (sdev->host)->hostdata);
  if ((adapter->mega_ch_class >> (int )sdev->channel) & 1) {
    heads = 64;
    sectors = 32;
    cylinders = (int )(capacity / (sector_t )(heads * sectors));
    if (capacity > 2097151UL) {
      heads = 255;
      sectors = 63;
      cylinders = (int )(capacity / (sector_t )(heads * sectors));
    } else {
    }
    *geom = heads;
    *(geom + 1UL) = sectors;
    *(geom + 2UL) = cylinders;
  } else {
    {
    bh = scsi_bios_ptable(bdev);
    }
    if ((unsigned long )bh != (unsigned long )((unsigned char *)0U)) {
      {
      rval = scsi_partsize(bh, capacity, (unsigned int *)geom + 2U, (unsigned int *)geom,
                           (unsigned int *)geom + 1U);
      kfree((void const *)bh);
      }
      if (rval != -1) {
        return (rval);
      } else {
      }
    } else {
    }
    {
    printk("\016megaraid: invalid partition on this disk on channel %d\n", sdev->channel);
    heads = 64;
    sectors = 32;
    cylinders = (int )(capacity / (sector_t )(heads * sectors));
    }
    if (capacity > 2097151UL) {
      heads = 255;
      sectors = 63;
      cylinders = (int )(capacity / (sector_t )(heads * sectors));
    } else {
    }
    *geom = heads;
    *(geom + 1UL) = sectors;
    *(geom + 2UL) = cylinders;
  }
  return (0);
}
}
static int mega_init_scb(adapter_t *adapter )
{
  scb_t *scb ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  i = 0;
  goto ldv_39262;
  ldv_39261:
  scb = adapter->scb_list + (unsigned long )i;
  scb->sgl64 = (mega_sgl64 *)0;
  scb->sgl = (mega_sglist *)0;
  scb->pthru = (mega_passthru *)0;
  scb->epthru = (mega_ext_passthru *)0;
  i = i + 1;
  ldv_39262: ;
  if (i < (int )adapter->max_cmds) {
    goto ldv_39261;
  } else {
  }
  i = 0;
  goto ldv_39265;
  ldv_39264:
  {
  scb = adapter->scb_list + (unsigned long )i;
  scb->idx = i;
  tmp = pci_alloc_consistent(adapter->dev, (unsigned long )adapter->sglen * 12UL,
                             & scb->sgl_dma_addr);
  scb->sgl64 = (mega_sgl64 *)tmp;
  scb->sgl = (mega_sglist *)scb->sgl64;
  }
  if ((unsigned long )scb->sgl == (unsigned long )((mega_sglist *)0)) {
    {
    printk("\fRAID: Can\'t allocate sglist.\n");
    mega_free_sgl(adapter);
    }
    return (-1);
  } else {
  }
  {
  tmp___0 = pci_alloc_consistent(adapter->dev, 60UL, & scb->pthru_dma_addr);
  scb->pthru = (mega_passthru *)tmp___0;
  }
  if ((unsigned long )scb->pthru == (unsigned long )((mega_passthru *)0)) {
    {
    printk("\fRAID: Can\'t allocate passthru.\n");
    mega_free_sgl(adapter);
    }
    return (-1);
  } else {
  }
  {
  tmp___1 = pci_alloc_consistent(adapter->dev, 68UL, & scb->epthru_dma_addr);
  scb->epthru = (mega_ext_passthru *)tmp___1;
  }
  if ((unsigned long )scb->epthru == (unsigned long )((mega_ext_passthru *)0)) {
    {
    printk("\fCan\'t allocate extended passthru.\n");
    mega_free_sgl(adapter);
    }
    return (-1);
  } else {
  }
  {
  scb->dma_type = 65535U;
  scb->state = 0U;
  scb->cmd = (Scsi_Cmnd *)0;
  list_add(& scb->list, & adapter->free_list);
  i = i + 1;
  }
  ldv_39265: ;
  if (i < (int )adapter->max_cmds) {
    goto ldv_39264;
  } else {
  }
  return (0);
}
}
static int megadev_open(struct inode *inode , struct file *filep )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = capable(21);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
  }
  return (0);
}
}
static int megadev_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  adapter_t *adapter ;
  nitioctl_t uioc ;
  int adapno ;
  int rval ;
  mega_passthru *upthru ;
  mega_passthru *pthru ;
  dma_addr_t pthru_dma_hndl ;
  void *data ;
  dma_addr_t data_dma_hndl ;
  megacmd_t mc ;
  megastat_t *ustats ;
  int num_ldrv ;
  u32 uxferaddr ;
  struct pci_dev *pdev ;
  int __ret_pu ;
  u32 __pu_val ;
  int __ret_pu___0 ;
  u32 __pu_val___0 ;
  unsigned long tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  unsigned long tmp___7 ;
  {
  data = (void *)0;
  uxferaddr = 0U;
  ustats = (megastat_t *)0;
  num_ldrv = 0;
  if (((cmd >> 8) & 255U) != 109U && cmd != 224U) {
    return (-22);
  } else {
  }
  {
  memset((void *)(& uioc), 0, 48UL);
  rval = mega_m_to_n((void *)arg, & uioc);
  }
  if (rval != 0) {
    return (rval);
  } else {
  }
  {
  if (uioc.opcode == 65536U) {
    goto case_65536;
  } else {
  }
  if (uioc.opcode == 131072U) {
    goto case_131072;
  } else {
  }
  if (uioc.opcode == 196608U) {
    goto case_196608;
  } else {
  }
  if (uioc.opcode == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default___1;
  case_65536:
  {
  might_fault();
  __pu_val = driver_ver;
  }
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
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39294;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39294;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39294;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39294;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39294;
  switch_break___0: ;
  }
  ldv_39294: ;
  if (__ret_pu != 0) {
    return (-14);
  } else {
  }
  goto ldv_39300;
  case_131072:
  {
  might_fault();
  __pu_val___0 = (u32 )hba_count;
  }
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
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
  case_1___0:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39305;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39305;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39305;
  case_8___0:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39305;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((u32 *)uioc.__ua.__uaddr): "ebx");
  goto ldv_39305;
  switch_break___1: ;
  }
  ldv_39305: ;
  if (__ret_pu___0 != 0) {
    return (-14);
  } else {
  }
  return (hba_count);
  case_196608:
  adapno = (int )(uioc.adapno ^ 27904U);
  if (adapno >= hba_count) {
    return (-19);
  } else {
  }
  {
  tmp = copy_to_user(uioc.__ua.__uaddr, (void const *)(& mcontroller) + (unsigned long )adapno,
                     32UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  goto ldv_39300;
  case_0:
  adapno = (int )(uioc.adapno ^ 27904U);
  if (adapno >= hba_count) {
    return (-19);
  } else {
  }
  adapter = hba_soft_state[adapno];
  if (*((unsigned int *)(& uioc) + 4UL) == 1835172U) {
    if (adapter->support_random_del == 0) {
      {
      printk("\fmegaraid: logdrv ");
      printk("delete on non-supporting F/W.\n");
      }
      return (-22);
    } else {
    }
    {
    rval = mega_del_logdrv(adapter, (int )uioc.__ua.__raw_mbox[3]);
    }
    if (rval == 0) {
      {
      memset((void *)(& mc), 0, 18UL);
      mc.status = (u8 )rval;
      rval = mega_n_to_m((void *)arg, & mc);
      }
    } else {
    }
    return (rval);
  } else {
  }
  if ((unsigned int )uioc.__ua.__raw_mbox[0] == 195U || (unsigned int )uioc.__ua.__raw_mbox[0] == 227U) {
    {
    printk("\fmegaraid: rejected passthru.\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___0 = make_local_pdev(adapter, & pdev);
  }
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  if ((unsigned int )uioc.__ua.__raw_mbox[0] == 3U) {
    {
    tmp___1 = pci_alloc_consistent(pdev, 60UL, & pthru_dma_hndl);
    pthru = (mega_passthru *)tmp___1;
    }
    if ((unsigned long )pthru == (unsigned long )((mega_passthru *)0)) {
      {
      free_local_pdev(pdev);
      }
      return (-12);
    } else {
    }
    {
    upthru = (mega_passthru *)((unsigned long )((megacmd_t *)(& uioc.__ua.__raw_mbox))->xferaddr);
    tmp___2 = copy_from_user((void *)pthru, (void const *)upthru, 60UL);
    }
    if (tmp___2 != 0UL) {
      {
      pci_free_consistent(pdev, 60UL, (void *)pthru, pthru_dma_hndl);
      free_local_pdev(pdev);
      }
      return (-14);
    } else {
    }
    if (pthru->dataxferlen != 0U) {
      {
      data = pci_alloc_consistent(pdev, (size_t )pthru->dataxferlen, & data_dma_hndl);
      }
      if ((unsigned long )data == (unsigned long )((void *)0)) {
        {
        pci_free_consistent(pdev, 60UL, (void *)pthru, pthru_dma_hndl);
        free_local_pdev(pdev);
        }
        return (-12);
      } else {
      }
      uxferaddr = pthru->dataxferaddr;
      pthru->dataxferaddr = (u32 )data_dma_hndl;
    } else {
    }
    if (pthru->dataxferlen != 0U && (uioc.flags & 2U) != 0U) {
      {
      tmp___3 = copy_from_user(data, (void const *)((unsigned long )uxferaddr),
                               (unsigned long )pthru->dataxferlen);
      }
      if (tmp___3 != 0UL) {
        rval = -14;
        goto freemem_and_return;
      } else {
      }
    } else {
    }
    {
    memset((void *)(& mc), 0, 18UL);
    mc.cmd = 3U;
    mc.xferaddr = (unsigned int )pthru_dma_hndl;
    mega_internal_command(adapter, & mc, pthru);
    rval = mega_n_to_m((void *)arg, & mc);
    }
    if (rval != 0) {
      goto freemem_and_return;
    } else {
    }
    if (pthru->dataxferlen != 0U && (int )uioc.flags & 1) {
      {
      tmp___4 = copy_to_user((void *)((unsigned long )uxferaddr), (void const *)data,
                             (unsigned long )pthru->dataxferlen);
      }
      if (tmp___4 != 0UL) {
        rval = -14;
      } else {
      }
    } else {
    }
    {
    tmp___5 = copy_to_user((void *)(& upthru->reqsensearea), (void const *)(& pthru->reqsensearea),
                           14UL);
    }
    if (tmp___5 != 0UL) {
      rval = -14;
    } else {
    }
    freemem_and_return: ;
    if (pthru->dataxferlen != 0U) {
      {
      pci_free_consistent(pdev, (size_t )pthru->dataxferlen, data, data_dma_hndl);
      }
    } else {
    }
    {
    pci_free_consistent(pdev, 60UL, (void *)pthru, pthru_dma_hndl);
    free_local_pdev(pdev);
    }
    return (rval);
  } else {
    if (uioc.xferlen != 0U) {
      {
      data = pci_alloc_consistent(pdev, (size_t )uioc.xferlen, & data_dma_hndl);
      }
      if ((unsigned long )data == (unsigned long )((void *)0)) {
        {
        free_local_pdev(pdev);
        }
        return (-12);
      } else {
      }
      uxferaddr = ((megacmd_t *)(& uioc.__ua.__raw_mbox))->xferaddr;
    } else {
    }
    if (uioc.xferlen != 0U && (uioc.flags & 2U) != 0U) {
      {
      tmp___6 = copy_from_user(data, (void const *)((unsigned long )uxferaddr),
                               (unsigned long )uioc.xferlen);
      }
      if (tmp___6 != 0UL) {
        {
        pci_free_consistent(pdev, (size_t )uioc.xferlen, data, data_dma_hndl);
        free_local_pdev(pdev);
        }
        return (-14);
      } else {
      }
    } else {
    }
    {
    memcpy((void *)(& mc), (void const *)(& uioc.__ua.__raw_mbox), 18UL);
    mc.xferaddr = (unsigned int )data_dma_hndl;
    mega_internal_command(adapter, & mc, (mega_passthru *)0);
    rval = mega_n_to_m((void *)arg, & mc);
    }
    if (rval != 0) {
      if (uioc.xferlen != 0U) {
        {
        pci_free_consistent(pdev, (size_t )uioc.xferlen, data, data_dma_hndl);
        }
      } else {
      }
      {
      free_local_pdev(pdev);
      }
      return (rval);
    } else {
    }
    if (uioc.xferlen != 0U && (int )uioc.flags & 1) {
      {
      tmp___7 = copy_to_user((void *)((unsigned long )uxferaddr), (void const *)data,
                             (unsigned long )uioc.xferlen);
      }
      if (tmp___7 != 0UL) {
        rval = -14;
      } else {
      }
    } else {
    }
    if (uioc.xferlen != 0U) {
      {
      pci_free_consistent(pdev, (size_t )uioc.xferlen, data, data_dma_hndl);
      }
    } else {
    }
    {
    free_local_pdev(pdev);
    }
    return (rval);
  }
  switch_default___1: ;
  return (-22);
  switch_break: ;
  }
  ldv_39300: ;
  return (0);
}
}
static long megadev_unlocked_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  int ret ;
  {
  {
  ldv_mutex_lock_106(& megadev_mutex);
  ret = megadev_ioctl(filep, cmd, arg);
  ldv_mutex_unlock_107(& megadev_mutex);
  }
  return ((long )ret);
}
}
static int mega_m_to_n(void *arg , nitioctl_t *uioc )
{
  struct uioctl_t uioc_mimd ;
  char signature[8U] ;
  unsigned int tmp ;
  u8 opcode ;
  u8 subopcode ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  {
  signature[0] = 0;
  tmp = 1U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 8U) {
      goto while_break;
    } else {
    }
    signature[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  tmp___0 = copy_from_user((void *)(& signature), (void const *)arg, 7UL);
  }
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___1 = memcmp((void const *)(& signature), (void const *)"MEGANIT", 7UL);
  }
  if (tmp___1 == 0) {
    return (-22);
  } else {
  }
  {
  tmp___2 = copy_from_user((void *)(& uioc_mimd), (void const *)arg, 110UL);
  }
  if (tmp___2 != 0UL) {
    return (-14);
  } else {
  }
  opcode = uioc_mimd.ui.fcs.opcode;
  subopcode = uioc_mimd.ui.fcs.subopcode;
  {
  if ((int )opcode == 130) {
    goto case_130;
  } else {
  }
  if ((int )opcode == 129) {
    goto case_129;
  } else {
  }
  if ((int )opcode == 128) {
    goto case_128;
  } else {
  }
  goto switch_default___0;
  case_130: ;
  {
  if ((int )subopcode == 101) {
    goto case_101;
  } else {
  }
  if ((int )subopcode == 109) {
    goto case_109;
  } else {
  }
  if ((int )subopcode == 103) {
    goto case_103;
  } else {
  }
  goto switch_default;
  case_101:
  uioc->opcode = 65536U;
  uioc->__ua.__uaddr = (void *)uioc_mimd.data;
  goto ldv_39331;
  case_109:
  uioc->opcode = 131072U;
  uioc->__ua.__uaddr = (void *)uioc_mimd.data;
  goto ldv_39331;
  case_103:
  uioc->opcode = 196608U;
  uioc->adapno = (u32 )uioc_mimd.ui.fcs.adapno;
  uioc->__ua.__uaddr = (void *)uioc_mimd.data;
  goto ldv_39331;
  switch_default: ;
  return (-22);
  switch_break___0: ;
  }
  ldv_39331: ;
  goto ldv_39335;
  case_129:
  {
  uioc->opcode = 0U;
  uioc->adapno = (u32 )uioc_mimd.ui.fcs.adapno;
  memcpy((void *)(& uioc->__ua.__raw_mbox), (void const *)(& uioc_mimd.mbox),
           18UL);
  uioc->xferlen = uioc_mimd.ui.fcs.length;
  }
  if (uioc_mimd.outlen != 0U) {
    uioc->flags = 1U;
  } else {
  }
  if (uioc_mimd.inlen != 0U) {
    uioc->flags = uioc->flags | 2U;
  } else {
  }
  goto ldv_39335;
  case_128:
  {
  uioc->opcode = 0U;
  uioc->adapno = (u32 )uioc_mimd.ui.fcs.adapno;
  memcpy((void *)(& uioc->__ua.__raw_mbox), (void const *)(& uioc_mimd.mbox),
           18UL);
  uioc->xferlen = uioc_mimd.outlen > uioc_mimd.inlen ? uioc_mimd.outlen : uioc_mimd.inlen;
  }
  if (uioc_mimd.outlen != 0U) {
    uioc->flags = 1U;
  } else {
  }
  if (uioc_mimd.inlen != 0U) {
    uioc->flags = uioc->flags | 2U;
  } else {
  }
  goto ldv_39335;
  switch_default___0: ;
  return (-22);
  switch_break: ;
  }
  ldv_39335: ;
  return (0);
}
}
static int mega_n_to_m(void *arg , megacmd_t *mc )
{
  nitioctl_t *uiocp ;
  megacmd_t *umc ;
  mega_passthru *upthru ;
  struct uioctl_t *uioc_mimd ;
  char signature[8U] ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  int __ret_pu ;
  u8 __pu_val ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu___0 ;
  u8 __pu_val___0 ;
  int __ret_pu___1 ;
  u8 __pu_val___1 ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int __ret_pu___2 ;
  u8 __pu_val___2 ;
  int tmp___1 ;
  {
  signature[0] = 0;
  tmp = 1U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 8U) {
      goto while_break;
    } else {
    }
    signature[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  tmp___0 = copy_from_user((void *)(& signature), (void const *)arg, 7UL);
  }
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___1 = memcmp((void const *)(& signature), (void const *)"MEGANIT", 7UL);
  }
  if (tmp___1 == 0) {
    {
    uiocp = (nitioctl_t *)arg;
    might_fault();
    __pu_val = mc->status;
    }
    {
    if (1UL == 1UL) {
      goto case_1;
    } else {
    }
    if (1UL == 2UL) {
      goto case_2;
    } else {
    }
    if (1UL == 4UL) {
      goto case_4;
    } else {
    }
    if (1UL == 8UL) {
      goto case_8;
    } else {
    }
    goto switch_default;
    case_1:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& ((megacmd_t *)(& uiocp->__ua.__raw_mbox))->status): "ebx");
    goto ldv_39351;
    case_2:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& ((megacmd_t *)(& uiocp->__ua.__raw_mbox))->status): "ebx");
    goto ldv_39351;
    case_4:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& ((megacmd_t *)(& uiocp->__ua.__raw_mbox))->status): "ebx");
    goto ldv_39351;
    case_8:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& ((megacmd_t *)(& uiocp->__ua.__raw_mbox))->status): "ebx");
    goto ldv_39351;
    switch_default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& ((megacmd_t *)(& uiocp->__ua.__raw_mbox))->status): "ebx");
    goto ldv_39351;
    switch_break: ;
    }
    ldv_39351: ;
    if (__ret_pu != 0) {
      return (-14);
    } else {
    }
    if ((unsigned int )mc->cmd == 3U) {
      {
      umc = (megacmd_t *)(& uiocp->__ua.__raw_mbox);
      might_fault();
      __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((mega_passthru **)(& umc->xferaddr)),
                           "i" (8UL));
      upthru = (mega_passthru *)__val_gu;
      }
      if (__ret_gu != 0) {
        return (-14);
      } else {
      }
      {
      might_fault();
      __pu_val___0 = mc->status;
      }
      {
      if (1UL == 1UL) {
        goto case_1___0;
      } else {
      }
      if (1UL == 2UL) {
        goto case_2___0;
      } else {
      }
      if (1UL == 4UL) {
        goto case_4___0;
      } else {
      }
      if (1UL == 8UL) {
        goto case_8___0;
      } else {
      }
      goto switch_default___0;
      case_1___0:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39363;
      case_2___0:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39363;
      case_4___0:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39363;
      case_8___0:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39363;
      switch_default___0:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39363;
      switch_break___0: ;
      }
      ldv_39363: ;
      if (__ret_pu___0 != 0) {
        return (-14);
      } else {
      }
    } else {
    }
  } else {
    {
    uioc_mimd = (struct uioctl_t *)arg;
    might_fault();
    __pu_val___1 = mc->status;
    }
    {
    if (1UL == 1UL) {
      goto case_1___1;
    } else {
    }
    if (1UL == 2UL) {
      goto case_2___1;
    } else {
    }
    if (1UL == 4UL) {
      goto case_4___1;
    } else {
    }
    if (1UL == 8UL) {
      goto case_8___1;
    } else {
    }
    goto switch_default___1;
    case_1___1:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                         "c" ((u8 *)(& uioc_mimd->mbox) + 17UL): "ebx");
    goto ldv_39372;
    case_2___1:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                         "c" ((u8 *)(& uioc_mimd->mbox) + 17UL): "ebx");
    goto ldv_39372;
    case_4___1:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                         "c" ((u8 *)(& uioc_mimd->mbox) + 17UL): "ebx");
    goto ldv_39372;
    case_8___1:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                         "c" ((u8 *)(& uioc_mimd->mbox) + 17UL): "ebx");
    goto ldv_39372;
    switch_default___1:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                         "c" ((u8 *)(& uioc_mimd->mbox) + 17UL): "ebx");
    goto ldv_39372;
    switch_break___1: ;
    }
    ldv_39372: ;
    if (__ret_pu___1 != 0) {
      return (-14);
    } else {
    }
    if ((unsigned int )mc->cmd == 3U) {
      {
      umc = (megacmd_t *)(& uioc_mimd->mbox);
      might_fault();
      __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" ((mega_passthru **)(& umc->xferaddr)),
                           "i" (8UL));
      upthru = (mega_passthru *)__val_gu___0;
      }
      if (__ret_gu___0 != 0) {
        return (-14);
      } else {
      }
      {
      might_fault();
      __pu_val___2 = mc->status;
      }
      {
      if (1UL == 1UL) {
        goto case_1___2;
      } else {
      }
      if (1UL == 2UL) {
        goto case_2___2;
      } else {
      }
      if (1UL == 4UL) {
        goto case_4___2;
      } else {
      }
      if (1UL == 8UL) {
        goto case_8___2;
      } else {
      }
      goto switch_default___2;
      case_1___2:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___2): "0" (__pu_val___2),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39384;
      case_2___2:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___2): "0" (__pu_val___2),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39384;
      case_4___2:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___2): "0" (__pu_val___2),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39384;
      case_8___2:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___2): "0" (__pu_val___2),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39384;
      switch_default___2:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___2): "0" (__pu_val___2),
                           "c" (& upthru->scsistatus): "ebx");
      goto ldv_39384;
      switch_break___2: ;
      }
      ldv_39384: ;
      if (__ret_pu___2 != 0) {
        return (-14);
      } else {
      }
    } else {
    }
  }
  return (0);
}
}
static int mega_is_bios_enabled(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int ret ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  raw_mbox[0] = 98U;
  raw_mbox[2] = 1U;
  ret = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  return ((int )*((char *)adapter->mega_buffer));
}
}
static void mega_enum_raid_scsi(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int i ;
  int tmp ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 169U;
  raw_mbox[2] = 0U;
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  adapter->mega_ch_class = 255;
  tmp = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  if (tmp == 0) {
    adapter->mega_ch_class = (int )*((char *)adapter->mega_buffer);
  } else {
  }
  i = 0;
  goto ldv_39403;
  ldv_39402: ;
  if ((adapter->mega_ch_class >> i) & 1) {
    {
    printk("\016megaraid: channel[%d] is raid.\n", i);
    }
  } else {
    {
    printk("\016megaraid: channel[%d] is scsi.\n", i);
    }
  }
  i = i + 1;
  ldv_39403: ;
  if (i < (int )adapter->product_info.nchannels) {
    goto ldv_39402;
  } else {
  }
  return;
}
}
static void mega_get_boot_drv(adapter_t *adapter )
{
  struct private_bios_data *prv_bios_data ;
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  u16 cksum ;
  u8 *cksum_p ;
  u8 boot_pdrv ;
  int i ;
  u8 *tmp ;
  int tmp___0 ;
  {
  {
  cksum = 0U;
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 64U;
  raw_mbox[2] = 0U;
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  adapter->boot_ldrv_enabled = 0;
  adapter->boot_ldrv = 0;
  adapter->boot_pdrv_enabled = 0;
  adapter->boot_pdrv_ch = 0;
  adapter->boot_pdrv_tgt = 0;
  tmp___0 = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  if (tmp___0 == 0) {
    prv_bios_data = (struct private_bios_data *)adapter->mega_buffer;
    cksum = 0U;
    cksum_p = (u8 *)prv_bios_data;
    i = 0;
    goto ldv_39416;
    ldv_39415:
    tmp = cksum_p;
    cksum_p = cksum_p + 1;
    cksum = (int )cksum + (int )((u16 )*tmp);
    i = i + 1;
    ldv_39416: ;
    if (i <= 13) {
      goto ldv_39415;
    } else {
    }
    if ((int )prv_bios_data->cksum == (int )((unsigned short )(- ((int )cksum)))) {
      if ((int )((signed char )prv_bios_data->boot_drv) < 0) {
        adapter->boot_pdrv_enabled = 1;
        boot_pdrv = (unsigned int )prv_bios_data->boot_drv & 127U;
        adapter->boot_pdrv_ch = (int )((unsigned int )boot_pdrv / 16U);
        adapter->boot_pdrv_tgt = (int )boot_pdrv & 15;
      } else {
        adapter->boot_ldrv_enabled = 1;
        adapter->boot_ldrv = (int )prv_bios_data->boot_drv;
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int mega_support_random_del(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int rval ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 164U;
  raw_mbox[2] = 42U;
  rval = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  return (rval == 0);
}
}
static int mega_support_ext_cdb(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int rval ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 164U;
  raw_mbox[2] = 22U;
  rval = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  return (rval == 0);
}
}
static int mega_del_logdrv(adapter_t *adapter , int logdrv )
{
  unsigned long flags ;
  scb_t *scb ;
  int rval ;
  int tmp ;
  int tmp___0 ;
  struct list_head *pos ;
  struct list_head const *__mptr ;
  {
  {
  atomic_set(& adapter->quiescent, 1);
  }
  goto ldv_39438;
  ldv_39437:
  {
  msleep(1000U);
  }
  ldv_39438:
  {
  tmp = atomic_read((atomic_t const *)(& adapter->pend_cmds));
  }
  if (tmp > 0) {
    goto ldv_39437;
  } else {
    {
    tmp___0 = list_empty((struct list_head const *)(& adapter->pending_list));
    }
    if (tmp___0 == 0) {
      goto ldv_39437;
    } else {
      goto ldv_39439;
    }
  }
  ldv_39439:
  {
  rval = mega_do_del_logdrv(adapter, logdrv);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(& adapter->lock);
  }
  if (adapter->read_ldidmap != 0) {
    pos = adapter->pending_list.next;
    goto ldv_39444;
    ldv_39443:
    __mptr = (struct list_head const *)pos;
    scb = (scb_t *)__mptr + 0xfffffffffffffff8UL;
    if ((int )((signed char )(scb->pthru)->logdrv) >= 0) {
      (scb->pthru)->logdrv = (unsigned int )(scb->pthru)->logdrv + 128U;
    } else {
    }
    pos = pos->next;
    ldv_39444: ;
    if ((unsigned long )pos != (unsigned long )(& adapter->pending_list)) {
      goto ldv_39443;
    } else {
    }
  } else {
  }
  {
  atomic_set(& adapter->quiescent, 0);
  mega_runpendq(adapter);
  ldv_spin_unlock_irqrestore_97(& adapter->lock, flags);
  }
  return (rval);
}
}
static int mega_do_del_logdrv(adapter_t *adapter , int logdrv )
{
  megacmd_t mc ;
  int rval ;
  {
  {
  memset((void *)(& mc), 0, 18UL);
  mc.cmd = 164U;
  mc.opcode = 28U;
  mc.subopcode = (u8 )logdrv;
  rval = mega_internal_command(adapter, & mc, (mega_passthru *)0);
  }
  if (rval != 0) {
    {
    printk("\fmegaraid: Delete LD-%d failed.", logdrv);
    }
    return (rval);
  } else {
  }
  adapter->read_ldidmap = 1;
  return (rval);
}
}
static void mega_get_max_sgl(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int tmp ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)mbox, 0, 15UL);
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  raw_mbox[0] = 164U;
  raw_mbox[2] = 1U;
  tmp = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  if (tmp != 0) {
    adapter->sglen = 26U;
  } else {
    adapter->sglen = (u8 )*((char *)adapter->mega_buffer);
    if ((unsigned int )adapter->sglen > 64U) {
      adapter->sglen = 64U;
    } else {
    }
  }
  return;
}
}
static int mega_support_cluster(adapter_t *adapter )
{
  unsigned char raw_mbox[15U] ;
  mbox_t *mbox ;
  int tmp ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)mbox, 0, 15UL);
  memset((void *)adapter->mega_buffer, 0, 2048UL);
  mbox->m_out.xferaddr = (unsigned int )adapter->buf_dma_handle;
  raw_mbox[0] = 125U;
  tmp = issue_scb_block(adapter, (u_char *)(& raw_mbox));
  }
  if (tmp == 0) {
    adapter->this_id = (int )*((u32 *)adapter->mega_buffer);
    (adapter->host)->this_id = adapter->this_id;
    return (1);
  } else {
  }
  return (0);
}
}
static int mega_adapinq(adapter_t *adapter , dma_addr_t dma_handle )
{
  megacmd_t mc ;
  int tmp ;
  {
  {
  memset((void *)(& mc), 0, 18UL);
  }
  if (((long )adapter->flag & 134217728L) != 0L) {
    mc.cmd = 161U;
    mc.opcode = 15U;
    mc.subopcode = 2U;
  } else {
    mc.cmd = 4U;
  }
  {
  mc.xferaddr = (unsigned int )dma_handle;
  tmp = mega_internal_command(adapter, & mc, (mega_passthru *)0);
  }
  if (tmp != 0) {
    return (-1);
  } else {
  }
  return (0);
}
}
static int mega_internal_dev_inquiry(adapter_t *adapter , u8 ch , u8 tgt , dma_addr_t buf_dma_handle )
{
  mega_passthru *pthru ;
  dma_addr_t pthru_dma_handle ;
  megacmd_t mc ;
  int rval ;
  struct pci_dev *pdev ;
  int tmp ;
  void *tmp___0 ;
  {
  {
  tmp = make_local_pdev(adapter, & pdev);
  }
  if (tmp != 0) {
    return (-1);
  } else {
  }
  {
  tmp___0 = pci_alloc_consistent(pdev, 60UL, & pthru_dma_handle);
  pthru = (mega_passthru *)tmp___0;
  }
  if ((unsigned long )pthru == (unsigned long )((mega_passthru *)0)) {
    {
    free_local_pdev(pdev);
    }
    return (-1);
  } else {
  }
  {
  pthru->timeout = 2U;
  pthru->ars = 1U;
  pthru->reqsenselen = 14U;
  pthru->islogical = 0U;
  pthru->channel = ((long )adapter->flag & 134217728L) == 0L ? ch : 0U;
  pthru->target = ((long )adapter->flag & 134217728L) != 0L ? (u8 )((int )((signed char )((int )ch << 4)) | (int )((signed char )tgt)) : tgt;
  pthru->cdblen = 6U;
  pthru->cdb[0] = 18U;
  pthru->cdb[1] = 0U;
  pthru->cdb[2] = 0U;
  pthru->cdb[3] = 0U;
  pthru->cdb[4] = 255U;
  pthru->cdb[5] = 0U;
  pthru->dataxferaddr = (unsigned int )buf_dma_handle;
  pthru->dataxferlen = 256U;
  memset((void *)(& mc), 0, 18UL);
  mc.cmd = 3U;
  mc.xferaddr = (unsigned int )pthru_dma_handle;
  rval = mega_internal_command(adapter, & mc, pthru);
  pci_free_consistent(pdev, 60UL, (void *)pthru, pthru_dma_handle);
  free_local_pdev(pdev);
  }
  return (rval);
}
}
static int mega_internal_command(adapter_t *adapter , megacmd_t *mc , mega_passthru *pthru )
{
  unsigned long flags ;
  scb_t *scb ;
  int rval ;
  int tmp ;
  {
  {
  ldv_mutex_lock_110(& adapter->int_mtx);
  scb = & adapter->int_scb;
  memset((void *)scb, 0, 184UL);
  scb->idx = 127;
  scb->state = scb->state | 3U;
  memcpy((void *)(& scb->raw_mbox), (void const *)mc, 18UL);
  }
  if ((unsigned int )mc->cmd == 3U) {
    scb->pthru = pthru;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(& adapter->lock);
  list_add_tail(& scb->list, & adapter->pending_list);
  tmp = atomic_read((atomic_t const *)(& adapter->quiescent));
  }
  if (tmp == 0) {
    {
    mega_runpendq(adapter);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& adapter->lock, flags);
  ldv_wait_for_completion_113(& adapter->int_waitq);
  rval = adapter->int_status;
  mc->status = (u8 )rval;
  }
  if (rval != 0 && trace_level != 0) {
    {
    printk("megaraid: cmd [%x, %x, %x] status:[%x]\n", (int )mc->cmd, (int )mc->opcode,
           (int )mc->subopcode, rval);
    }
  } else {
  }
  {
  ldv_mutex_unlock_114(& adapter->int_mtx);
  }
  return (rval);
}
}
static struct scsi_host_template megaraid_template =
     {& __this_module, "MegaRAID", 0, 0, & megaraid_info, 0, 0, & megaraid_queue, & megaraid_abort,
    & megaraid_reset, 0, & megaraid_reset, & megaraid_reset, 0, 0, 0, 0, 0, 0, 0,
    0, & megaraid_biosparam, 0, 0, 0, 0, 0, "megaraid_legacy", 0, 126, 7, 64U, (unsigned short)0,
    128U, 0UL, 63, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
    0U, 0, 0, {0, 0}, 0ULL, 0U, 0, (_Bool)0};
static int megaraid_probe_one(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct Scsi_Host *host ;
  adapter_t *adapter ;
  unsigned long mega_baseport ;
  unsigned long tbase ;
  unsigned long flag ;
  u16 subsysid ;
  u16 subsysvid ;
  u8 pci_bus ;
  u8 pci_dev_func ;
  int irq ;
  int i ;
  int j ;
  int error ;
  int tmp ;
  u16 magic ;
  u32 magic64 ;
  struct resource *tmp___0 ;
  void *tmp___1 ;
  struct resource *tmp___2 ;
  struct lock_class_key __key ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  struct lock_class_key __key___0 ;
  {
  {
  flag = 0UL;
  error = -19;
  tmp = pci_enable_device(pdev);
  }
  if (tmp != 0) {
    goto out;
  } else {
  }
  {
  pci_set_master(pdev);
  pci_bus = (pdev->bus)->number;
  pci_dev_func = (u8 )pdev->devfn;
  }
  if ((unsigned int )pdev->vendor == 32902U) {
    if (*((unsigned int *)pdev + 16UL) == 3221229073U) {
      return (-19);
    } else {
    }
    {
    pci_read_config_word((struct pci_dev const *)pdev, 160, & magic);
    }
    if ((unsigned int )magic != 52428U && (unsigned int )magic != 13124U) {
      return (-19);
    } else {
    }
  } else {
  }
  if (((unsigned long )id->driver_data & 67108864UL) != 0UL) {
    flag = flag | 67108864UL;
  } else {
    {
    pci_read_config_dword((struct pci_dev const *)pdev, 164, & magic64);
    }
    if (magic64 == 665U) {
      flag = flag | 67108864UL;
    } else {
    }
  }
  {
  subsysvid = pdev->subsystem_vendor;
  subsysid = pdev->subsystem_device;
  printk("\rmegaraid: found 0x%4.04x:0x%4.04x:bus %d:", id->vendor, id->device, (int )pci_bus);
  printk("slot %d:func %d\n", ((int )pci_dev_func >> 3) & 31, (int )pci_dev_func & 7);
  mega_baseport = (unsigned long )pdev->resource[0].start;
  irq = (int )pdev->irq;
  tbase = mega_baseport;
  }
  if ((pdev->resource[0].flags & 512UL) != 0UL) {
    {
    flag = flag | 536870912UL;
    tmp___0 = __request_region(& iomem_resource, (resource_size_t )mega_baseport,
                               128ULL, "megaraid", 0);
    }
    if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
      {
      printk("\fmegaraid: mem region busy!\n");
      }
      goto out_disable_device;
    } else {
    }
    {
    tmp___1 = ioremap((resource_size_t )mega_baseport, 128UL);
    mega_baseport = (unsigned long )tmp___1;
    }
    if (mega_baseport == 0UL) {
      {
      printk("\fmegaraid: could not map hba memory\n");
      }
      goto out_release_region;
    } else {
    }
  } else {
    {
    flag = flag | 268435456UL;
    mega_baseport = mega_baseport + 16UL;
    tmp___2 = __request_region(& ioport_resource, (resource_size_t )mega_baseport,
                               16ULL, "megaraid", 0);
    }
    if ((unsigned long )tmp___2 == (unsigned long )((struct resource *)0)) {
      goto out_disable_device;
    } else {
    }
  }
  {
  host = ldv_scsi_host_alloc_115(& megaraid_template, 1912);
  }
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    goto out_iounmap;
  } else {
  }
  {
  adapter = (adapter_t *)(& host->hostdata);
  memset((void *)adapter, 0, 1912UL);
  printk("\rscsi%d:Found MegaRAID controller at 0x%lx, IRQ:%d\n", host->host_no, mega_baseport,
         irq);
  adapter->base = mega_baseport;
  }
  if ((flag & 536870912UL) != 0UL) {
    adapter->mmio_base = (void *)mega_baseport;
  } else {
  }
  {
  INIT_LIST_HEAD(& adapter->free_list);
  INIT_LIST_HEAD(& adapter->pending_list);
  INIT_LIST_HEAD(& adapter->completed_list);
  adapter->flag = (u32 )flag;
  spinlock_check(& adapter->lock);
  __raw_spin_lock_init(& adapter->lock.__annonCompField18.rlock, "&(&adapter->lock)->rlock",
                       & __key);
  host->cmd_per_lun = (short )max_cmd_per_lun;
  host->max_sectors = (unsigned int )max_sectors_per_io;
  adapter->dev = pdev;
  adapter->host = host;
  (adapter->host)->irq = (unsigned int )irq;
  }
  if ((flag & 536870912UL) != 0UL) {
    (adapter->host)->base = tbase;
  } else {
    (adapter->host)->io_port = tbase;
    (adapter->host)->n_io_port = 16U;
  }
  {
  (adapter->host)->unique_id = (unsigned int )(((int )pci_bus << 8) | (int )pci_dev_func);
  tmp___3 = pci_alloc_consistent(adapter->dev, 2048UL, & adapter->buf_dma_handle);
  adapter->mega_buffer = (u8 *)tmp___3;
  }
  if ((unsigned long )adapter->mega_buffer == (unsigned long )((u8 *)0U)) {
    {
    printk("\fmegaraid: out of RAM.\n");
    }
    goto out_host_put;
  } else {
  }
  {
  tmp___4 = kmalloc(23184UL, 208U);
  adapter->scb_list = (scb_t *)tmp___4;
  }
  if ((unsigned long )adapter->scb_list == (unsigned long )((scb_t *)0)) {
    {
    printk("\fmegaraid: out of RAM.\n");
    }
    goto out_free_cmd_buffer;
  } else {
  }
  {
  tmp___5 = ldv_request_irq_116((unsigned int )irq, ((long )adapter->flag & 536870912L) != 0L ? & megaraid_isr_memmapped : & megaraid_isr_iomapped,
                                128UL, "megaraid", (void *)adapter);
  }
  if (tmp___5 != 0) {
    {
    printk("\fmegaraid: Couldn\'t register IRQ %d!\n", irq);
    }
    goto out_free_scb_list;
  } else {
  }
  {
  tmp___6 = mega_setup_mailbox(adapter);
  }
  if (tmp___6 != 0) {
    goto out_free_irq;
  } else {
  }
  {
  tmp___7 = mega_query_adapter(adapter);
  }
  if (tmp___7 != 0) {
    goto out_free_mbox;
  } else {
  }
  if ((unsigned int )subsysid == 4369U && (unsigned int )subsysvid == 4369U) {
    {
    tmp___8 = strcmp((char const *)(& adapter->fw_version), "3.00");
    }
    if (tmp___8 == 0) {
      {
      printk("\fmegaraid: Your  card is a Dell PERC 2/SC RAID controller with  firmware\nmegaraid: 3.00 or 3.01.  This driver is known to have corruption issues\nmegaraid: with those firmware versions on this specific card.  In order\nmegaraid: to protect your data, please upgrade your firmware to version\nmegaraid: 3.10 or later, available from the Dell Technical Support web\nmegaraid: site at\nhttp://support.dell.com/us/en/filelib/download/index.asp?fileid=2940\n");
      }
    } else {
      {
      tmp___9 = strcmp((char const *)(& adapter->fw_version), "3.01");
      }
      if (tmp___9 == 0) {
        {
        printk("\fmegaraid: Your  card is a Dell PERC 2/SC RAID controller with  firmware\nmegaraid: 3.00 or 3.01.  This driver is known to have corruption issues\nmegaraid: with those firmware versions on this specific card.  In order\nmegaraid: to protect your data, please upgrade your firmware to version\nmegaraid: 3.10 or later, available from the Dell Technical Support web\nmegaraid: site at\nhttp://support.dell.com/us/en/filelib/download/index.asp?fileid=2940\n");
        }
      } else {
      }
    }
  } else {
  }
  if ((unsigned int )subsysvid == 4156U && (unsigned int )subsysid - 24807U <= 1U) {
    {
    tmp___10 = strcmp((char const *)(& adapter->fw_version), "H01.07");
    }
    if (tmp___10 == 0) {
      {
      printk("\fmegaraid: Firmware H.01.07, H.01.08, and H.01.09 on 1M/2M controllers\nmegaraid: do not support 64 bit addressing.\nmegaraid: DISABLING 64 bit support.\n");
      adapter->flag = adapter->flag & 4227858431U;
      }
    } else {
      {
      tmp___11 = strcmp((char const *)(& adapter->fw_version), "H01.08");
      }
      if (tmp___11 == 0) {
        {
        printk("\fmegaraid: Firmware H.01.07, H.01.08, and H.01.09 on 1M/2M controllers\nmegaraid: do not support 64 bit addressing.\nmegaraid: DISABLING 64 bit support.\n");
        adapter->flag = adapter->flag & 4227858431U;
        }
      } else {
        {
        tmp___12 = strcmp((char const *)(& adapter->fw_version), "H01.09");
        }
        if (tmp___12 == 0) {
          {
          printk("\fmegaraid: Firmware H.01.07, H.01.08, and H.01.09 on 1M/2M controllers\nmegaraid: do not support 64 bit addressing.\nmegaraid: DISABLING 64 bit support.\n");
          adapter->flag = adapter->flag & 4227858431U;
          }
        } else {
        }
      }
    }
  } else {
  }
  {
  tmp___13 = mega_is_bios_enabled(adapter);
  }
  if (tmp___13 != 0) {
    mega_hbas[hba_count].is_bios_enabled = 1;
  } else {
  }
  {
  mega_hbas[hba_count].hostdata_addr = adapter;
  mega_enum_raid_scsi(adapter);
  mega_get_boot_drv(adapter);
  }
  if (adapter->boot_pdrv_enabled != 0) {
    j = (int )adapter->product_info.nchannels;
    i = 0;
    goto ldv_39517;
    ldv_39516:
    adapter->logdrv_chan[i] = 0U;
    i = i + 1;
    ldv_39517: ;
    if (i < j) {
      goto ldv_39516;
    } else {
    }
    i = j;
    goto ldv_39520;
    ldv_39519:
    adapter->logdrv_chan[i] = 1U;
    i = i + 1;
    ldv_39520: ;
    if (i < j + 4) {
      goto ldv_39519;
    } else {
    }
  } else {
    i = 0;
    goto ldv_39523;
    ldv_39522:
    adapter->logdrv_chan[i] = 1U;
    i = i + 1;
    ldv_39523: ;
    if (i <= 3) {
      goto ldv_39522;
    } else {
    }
    i = 4;
    goto ldv_39526;
    ldv_39525:
    adapter->logdrv_chan[i] = 0U;
    i = i + 1;
    ldv_39526: ;
    if (i <= 8) {
      goto ldv_39525;
    } else {
    }
    adapter->mega_ch_class = adapter->mega_ch_class << 4;
  }
  {
  adapter->read_ldidmap = 0;
  adapter->support_random_del = mega_support_random_del(adapter);
  tmp___14 = mega_init_scb(adapter);
  }
  if (tmp___14 != 0) {
    goto out_free_mbox;
  } else {
  }
  {
  atomic_set(& adapter->pend_cmds, 0);
  atomic_set(& adapter->quiescent, 0);
  hba_soft_state[hba_count] = adapter;
  i = hba_count;
  mcontroller[i].base = (u64 )mega_baseport;
  mcontroller[i].irq = (u8 )irq;
  mcontroller[i].numldrv = adapter->numldrv;
  mcontroller[i].pcibus = pci_bus;
  mcontroller[i].pcidev = (u16 )id->device;
  mcontroller[i].pcifun = (unsigned int )pci_dev_func & 7U;
  mcontroller[i].pciid = 65535U;
  mcontroller[i].pcivendor = (u16 )id->vendor;
  mcontroller[i].pcislot = (u8 )((int )pci_dev_func >> 3);
  mcontroller[i].uid = (u32 )(((int )pci_bus << 8) | (int )pci_dev_func);
  }
  if (((long )adapter->flag & 67108864L) != 0L) {
    {
    pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
    adapter->has_64bit_addr = 1;
    }
  } else {
    {
    pci_set_dma_mask(pdev, 4294967295ULL);
    adapter->has_64bit_addr = 0;
    }
  }
  {
  __mutex_init(& adapter->int_mtx, "&adapter->int_mtx", & __key___0);
  ldv_init_completion_117(& adapter->int_waitq);
  adapter->this_id = 7;
  (adapter->host)->this_id = 7;
  adapter->has_cluster = mega_support_cluster(adapter);
  }
  if (adapter->has_cluster != 0) {
    {
    printk("\rmegaraid: Cluster driver, initiator id:%d\n", adapter->this_id);
    }
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)host);
  mega_create_proc_entry(hba_count, mega_proc_dir_entry);
  error = ldv_scsi_add_host_118(host, & pdev->dev);
  }
  if (error != 0) {
    goto out_free_mbox;
  } else {
  }
  {
  scsi_scan_host(host);
  hba_count = hba_count + 1;
  }
  return (0);
  out_free_mbox:
  {
  pci_free_consistent(adapter->dev, 74UL, (void *)adapter->una_mbox64, adapter->una_mbox64_dma);
  }
  out_free_irq:
  {
  ldv_free_irq_119((adapter->host)->irq, (void *)adapter);
  }
  out_free_scb_list:
  {
  kfree((void const *)adapter->scb_list);
  }
  out_free_cmd_buffer:
  {
  pci_free_consistent(adapter->dev, 2048UL, (void *)adapter->mega_buffer, adapter->buf_dma_handle);
  }
  out_host_put:
  {
  scsi_host_put(host);
  }
  out_iounmap: ;
  if ((flag & 536870912UL) != 0UL) {
    {
    ldv_iounmap_120((void volatile *)mega_baseport);
    }
  } else {
  }
  out_release_region: ;
  if ((flag & 536870912UL) != 0UL) {
    {
    __release_region(& iomem_resource, (resource_size_t )tbase, 128ULL);
    }
  } else {
    {
    __release_region(& ioport_resource, (resource_size_t )mega_baseport, 16ULL);
    }
  }
  out_disable_device:
  {
  pci_disable_device(pdev);
  }
  out: ;
  return (error);
}
}
static void __megaraid_shutdown(adapter_t *adapter )
{
  u_char raw_mbox[15U] ;
  mbox_t *mbox ;
  int i ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  mbox = (mbox_t *)(& raw_mbox);
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 10U;
  ldv_free_irq_121((adapter->host)->irq, (void *)adapter);
  issue_scb_block(adapter, (u_char *)(& raw_mbox));
  memset((void *)(& mbox->m_out), 0, 15UL);
  raw_mbox[0] = 254U;
  issue_scb_block(adapter, (u_char *)(& raw_mbox));
  tmp = atomic_read((atomic_t const *)(& adapter->pend_cmds));
  }
  if (tmp > 0) {
    {
    printk("\fmegaraid: pending commands!!\n");
    }
  } else {
  }
  i = 0;
  goto ldv_39540;
  ldv_39539:
  __ms = 1000UL;
  goto ldv_39537;
  ldv_39536:
  {
  __const_udelay(4295000UL);
  }
  ldv_39537:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_39536;
  } else {
  }
  i = i + 1;
  ldv_39540: ;
  if (i <= 10) {
    goto ldv_39539;
  } else {
  }
  return;
}
}
static void megaraid_remove_one(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  adapter_t *adapter ;
  char buf[12U] ;
  unsigned int tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  adapter = (adapter_t *)(& host->hostdata);
  ldv_scsi_remove_host_122(host);
  __megaraid_shutdown(adapter);
  }
  if (((long )adapter->flag & 536870912L) != 0L) {
    {
    ldv_iounmap_123((void volatile *)adapter->base);
    __release_region(& iomem_resource, (resource_size_t )(adapter->host)->base, 128ULL);
    }
  } else {
    {
    __release_region(& ioport_resource, (resource_size_t )adapter->base, 16ULL);
    }
  }
  {
  mega_free_sgl(adapter);
  }
  if ((unsigned long )adapter->controller_proc_dir_entry != (unsigned long )((struct proc_dir_entry *)0)) {
    {
    remove_proc_entry("stat", adapter->controller_proc_dir_entry);
    remove_proc_entry("config", adapter->controller_proc_dir_entry);
    remove_proc_entry("mailbox", adapter->controller_proc_dir_entry);
    remove_proc_entry("rebuild-rate", adapter->controller_proc_dir_entry);
    remove_proc_entry("battery-status", adapter->controller_proc_dir_entry);
    remove_proc_entry("diskdrives-ch0", adapter->controller_proc_dir_entry);
    remove_proc_entry("diskdrives-ch1", adapter->controller_proc_dir_entry);
    remove_proc_entry("diskdrives-ch2", adapter->controller_proc_dir_entry);
    remove_proc_entry("diskdrives-ch3", adapter->controller_proc_dir_entry);
    remove_proc_entry("raiddrives-0-9", adapter->controller_proc_dir_entry);
    remove_proc_entry("raiddrives-10-19", adapter->controller_proc_dir_entry);
    remove_proc_entry("raiddrives-20-29", adapter->controller_proc_dir_entry);
    remove_proc_entry("raiddrives-30-39", adapter->controller_proc_dir_entry);
    buf[0] = 0;
    tmp___0 = 1U;
    }
    {
    while (1) {
      while_continue: ;
      if (tmp___0 >= 12U) {
        goto while_break;
      } else {
      }
      buf[tmp___0] = (char)0;
      tmp___0 = tmp___0 + 1U;
    }
    while_break: ;
    }
    {
    sprintf((char *)(& buf), "hba%d", (adapter->host)->host_no);
    remove_proc_entry((char const *)(& buf), mega_proc_dir_entry);
    }
  } else {
  }
  {
  pci_free_consistent(adapter->dev, 2048UL, (void *)adapter->mega_buffer, adapter->buf_dma_handle);
  kfree((void const *)adapter->scb_list);
  pci_free_consistent(adapter->dev, 74UL, (void *)adapter->una_mbox64, adapter->una_mbox64_dma);
  scsi_host_put(host);
  pci_disable_device(pdev);
  hba_count = hba_count - 1;
  }
  return;
}
}
static void megaraid_shutdown(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  adapter_t *adapter ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  adapter = (adapter_t *)(& host->hostdata);
  __megaraid_shutdown(adapter);
  }
  return;
}
}
static struct pci_device_id megaraid_pci_tbl[4U] = { {4126U, 36880U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4126U, 36960U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 6496U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__megaraid_pci_tbl_device_table[4U] ;
static struct pci_driver megaraid_pci_driver =
     {{0, 0}, "megaraid_legacy", (struct pci_device_id const *)(& megaraid_pci_tbl),
    & megaraid_probe_one, & megaraid_remove_one, 0, 0, 0, 0, & megaraid_shutdown,
    0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}};
static int megaraid_init(void)
{
  int error ;
  {
  if (max_cmd_per_lun - 1U > 125U) {
    max_cmd_per_lun = 126U;
  } else {
  }
  if ((unsigned int )max_mbox_busy_wait > 10U) {
    max_mbox_busy_wait = 10U;
  } else {
  }
  {
  mega_proc_dir_entry = proc_mkdir("megaraid", (struct proc_dir_entry *)0);
  }
  if ((unsigned long )mega_proc_dir_entry == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    printk("\fmegaraid: failed to create megaraid root\n");
    }
  } else {
  }
  {
  error = ldv___pci_register_driver_124(& megaraid_pci_driver, & __this_module, "megaraid");
  }
  if (error != 0) {
    {
    remove_proc_entry("megaraid", (struct proc_dir_entry *)0);
    }
    return (error);
  } else {
  }
  {
  major = ldv_register_chrdev_125(0U, "megadev_legacy", & megadev_fops);
  }
  if (major == 0) {
    {
    printk("\fmegaraid: failed to register char device\n");
    }
  } else {
  }
  return (0);
}
}
static void megaraid_exit(void)
{
  {
  {
  ldv_unregister_chrdev_126((unsigned int )major, "megadev_legacy");
  ldv_pci_unregister_driver_127(& megaraid_pci_driver);
  remove_proc_entry("megaraid", (struct proc_dir_entry *)0);
  }
  return;
}
}
void ldv_EMGentry_exit_megaraid_exit_28_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_megaraid_init_28_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_dispatch_deregister_23_1(struct Scsi_Host *arg0 ) ;
void ldv_dispatch_deregister_24_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_26_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_28_4(void) ;
void ldv_dispatch_irq_deregister_19_1(int arg0 ) ;
void ldv_dispatch_irq_register_20_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_21_2(struct Scsi_Host *arg0 ) ;
void ldv_dispatch_register_25_2(struct file_operations *arg0 ) ;
void ldv_dispatch_register_27_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_28_5(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 ) ;
void ldv_entry_EMGentry_28(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_2(void *arg0 ) ;
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_3(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_chrdev(int arg0 , unsigned int arg1 , char *arg2 , struct file_operations *arg3 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_scsi_add_host(int arg0 , struct Scsi_Host *arg1 , struct device *arg2 ) ;
struct Scsi_Host *ldv_scsi_host_alloc(struct Scsi_Host *arg0 , struct scsi_host_template *arg1 ,
                                      int arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_17(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_18(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_19(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_21(char *(*arg0)(struct Scsi_Host * ) ,
                                                   struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_22(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_25(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_28(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_29(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 ) ;
void ldv_scsi_host_template_instance_callback_4_32(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_4(int (*arg0)(struct scsi_device * ,
                                                              struct block_device * ,
                                                              unsigned long , int * ) ,
                                                  struct scsi_device *arg1 , struct block_device *arg2 ,
                                                  unsigned long arg3 , int *arg4 ) ;
void ldv_scsi_host_template_instance_callback_5_17(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_5_18(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_5_19(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_5_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_5_21(char *(*arg0)(struct Scsi_Host * ) ,
                                                   struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_instance_callback_5_22(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_scsi_host_template_instance_callback_5_25(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_scsi_host_template_instance_callback_5_28(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 ) ;
void ldv_scsi_host_template_instance_callback_5_29(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 ) ;
void ldv_scsi_host_template_instance_callback_5_32(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_scsi_host_template_instance_callback_5_4(int (*arg0)(struct scsi_device * ,
                                                              struct block_device * ,
                                                              unsigned long , int * ) ,
                                                  struct scsi_device *arg1 , struct block_device *arg2 ,
                                                  unsigned long arg3 , int *arg4 ) ;
int ldv_scsi_host_template_instance_probe_4_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 ) ;
int ldv_scsi_host_template_instance_probe_5_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_instance_release_4_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_instance_release_5_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_scsi_host_template_instance_4(void *arg0 ) ;
void ldv_scsi_host_template_scsi_host_template_instance_5(void *arg0 ) ;
void ldv_scsi_remove_host(void *arg0 , struct Scsi_Host *arg1 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_mega_proc_file_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_unregister_chrdev(void *arg0 , unsigned int arg1 , char *arg2 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_28 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_megaraid_exit_28_2(void (*arg0)(void) )
{
  {
  {
  megaraid_exit();
  }
  return;
}
}
int ldv_EMGentry_init_megaraid_init_28_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = megaraid_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_27_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_27_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_27_2(ldv_27_pci_driver_pci_driver);
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
void ldv_dispatch_deregister_23_1(struct Scsi_Host *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_dispatch_deregister_24_1(struct file_operations *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_26_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_28_4(void)
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_19_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_20_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_2 = (struct ldv_struct_interrupt_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  cf_arg_2->arg1 = arg1;
  cf_arg_2->arg2 = arg2;
  cf_arg_2->arg3 = arg3;
  ldv_interrupt_interrupt_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_21_2(struct Scsi_Host *arg0 )
{
  struct ldv_struct_scsi_host_template_instance_4 *cf_arg_4 ;
  struct ldv_struct_scsi_host_template_instance_4 *cf_arg_5 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(16UL);
    cf_arg_4 = (struct ldv_struct_scsi_host_template_instance_4 *)tmp;
    cf_arg_4->arg0 = arg0;
    ldv_scsi_host_template_scsi_host_template_instance_4((void *)cf_arg_4);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(16UL);
    cf_arg_5 = (struct ldv_struct_scsi_host_template_instance_4 *)tmp___0;
    cf_arg_5->arg0 = arg0;
    ldv_scsi_host_template_scsi_host_template_instance_5((void *)cf_arg_5);
    }
  }
  return;
}
}
void ldv_dispatch_register_25_2(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_1 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(16UL);
    cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp;
    cf_arg_0->arg0 = arg0;
    ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(16UL);
    cf_arg_1 = (struct ldv_struct_file_operations_instance_0 *)tmp___0;
    cf_arg_1->arg0 = arg0;
    ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
    }
  }
  return;
}
}
void ldv_dispatch_register_27_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_pci_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ldv_pci_pci_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_28_5(void)
{
  struct ldv_struct_EMGentry_28 *cf_arg_6 ;
  struct ldv_struct_EMGentry_28 *cf_arg_7 ;
  struct ldv_struct_EMGentry_28 *cf_arg_8 ;
  struct ldv_struct_EMGentry_28 *cf_arg_9 ;
  struct ldv_struct_EMGentry_28 *cf_arg_10 ;
  struct ldv_struct_EMGentry_28 *cf_arg_11 ;
  struct ldv_struct_EMGentry_28 *cf_arg_12 ;
  struct ldv_struct_EMGentry_28 *cf_arg_13 ;
  struct ldv_struct_EMGentry_28 *cf_arg_14 ;
  struct ldv_struct_EMGentry_28 *cf_arg_15 ;
  struct ldv_struct_EMGentry_28 *cf_arg_16 ;
  struct ldv_struct_EMGentry_28 *cf_arg_17 ;
  struct ldv_struct_EMGentry_28 *cf_arg_18 ;
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
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_28 *)tmp;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_28 *)tmp___0;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_7((void *)cf_arg_7);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_28 *)tmp___1;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_8((void *)cf_arg_8);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_28 *)tmp___2;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_9((void *)cf_arg_9);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_EMGentry_28 *)tmp___3;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_EMGentry_28 *)tmp___4;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_28 *)tmp___5;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_12((void *)cf_arg_12);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_EMGentry_28 *)tmp___6;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_13((void *)cf_arg_13);
  tmp___7 = ldv_xmalloc(4UL);
  cf_arg_14 = (struct ldv_struct_EMGentry_28 *)tmp___7;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_14((void *)cf_arg_14);
  tmp___8 = ldv_xmalloc(4UL);
  cf_arg_15 = (struct ldv_struct_EMGentry_28 *)tmp___8;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_15((void *)cf_arg_15);
  tmp___9 = ldv_xmalloc(4UL);
  cf_arg_16 = (struct ldv_struct_EMGentry_28 *)tmp___9;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_16((void *)cf_arg_16);
  tmp___10 = ldv_xmalloc(4UL);
  cf_arg_17 = (struct ldv_struct_EMGentry_28 *)tmp___10;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_17((void *)cf_arg_17);
  tmp___11 = ldv_xmalloc(4UL);
  cf_arg_18 = (struct ldv_struct_EMGentry_28 *)tmp___11;
  ldv_struct_mega_proc_file_dummy_resourceless_instance_18((void *)cf_arg_18);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_pdrv_ch1(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_pdrv_ch2(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_pdrv_ch3(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_rdrv_10(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_rdrv_20(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_rdrv_30(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_rdrv_40(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_rebuild_rate(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct seq_file * ,
                                                               void * ) , struct seq_file *arg1 ,
                                                   void *arg2 )
{
  {
  {
  proc_show_stat(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 )
{
  {
  {
  proc_show_battery(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 )
{
  {
  {
  proc_show_config(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 )
{
  {
  {
  proc_show_mbox(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct seq_file * ,
                                                              void * ) , struct seq_file *arg1 ,
                                                  void *arg2 )
{
  {
  {
  proc_show_pdrv_ch0(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_28(void *arg0 )
{
  void (*ldv_28_exit_megaraid_exit_default)(void) ;
  int (*ldv_28_init_megaraid_init_default)(void) ;
  int ldv_28_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_28_ret_default = ldv_EMGentry_init_megaraid_init_28_9(ldv_28_init_megaraid_init_default);
  ldv_28_ret_default = ldv_ldv_post_init_128(ldv_28_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_28_ret_default != 0);
    ldv_ldv_check_final_state_129();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_28_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_14_28_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_28_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_megaraid_exit_28_2(ldv_28_exit_megaraid_exit_default);
    ldv_ldv_check_final_state_130();
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
  ldv_ldv_initialize_131();
  ldv_entry_EMGentry_28((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_0_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_0_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
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
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
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
  case_2: ;
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
  goto ldv_main_0;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  unsigned long ldv_1_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_1_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_1_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
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
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_1_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  }
  goto ldv_call_1;
  case_2: ;
  goto ldv_call_1;
  goto ldv_call_1;
  case_3: ;
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
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = mega_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = megadev_open(arg1, arg2);
  }
  return (tmp);
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
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
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
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_19_line_line ;
  {
  {
  ldv_19_line_line = arg1;
  ldv_dispatch_irq_deregister_19_1(ldv_19_line_line);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
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
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_2(void *arg0 )
{
  enum irqreturn (*ldv_2_callback_handler)(int , void * ) ;
  void *ldv_2_data_data ;
  int ldv_2_line_line ;
  enum irqreturn ldv_2_ret_val_default ;
  enum irqreturn (*ldv_2_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_2 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_2 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_2 *)0)) {
    {
    ldv_2_line_line = data->arg0;
    ldv_2_callback_handler = data->arg1;
    ldv_2_thread_thread = data->arg2;
    ldv_2_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_2_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_2_ret_val_default = ldv_interrupt_instance_handler_2_5(ldv_2_callback_handler,
                                                               ldv_2_line_line, ldv_2_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_2_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_2_3(ldv_2_thread_thread, ldv_2_line_line, ldv_2_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = megaraid_probe_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  megaraid_remove_one(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  megaraid_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_3(void *arg0 )
{
  struct pci_driver *ldv_3_container_pci_driver ;
  struct pci_dev *ldv_3_resource_dev ;
  struct pm_message ldv_3_resource_pm_message ;
  struct pci_device_id *ldv_3_resource_struct_pci_device_id_ptr ;
  int ldv_3_ret_default ;
  struct ldv_struct_pci_instance_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_3 *)arg0;
  ldv_3_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_3 *)0)) {
    {
    ldv_3_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_3_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_132();
    ldv_3_ret_default = ldv_pci_instance_probe_3_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_3_container_pci_driver->probe,
                                                    ldv_3_resource_dev, ldv_3_resource_struct_pci_device_id_ptr);
    ldv_3_ret_default = ldv_ldv_post_probe_133(ldv_3_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_dev);
    ldv_free((void *)ldv_3_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_3:
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
  goto ldv_call_3;
  case_2: ;
  if ((unsigned long )ldv_3_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_3_8(ldv_3_container_pci_driver->suspend,
                                                     ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_late_3_7(ldv_3_container_pci_driver->suspend_late,
                                                          ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_3_6(ldv_3_container_pci_driver->resume_early, ldv_3_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_3_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_3_5(ldv_3_container_pci_driver->resume, ldv_3_resource_dev);
    }
  } else {
  }
  goto ldv_call_3;
  case_3:
  {
  ldv_pci_instance_shutdown_3_3(ldv_3_container_pci_driver->shutdown, ldv_3_resource_dev);
  ldv_pci_instance_release_3_2(ldv_3_container_pci_driver->remove, ldv_3_resource_dev);
  }
  goto ldv_main_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_26_pci_driver_pci_driver ;
  {
  {
  ldv_26_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_26_1(ldv_26_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_chrdev(int arg0 , unsigned int arg1 , char *arg2 , struct file_operations *arg3 )
{
  struct file_operations *ldv_25_file_operations_file_operations ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_25_file_operations_file_operations = arg3;
    ldv_dispatch_register_25_2(ldv_25_file_operations_file_operations);
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
  enum irqreturn (*ldv_20_callback_handler)(int , void * ) ;
  void *ldv_20_data_data ;
  int ldv_20_line_line ;
  enum irqreturn (*ldv_20_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_20_line_line = (int )arg1;
    ldv_20_callback_handler = arg2;
    ldv_20_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_20_data_data = arg5;
    ldv_dispatch_irq_register_20_2(ldv_20_line_line, ldv_20_callback_handler, ldv_20_thread_thread,
                                   ldv_20_data_data);
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
int ldv_scsi_add_host(int arg0 , struct Scsi_Host *arg1 , struct device *arg2 )
{
  struct Scsi_Host *ldv_21_host_host ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_dispatch_register_21_2(ldv_21_host_host);
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
struct Scsi_Host *ldv_scsi_host_alloc(struct Scsi_Host *arg0 , struct scsi_host_template *arg1 ,
                                      int arg2 )
{
  struct Scsi_Host *ldv_22_host_host ;
  struct scsi_host_template *ldv_22_scsi_host_template_scsi_host_template ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3800UL);
    ldv_22_host_host = (struct Scsi_Host *)tmp;
    ldv_22_scsi_host_template_scsi_host_template = arg1;
    ldv_22_host_host->hostt = ldv_22_scsi_host_template_scsi_host_template;
    }
    return (ldv_22_host_host);
    return (arg0);
  } else {
    return ((struct Scsi_Host *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_scsi_host_template_instance_callback_4_17(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_abort(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_18(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_19(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_21(char *(*arg0)(struct Scsi_Host * ) ,
                                                   struct Scsi_Host *arg1 )
{
  {
  {
  megaraid_info(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_22(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_25(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_28(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 )
{
  {
  {
  megaraid_queue(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_29(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_32(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  megadev_unlocked_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_4(int (*arg0)(struct scsi_device * ,
                                                              struct block_device * ,
                                                              unsigned long , int * ) ,
                                                  struct scsi_device *arg1 , struct block_device *arg2 ,
                                                  unsigned long arg3 , int *arg4 )
{
  {
  {
  megaraid_biosparam(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_17(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_abort(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_18(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_19(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  megaraid_reset(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_21(char *(*arg0)(struct Scsi_Host * ) ,
                                                   struct Scsi_Host *arg1 )
{
  {
  {
  megaraid_info(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_22(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_25(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_28(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 )
{
  {
  {
  megaraid_queue(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_29(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_32(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  megadev_unlocked_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_5_4(int (*arg0)(struct scsi_device * ,
                                                              struct block_device * ,
                                                              unsigned long , int * ) ,
                                                  struct scsi_device *arg1 , struct block_device *arg2 ,
                                                  unsigned long arg3 , int *arg4 )
{
  {
  {
  megaraid_biosparam(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_scsi_host_template_instance_probe_4_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
int ldv_scsi_host_template_instance_probe_5_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_scsi_host_template_instance_release_4_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_release_5_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_scsi_host_template_instance_4(void *arg0 )
{
  int (*ldv_4_callback_bios_param)(struct scsi_device * , struct block_device * ,
                                   unsigned long , int * ) ;
  int (*ldv_4_callback_eh_abort_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_bus_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_device_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_host_reset_handler)(struct scsi_cmnd * ) ;
  char *(*ldv_4_callback_info)(struct Scsi_Host * ) ;
  long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_4_callback_open)(struct inode * , struct file * ) ;
  int (*ldv_4_callback_queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
  long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct Scsi_Host *ldv_4_host_host ;
  struct file *ldv_4_host_struct_file_ptr ;
  struct scsi_cmnd *ldv_4_host_struct_scsi_cmnd_ptr ;
  long long ldv_4_ldv_param_22_1_default ;
  int ldv_4_ldv_param_22_2_default ;
  struct inode *ldv_4_ldv_param_25_0_default ;
  char *ldv_4_ldv_param_29_1_default ;
  unsigned long ldv_4_ldv_param_29_2_default ;
  long long *ldv_4_ldv_param_29_3_default ;
  unsigned int ldv_4_ldv_param_32_1_default ;
  unsigned long ldv_4_ldv_param_32_2_default ;
  struct scsi_device *ldv_4_ldv_param_4_0_default ;
  struct block_device *ldv_4_ldv_param_4_1_default ;
  unsigned long ldv_4_ldv_param_4_2_default ;
  int *ldv_4_ldv_param_4_3_default ;
  int ldv_4_ret_default ;
  struct ldv_struct_scsi_host_template_instance_4 *data ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  {
  data = (struct ldv_struct_scsi_host_template_instance_4 *)arg0;
  ldv_4_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_scsi_host_template_instance_4 *)0)) {
    {
    ldv_4_host_host = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_ldv_pre_probe_134();
    }
    if ((unsigned long )(ldv_4_host_host->hostt)->detect != (unsigned long )((int (*)(struct scsi_host_template * ))0)) {
      {
      ldv_4_ret_default = ldv_scsi_host_template_instance_probe_4_10((int (*)(struct Scsi_Host * ))(ldv_4_host_host->hostt)->detect,
                                                                     ldv_4_host_host);
      }
    } else {
    }
    {
    ldv_4_ret_default = ldv_ldv_post_probe_135(ldv_4_ret_default);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_4_ret_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      ldv_assume(ldv_4_ret_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    if ((unsigned long )(ldv_4_host_host->hostt)->release != (unsigned long )((int (*)(struct Scsi_Host * ))0)) {
      {
      ldv_scsi_host_template_instance_release_4_2((ldv_4_host_host->hostt)->release,
                                                  ldv_4_host_host);
      }
    } else {
    }
    goto ldv_main_4;
  } else {
    {
    tmp___1 = ldv_xmalloc(3464UL);
    ldv_4_ldv_param_4_0_default = (struct scsi_device *)tmp___1;
    tmp___2 = ldv_xmalloc(480UL);
    ldv_4_ldv_param_4_1_default = (struct block_device *)tmp___2;
    tmp___3 = ldv_xmalloc(4UL);
    ldv_4_ldv_param_4_3_default = (int *)tmp___3;
    tmp___4 = ldv_undef_int();
    }
    {
    if (tmp___4 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___4 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___4 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___4 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___4 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___4 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___4 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___4 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___4 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___4 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___4 == 11) {
      goto case_11;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_scsi_host_template_instance_callback_4_32(ldv_4_callback_unlocked_ioctl, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_32_1_default, ldv_4_ldv_param_32_2_default);
    }
    goto ldv_40677;
    case_2:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_4_ldv_param_29_1_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(8UL);
    ldv_4_ldv_param_29_3_default = (long long *)tmp___6;
    ldv_scsi_host_template_instance_callback_4_29(ldv_4_callback_read, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_29_1_default, ldv_4_ldv_param_29_2_default,
                                                  ldv_4_ldv_param_29_3_default);
    ldv_free((void *)ldv_4_ldv_param_29_1_default);
    ldv_free((void *)ldv_4_ldv_param_29_3_default);
    }
    goto ldv_40677;
    case_3:
    {
    ldv_scsi_host_template_instance_callback_4_28(ldv_4_callback_queuecommand, ldv_4_host_host,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40677;
    case_4:
    {
    tmp___7 = ldv_xmalloc(976UL);
    ldv_4_ldv_param_25_0_default = (struct inode *)tmp___7;
    ldv_scsi_host_template_instance_callback_4_25(ldv_4_callback_open, ldv_4_ldv_param_25_0_default,
                                                  ldv_4_host_struct_file_ptr);
    ldv_free((void *)ldv_4_ldv_param_25_0_default);
    }
    goto ldv_40677;
    case_5:
    {
    ldv_scsi_host_template_instance_callback_4_22(ldv_4_callback_llseek, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_22_1_default, ldv_4_ldv_param_22_2_default);
    }
    goto ldv_40677;
    case_6:
    {
    ldv_scsi_host_template_instance_callback_4_21(ldv_4_callback_info, ldv_4_host_host);
    }
    goto ldv_40677;
    case_7:
    {
    ldv_scsi_host_template_instance_callback_4_20(ldv_4_callback_eh_host_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40677;
    case_8:
    {
    ldv_scsi_host_template_instance_callback_4_19(ldv_4_callback_eh_device_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40677;
    case_9:
    {
    ldv_scsi_host_template_instance_callback_4_18(ldv_4_callback_eh_bus_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40677;
    case_10:
    {
    ldv_scsi_host_template_instance_callback_4_17(ldv_4_callback_eh_abort_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40677;
    case_11:
    {
    ldv_scsi_host_template_instance_callback_4_4(ldv_4_callback_bios_param, ldv_4_ldv_param_4_0_default,
                                                 ldv_4_ldv_param_4_1_default, ldv_4_ldv_param_4_2_default,
                                                 ldv_4_ldv_param_4_3_default);
    }
    goto ldv_40677;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_40677: ;
  }
  {
  ldv_free((void *)ldv_4_ldv_param_4_0_default);
  ldv_free((void *)ldv_4_ldv_param_4_1_default);
  ldv_free((void *)ldv_4_ldv_param_4_3_default);
  }
  goto ldv_call_4;
  return;
}
}
void ldv_scsi_host_template_scsi_host_template_instance_5(void *arg0 )
{
  int (*ldv_5_callback_bios_param)(struct scsi_device * , struct block_device * ,
                                   unsigned long , int * ) ;
  int (*ldv_5_callback_eh_abort_handler)(struct scsi_cmnd * ) ;
  int (*ldv_5_callback_eh_bus_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_5_callback_eh_device_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_5_callback_eh_host_reset_handler)(struct scsi_cmnd * ) ;
  char *(*ldv_5_callback_info)(struct Scsi_Host * ) ;
  long long (*ldv_5_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_5_callback_open)(struct inode * , struct file * ) ;
  int (*ldv_5_callback_queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
  long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct Scsi_Host *ldv_5_host_host ;
  struct file *ldv_5_host_struct_file_ptr ;
  struct scsi_cmnd *ldv_5_host_struct_scsi_cmnd_ptr ;
  long long ldv_5_ldv_param_22_1_default ;
  int ldv_5_ldv_param_22_2_default ;
  struct inode *ldv_5_ldv_param_25_0_default ;
  char *ldv_5_ldv_param_29_1_default ;
  unsigned long ldv_5_ldv_param_29_2_default ;
  long long *ldv_5_ldv_param_29_3_default ;
  unsigned int ldv_5_ldv_param_32_1_default ;
  unsigned long ldv_5_ldv_param_32_2_default ;
  struct scsi_device *ldv_5_ldv_param_4_0_default ;
  struct block_device *ldv_5_ldv_param_4_1_default ;
  unsigned long ldv_5_ldv_param_4_2_default ;
  int *ldv_5_ldv_param_4_3_default ;
  int ldv_5_ret_default ;
  struct ldv_struct_scsi_host_template_instance_4 *data ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  {
  data = (struct ldv_struct_scsi_host_template_instance_4 *)arg0;
  ldv_5_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_scsi_host_template_instance_4 *)0)) {
    {
    ldv_5_host_host = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_main_5;
  return;
  ldv_main_5:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_ldv_pre_probe_136();
    }
    if ((unsigned long )(ldv_5_host_host->hostt)->detect != (unsigned long )((int (*)(struct scsi_host_template * ))0)) {
      {
      ldv_5_ret_default = ldv_scsi_host_template_instance_probe_5_10((int (*)(struct Scsi_Host * ))(ldv_5_host_host->hostt)->detect,
                                                                     ldv_5_host_host);
      }
    } else {
    }
    {
    ldv_5_ret_default = ldv_ldv_post_probe_137(ldv_5_ret_default);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      ldv_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    return;
  }
  return;
  ldv_call_5:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    if ((unsigned long )(ldv_5_host_host->hostt)->release != (unsigned long )((int (*)(struct Scsi_Host * ))0)) {
      {
      ldv_scsi_host_template_instance_release_5_2((ldv_5_host_host->hostt)->release,
                                                  ldv_5_host_host);
      }
    } else {
    }
    goto ldv_main_5;
  } else {
    {
    tmp___1 = ldv_xmalloc(3464UL);
    ldv_5_ldv_param_4_0_default = (struct scsi_device *)tmp___1;
    tmp___2 = ldv_xmalloc(480UL);
    ldv_5_ldv_param_4_1_default = (struct block_device *)tmp___2;
    tmp___3 = ldv_xmalloc(4UL);
    ldv_5_ldv_param_4_3_default = (int *)tmp___3;
    tmp___4 = ldv_undef_int();
    }
    {
    if (tmp___4 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___4 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___4 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___4 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___4 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___4 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___4 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___4 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___4 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___4 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___4 == 11) {
      goto case_11;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_scsi_host_template_instance_callback_5_32(ldv_5_callback_unlocked_ioctl, ldv_5_host_struct_file_ptr,
                                                  ldv_5_ldv_param_32_1_default, ldv_5_ldv_param_32_2_default);
    }
    goto ldv_40746;
    case_2:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_5_ldv_param_29_1_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(8UL);
    ldv_5_ldv_param_29_3_default = (long long *)tmp___6;
    ldv_scsi_host_template_instance_callback_5_29(ldv_5_callback_read, ldv_5_host_struct_file_ptr,
                                                  ldv_5_ldv_param_29_1_default, ldv_5_ldv_param_29_2_default,
                                                  ldv_5_ldv_param_29_3_default);
    ldv_free((void *)ldv_5_ldv_param_29_1_default);
    ldv_free((void *)ldv_5_ldv_param_29_3_default);
    }
    goto ldv_40746;
    case_3:
    {
    ldv_scsi_host_template_instance_callback_5_28(ldv_5_callback_queuecommand, ldv_5_host_host,
                                                  ldv_5_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40746;
    case_4:
    {
    tmp___7 = ldv_xmalloc(976UL);
    ldv_5_ldv_param_25_0_default = (struct inode *)tmp___7;
    ldv_scsi_host_template_instance_callback_5_25(ldv_5_callback_open, ldv_5_ldv_param_25_0_default,
                                                  ldv_5_host_struct_file_ptr);
    ldv_free((void *)ldv_5_ldv_param_25_0_default);
    }
    goto ldv_40746;
    case_5:
    {
    ldv_scsi_host_template_instance_callback_5_22(ldv_5_callback_llseek, ldv_5_host_struct_file_ptr,
                                                  ldv_5_ldv_param_22_1_default, ldv_5_ldv_param_22_2_default);
    }
    goto ldv_40746;
    case_6:
    {
    ldv_scsi_host_template_instance_callback_5_21(ldv_5_callback_info, ldv_5_host_host);
    }
    goto ldv_40746;
    case_7:
    {
    ldv_scsi_host_template_instance_callback_5_20(ldv_5_callback_eh_host_reset_handler,
                                                  ldv_5_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40746;
    case_8:
    {
    ldv_scsi_host_template_instance_callback_5_19(ldv_5_callback_eh_device_reset_handler,
                                                  ldv_5_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40746;
    case_9:
    {
    ldv_scsi_host_template_instance_callback_5_18(ldv_5_callback_eh_bus_reset_handler,
                                                  ldv_5_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40746;
    case_10:
    {
    ldv_scsi_host_template_instance_callback_5_17(ldv_5_callback_eh_abort_handler,
                                                  ldv_5_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_40746;
    case_11:
    {
    ldv_scsi_host_template_instance_callback_5_4(ldv_5_callback_bios_param, ldv_5_ldv_param_4_0_default,
                                                 ldv_5_ldv_param_4_1_default, ldv_5_ldv_param_4_2_default,
                                                 ldv_5_ldv_param_4_3_default);
    }
    goto ldv_40746;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_40746: ;
  }
  {
  ldv_free((void *)ldv_5_ldv_param_4_0_default);
  ldv_free((void *)ldv_5_ldv_param_4_1_default);
  ldv_free((void *)ldv_5_ldv_param_4_3_default);
  }
  goto ldv_call_5;
  return;
}
}
void ldv_scsi_remove_host(void *arg0 , struct Scsi_Host *arg1 )
{
  struct Scsi_Host *ldv_23_host_host ;
  {
  {
  ldv_23_host_host = arg1;
  ldv_dispatch_deregister_23_1(ldv_23_host_host);
  }
  return;
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_10(void *arg0 )
{
  int (*ldv_10_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_10_container_struct_seq_file_ptr ;
  void *ldv_10_ldv_param_3_1_default ;
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
    ldv_10_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_show, ldv_10_container_struct_seq_file_ptr,
                                                  ldv_10_ldv_param_3_1_default);
    ldv_free(ldv_10_ldv_param_3_1_default);
    }
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_11(void *arg0 )
{
  int (*ldv_11_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_11_container_struct_seq_file_ptr ;
  void *ldv_11_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_11_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_show, ldv_11_container_struct_seq_file_ptr,
                                                  ldv_11_ldv_param_3_1_default);
    ldv_free(ldv_11_ldv_param_3_1_default);
    }
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_12(void *arg0 )
{
  int (*ldv_12_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_12_container_struct_seq_file_ptr ;
  void *ldv_12_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_12_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_show, ldv_12_container_struct_seq_file_ptr,
                                                  ldv_12_ldv_param_3_1_default);
    ldv_free(ldv_12_ldv_param_3_1_default);
    }
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_13(void *arg0 )
{
  int (*ldv_13_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_13_container_struct_seq_file_ptr ;
  void *ldv_13_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_13_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_show, ldv_13_container_struct_seq_file_ptr,
                                                  ldv_13_ldv_param_3_1_default);
    ldv_free(ldv_13_ldv_param_3_1_default);
    }
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_14_container_struct_seq_file_ptr ;
  void *ldv_14_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_14_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_show, ldv_14_container_struct_seq_file_ptr,
                                                  ldv_14_ldv_param_3_1_default);
    ldv_free(ldv_14_ldv_param_3_1_default);
    }
    goto ldv_call_14;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_15(void *arg0 )
{
  int (*ldv_15_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_15_container_struct_seq_file_ptr ;
  void *ldv_15_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_15_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_show, ldv_15_container_struct_seq_file_ptr,
                                                  ldv_15_ldv_param_3_1_default);
    ldv_free(ldv_15_ldv_param_3_1_default);
    }
    goto ldv_call_15;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_16(void *arg0 )
{
  int (*ldv_16_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_16_container_struct_seq_file_ptr ;
  void *ldv_16_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_16;
  return;
  ldv_call_16:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_16_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_show, ldv_16_container_struct_seq_file_ptr,
                                                  ldv_16_ldv_param_3_1_default);
    ldv_free(ldv_16_ldv_param_3_1_default);
    }
    goto ldv_call_16;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_17(void *arg0 )
{
  int (*ldv_17_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_17_container_struct_seq_file_ptr ;
  void *ldv_17_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_17;
  return;
  ldv_call_17:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_17_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_show, ldv_17_container_struct_seq_file_ptr,
                                                  ldv_17_ldv_param_3_1_default);
    ldv_free(ldv_17_ldv_param_3_1_default);
    }
    goto ldv_call_17;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_18(void *arg0 )
{
  int (*ldv_18_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_18_container_struct_seq_file_ptr ;
  void *ldv_18_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_18;
  return;
  ldv_call_18:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_18_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_show, ldv_18_container_struct_seq_file_ptr,
                                                  ldv_18_ldv_param_3_1_default);
    ldv_free(ldv_18_ldv_param_3_1_default);
    }
    goto ldv_call_18;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_6(void *arg0 )
{
  int (*ldv_6_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_6_container_struct_seq_file_ptr ;
  void *ldv_6_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_6_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_show, ldv_6_container_struct_seq_file_ptr,
                                                 ldv_6_ldv_param_3_1_default);
    ldv_free(ldv_6_ldv_param_3_1_default);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_7(void *arg0 )
{
  int (*ldv_7_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_7_container_struct_seq_file_ptr ;
  void *ldv_7_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_7_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_show, ldv_7_container_struct_seq_file_ptr,
                                                 ldv_7_ldv_param_3_1_default);
    ldv_free(ldv_7_ldv_param_3_1_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_8(void *arg0 )
{
  int (*ldv_8_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_8_container_struct_seq_file_ptr ;
  void *ldv_8_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_8_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_show, ldv_8_container_struct_seq_file_ptr,
                                                 ldv_8_ldv_param_3_1_default);
    ldv_free(ldv_8_ldv_param_3_1_default);
    }
    goto ldv_call_8;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mega_proc_file_dummy_resourceless_instance_9(void *arg0 )
{
  int (*ldv_9_callback_show)(struct seq_file * , void * ) ;
  struct seq_file *ldv_9_container_struct_seq_file_ptr ;
  void *ldv_9_ldv_param_3_1_default ;
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
    ldv_9_ldv_param_3_1_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_show, ldv_9_container_struct_seq_file_ptr,
                                                 ldv_9_ldv_param_3_1_default);
    ldv_free(ldv_9_ldv_param_3_1_default);
    }
    goto ldv_call_9;
  } else {
    return;
  }
  return;
}
}
void ldv_unregister_chrdev(void *arg0 , unsigned int arg1 , char *arg2 )
{
  struct file_operations *ldv_24_file_operations_file_operations ;
  {
  {
  ldv_dispatch_deregister_24_1(ldv_24_file_operations_file_operations);
  }
  return;
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_sub(i, v);
  }
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
  }
  return;
}
}
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap();
  }
  return (tmp);
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
__inline static int register_chrdev(unsigned int major___0 , char const *name ,
                                    struct file_operations const *fops )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int res1 ;
  int tmp___0 ;
  int res2 ;
  int tmp___1 ;
  {
  {
  tmp = ldv_register_chrdev_90(major___0, name, fops);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_fs_char_dev_register_chrdev((int )major___0);
  res1 = tmp___0;
  tmp___1 = ldv_linux_usb_gadget_register_chrdev((int )major___0);
  res2 = tmp___1;
  ldv_assume(res1 == res2);
  }
  return (res1);
  return (ldv_func_res);
}
}
__inline static void unregister_chrdev(unsigned int major___0 , char const *name )
{
  {
  {
  ldv_unregister_chrdev_91(major___0, name);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_99(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN();
  spin_unlock_irq(lock);
  }
  return;
}
}
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_megadev_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_megadev_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_int_mtx_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_wait_for_completion_113(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_int_waitq_of_NOT_ARG_SIGN();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_int_mtx_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static struct Scsi_Host *ldv_scsi_host_alloc_115(struct scsi_host_template *ldv_func_arg1 ,
                                                 int ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  struct Scsi_Host *tmp ;
  struct Scsi_Host *tmp___0 ;
  {
  {
  tmp = scsi_host_alloc(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_scsi_host_alloc(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_116(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
__inline static void ldv_init_completion_117(struct completion *x )
{
  {
  {
  ldv_linux_kernel_sched_completion_init_completion_int_waitq_of_NOT_ARG_SIGN();
  }
  return;
}
}
__inline static int ldv_scsi_add_host_118(struct Scsi_Host *host , struct device *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = scsi_add_host(host, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_scsi_add_host(ldv_func_res, host, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_119(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_iounmap_120(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_scsi_remove_host_122(struct Scsi_Host *ldv_func_arg1 )
{
  {
  {
  scsi_remove_host(ldv_func_arg1);
  ldv_scsi_remove_host((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_123(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv___pci_register_driver_124(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
__inline static int ldv_register_chrdev_125(unsigned int major___0 , char const *name ,
                                            struct file_operations const *fops )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_chrdev(major___0, name, fops);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_chrdev(ldv_func_res, major___0, (char *)name, (struct file_operations *)fops);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static void ldv_unregister_chrdev_126(unsigned int major___0 , char const *name )
{
  {
  {
  unregister_chrdev(major___0, name);
  ldv_unregister_chrdev((void *)0, major___0, (char *)name);
  }
  return;
}
}
static void ldv_pci_unregister_driver_127(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_128(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_129(void)
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
static void ldv_ldv_check_final_state_130(void)
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
static void ldv_ldv_initialize_131(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_132(void)
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
static int ldv_ldv_post_probe_133(int retval )
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
static void ldv_ldv_pre_probe_134(void)
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
static int ldv_ldv_post_probe_135(int retval )
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
static void ldv_ldv_pre_probe_136(void)
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
static int ldv_ldv_post_probe_137(int retval )
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
int ldv_linux_fs_char_dev_register_chrdev(int major___0 )
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
    if (major___0 == 0) {
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
int ldv_linux_usb_gadget_register_chrdev(int major___0 )
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
    if (major___0 == 0) {
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN ;
void ldv_linux_kernel_locking_mutex_mutex_lock_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_int_mtx_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_int_mtx_of_NOT_ARG_SIGN(atomic_t *cnt ,
                                                                                     struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_int_mtx_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_int_mtx_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN = 0;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_megadev_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_megadev_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_megadev_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_megadev_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_megadev_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_megadev_mutex(atomic_t *cnt ,
                                                                           struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_megadev_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_megadev_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex = 0;
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
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_int_mtx_of_NOT_ARG_SIGN);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_megadev_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
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
static int ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2);
  ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_host_lock_of_Scsi_Host(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_host_lock_of_Scsi_Host(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_host_lock_of_Scsi_Host(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_host_lock_of_Scsi_Host();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_host_lock_of_Scsi_Host(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_host_lock_of_Scsi_Host(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2) {
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
static int ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN = 0;
void ldv_linux_kernel_sched_completion_init_completion_int_waitq_of_NOT_ARG_SIGN(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_int_waitq_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN != 0);
  ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_int_waitq_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN != 0);
  ldv_linux_kernel_sched_completion_completion_int_waitq_of_NOT_ARG_SIGN = 2;
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
void *external_alloc(void);
void *PDE_DATA(const struct inode *arg0) {
  return (void *)external_alloc();
}
void ___might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __compiletime_assert_669() {
  return;
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void *external_alloc(void);
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return (struct resource *)external_alloc();
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
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
void might_fault() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct pci_dev *pci_alloc_dev(struct pci_bus *arg0) {
  return (struct pci_dev *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return (struct proc_dir_entry *)external_alloc();
}
void *external_alloc(void);
void *proc_get_parent_data(const struct inode *arg0) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return (struct proc_dir_entry *)external_alloc();
}
void *external_alloc(void);
struct proc_dir_entry *proc_mkdir_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, void *arg3) {
  return (struct proc_dir_entry *)external_alloc();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *scsi_bios_ptable(struct block_device *arg0) {
  return (unsigned char *)external_alloc();
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
void *external_alloc(void);
const char *scsi_device_type(unsigned int arg0) {
  return (const char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
void *external_alloc(void);
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return (struct Scsi_Host *)external_alloc();
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_partsize(unsigned char *arg0, unsigned long arg1, unsigned int *arg2, unsigned int *arg3, unsigned int *arg4) {
  return __VERIFIER_nondet_int();
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_write(struct seq_file *arg0, const void *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
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
