typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
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
typedef __u16 __le16;
typedef __u32 __le32;
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
typedef __u32 uint32_t;
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
struct device;
struct usb_device;
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
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
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
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
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_18 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct____missing_field_name_20 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion____missing_field_name_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_25 __annonCompField10 ;
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
struct __anonstruct____missing_field_name_30 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_31 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct____missing_field_name_30 __annonCompField14 ;
   struct __anonstruct____missing_field_name_31 __annonCompField15 ;
};
union __anonunion____missing_field_name_32 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_29 __annonCompField16 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_32 __annonCompField17 ;
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
struct lockdep_map;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_101 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_100 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_101 __annonCompField20 ;
};
struct spinlock {
   union __anonunion____missing_field_name_100 __annonCompField21 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_102 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_102 rwlock_t;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
struct __anonstruct_nodemask_t_104 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_104 nodemask_t;
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
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kref {
   atomic_t refcount ;
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
struct dentry;
struct iattr;
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
union __anonunion_u_134 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_135 {
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
   union __anonunion_u_134 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_135 __annonCompField33 ;
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
struct __anonstruct_kuid_t_136 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_136 kuid_t;
struct __anonstruct_kgid_t_137 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_137 kgid_t;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_139 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField34 ;
};
struct lockref {
   union __anonunion____missing_field_name_138 __annonCompField35 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_141 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_140 {
   struct __anonstruct____missing_field_name_141 __annonCompField36 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_142 {
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
   union __anonunion_d_u_142 d_u ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
struct __anonstruct_kprojid_t_144 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_144 kprojid_t;
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
union __anonunion____missing_field_name_145 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_145 __annonCompField38 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_147 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_146 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_147 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_146 read_descriptor_t;
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
union __anonunion____missing_field_name_148 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_149 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_150 {
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
   union __anonunion____missing_field_name_148 __annonCompField39 ;
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
   union __anonunion____missing_field_name_149 __annonCompField40 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_150 __annonCompField41 ;
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
union __anonunion_f_u_151 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_151 f_u ;
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
struct __anonstruct_afs_153 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_152 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_153 afs ;
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
   union __anonunion_fl_u_152 fl_u ;
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
struct __anonstruct____missing_field_name_156 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_157 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_155 {
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_158 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_160 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_164 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_163 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_164 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_162 {
   union __anonunion____missing_field_name_163 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_161 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_162 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_159 {
   union __anonunion____missing_field_name_160 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_166 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_165 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_166 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_167 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct __anonstruct____missing_field_name_159 __annonCompField52 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   union __anonunion____missing_field_name_167 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_169 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_168 {
   struct __anonstruct_linear_169 linear ;
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
   union __anonunion_shared_168 shared ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_170 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_170 sigset_t;
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
struct __anonstruct__kill_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_173 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_174 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_176 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_177 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_178 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_171 {
   int _pad[28U] ;
   struct __anonstruct__kill_172 _kill ;
   struct __anonstruct__timer_173 _timer ;
   struct __anonstruct__rt_174 _rt ;
   struct __anonstruct__sigchld_175 _sigchld ;
   struct __anonstruct__sigfault_176 _sigfault ;
   struct __anonstruct__sigpoll_177 _sigpoll ;
   struct __anonstruct__sigsys_178 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_171 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_183 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_184 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_186 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_185 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_186 __annonCompField60 ;
};
union __anonunion_type_data_187 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_189 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_188 {
   union __anonunion_payload_189 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_183 __annonCompField58 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   union __anonunion_type_data_187 type_data ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
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
struct scatterlist;
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
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_191 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_191 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
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
union __anonunion____missing_field_name_196 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_196 __annonCompField64 ;
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
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_197 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_197 __annonCompField65 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_198 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_198 __annonCompField66 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
union __anonunion_m_199 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_199 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_200 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_200 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_201 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_201 __annonCompField67 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_202 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_202 __annonCompField68 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_203 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_203 __annonCompField69 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_204 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_204 __annonCompField70 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_212 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_212 fmt ;
};
union __anonunion_parm_213 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_213 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_216 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_216 __annonCompField75 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_223 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_224 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_225 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_222 {
   struct __anonstruct_v4l_223 v4l ;
   struct __anonstruct_fb_224 fb ;
   struct __anonstruct_alsa_225 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_222 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
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
struct __anonstruct____missing_field_name_228 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_229 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_227 {
   struct __anonstruct____missing_field_name_228 __annonCompField77 ;
   struct __anonstruct____missing_field_name_229 __annonCompField78 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_227 __annonCompField79 ;
};
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_fh;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_230 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_231 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_232 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_233 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_230 __annonCompField80 ;
   union __anonunion____missing_field_name_231 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_232 cur ;
   union __anonunion____missing_field_name_233 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_235 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_236 {
   char const *name ;
};
struct __anonstruct_i2c_237 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_238 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_234 {
   struct __anonstruct_of_235 of ;
   struct __anonstruct_device_name_236 device_name ;
   struct __anonstruct_i2c_237 i2c ;
   struct __anonstruct_custom_238 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_234 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_239 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_239 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct framerates {
   u8 const *rates ;
   int nrates ;
};
struct cam {
   struct v4l2_pix_format const *cam_mode ;
   struct framerates const *mode_framerates ;
   u32 bulk_size ;
   u32 input_flags ;
   u8 nmodes ;
   u8 no_urb_create ;
   u8 bulk_nurbs ;
   u8 bulk ;
   u8 npkt ;
   u8 needs_full_bandwidth ;
};
struct gspca_dev;
struct gspca_frame;
struct sd_desc {
   char const *name ;
   int (*config)(struct gspca_dev * , struct usb_device_id const * ) ;
   int (*init)(struct gspca_dev * ) ;
   int (*init_controls)(struct gspca_dev * ) ;
   int (*start)(struct gspca_dev * ) ;
   void (*pkt_scan)(struct gspca_dev * , u8 * , int ) ;
   int (*isoc_init)(struct gspca_dev * ) ;
   int (*isoc_nego)(struct gspca_dev * ) ;
   void (*stopN)(struct gspca_dev * ) ;
   void (*stop0)(struct gspca_dev * ) ;
   void (*dq_callback)(struct gspca_dev * ) ;
   int (*get_jcomp)(struct gspca_dev * , struct v4l2_jpegcompression * ) ;
   int (*set_jcomp)(struct gspca_dev * , struct v4l2_jpegcompression const * ) ;
   void (*get_streamparm)(struct gspca_dev * , struct v4l2_streamparm * ) ;
   void (*set_streamparm)(struct gspca_dev * , struct v4l2_streamparm * ) ;
   void (*try_fmt)(struct gspca_dev * , struct v4l2_format * ) ;
   int (*enum_framesizes)(struct gspca_dev * , struct v4l2_frmsizeenum * ) ;
   int (*set_register)(struct gspca_dev * , struct v4l2_dbg_register const * ) ;
   int (*get_register)(struct gspca_dev * , struct v4l2_dbg_register * ) ;
   int (*get_chip_info)(struct gspca_dev * , struct v4l2_dbg_chip_info * ) ;
   int (*int_pkt_scan)(struct gspca_dev * , u8 * , int ) ;
   u8 other_input ;
};
enum gspca_packet_type {
    DISCARD_PACKET = 0,
    FIRST_PACKET = 1,
    INTER_PACKET = 2,
    LAST_PACKET = 3
} ;
struct gspca_frame {
   __u8 *data ;
   int vma_use_count ;
   struct v4l2_buffer v4l2_buf ;
};
struct __anonstruct____missing_field_name_240 {
   struct v4l2_ctrl *autogain ;
   struct v4l2_ctrl *exposure ;
   struct v4l2_ctrl *gain ;
   int exp_too_low_cnt ;
   int exp_too_high_cnt ;
};
struct gspca_dev {
   struct video_device vdev ;
   struct module *module ;
   struct v4l2_device v4l2_dev ;
   struct usb_device *dev ;
   struct file *capt_file ;
   struct input_dev *input_dev ;
   char phys[64U] ;
   struct cam cam ;
   struct sd_desc const *sd_desc ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct __anonstruct____missing_field_name_240 __annonCompField83 ;
   __u8 *usb_buf ;
   struct urb *urb[4U] ;
   struct urb *int_urb ;
   __u8 *frbuf ;
   struct gspca_frame frame[16U] ;
   u8 *image ;
   __u32 frsz ;
   u32 image_len ;
   atomic_t fr_q ;
   atomic_t fr_i ;
   signed char fr_queue[16U] ;
   char nframes ;
   u8 fr_o ;
   __u8 last_packet_type ;
   __s8 empty_packet ;
   __u8 streaming ;
   __u8 curr_mode ;
   struct v4l2_pix_format pixfmt ;
   __u32 sequence ;
   wait_queue_head_t wq ;
   struct mutex usb_lock ;
   struct mutex queue_lock ;
   int usb_err ;
   u16 pkt_size ;
   char frozen ;
   char present ;
   char nbufread ;
   char memory ;
   __u8 iface ;
   __u8 alt ;
   u8 audio ;
};
struct sd {
   struct gspca_dev gspca_dev ;
   struct v4l2_ctrl *lighting ;
   u8 model ;
   u8 input_index ;
   u8 button_state ;
   u8 stop_on_control_change ;
   u8 sof_read ;
   u8 sof_len ;
};
struct __anonstruct_cv_246 {
   unsigned short cv1 ;
   unsigned short cv2 ;
   unsigned short cv3 ;
};
struct __anonstruct_sv_248 {
   unsigned short sv1 ;
   unsigned short sv2 ;
   unsigned short sv3 ;
   unsigned short sv4 ;
};
typedef int ldv_func_ret_type;
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
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_28(int ldv_func_arg1 ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern struct usb_interface *usb_ifnum_to_if(struct usb_device const * , unsigned int ) ;
extern struct usb_host_interface *usb_altnum_to_altsetting(struct usb_interface const * ,
                                                           unsigned int ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_26(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_27(struct usb_driver *ldv_func_arg1 ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 1U, code, value != 0);
  }
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  {
  input_event(dev, 0U, 0U, 0);
  }
  return;
}
}
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern void v4l2_ctrl_grab(struct v4l2_ctrl * , bool ) ;
extern s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl * ) ;
extern int gspca_debug ;
extern int gspca_dev_probe2(struct usb_interface * , struct usb_device_id const * ,
                            struct sd_desc const * , int , struct module * ) ;
extern void gspca_disconnect(struct usb_interface * ) ;
extern void gspca_frame_add(struct gspca_dev * , enum gspca_packet_type , u8 const * ,
                            int ) ;
extern int gspca_suspend(struct usb_interface * , pm_message_t ) ;
extern int gspca_resume(struct usb_interface * ) ;
static int ibm_netcam_pro ;
static int rca_input ;
static void sd_stop0(struct gspca_dev *gspca_dev ) ;
static struct v4l2_pix_format const cif_yuv_mode[2U] = { {176U, 144U, 1448364355U, 1U, 176U, 38020U, 8U, 0U},
        {352U, 288U, 1448364355U, 1U, 352U, 152068U, 8U, 0U}};
static struct v4l2_pix_format const vga_yuv_mode[3U] = { {160U, 120U, 1448364355U, 1U, 160U, 28804U, 8U, 0U},
        {320U, 240U, 1448364355U, 1U, 320U, 115204U, 8U, 0U},
        {640U, 480U, 1448364355U, 1U, 640U, 460804U, 8U, 0U}};
static struct v4l2_pix_format const model0_mode[3U] = { {160U, 120U, 1448364355U, 1U, 160U, 28804U, 8U, 0U},
        {176U, 144U, 1448364355U, 1U, 176U, 38020U, 8U, 0U},
        {320U, 240U, 1448364355U, 1U, 320U, 115204U, 8U, 0U}};
static struct v4l2_pix_format const model2_mode[4U] = { {160U, 120U, 1448364355U, 1U, 160U, 28804U, 8U, 0U},
        {176U, 144U, 1448364355U, 1U, 176U, 38020U, 8U, 0U},
        {320U, 240U, 1195528775U, 1U, 320U, 76804U, 8U, 0U},
        {352U, 288U, 1195528775U, 1U, 352U, 101380U, 8U, 0U}};
static u16 const rca_initdata[534U][3U] =
  { { 0U, 0U, 268U},
   { 0U, 6U, 300U},
   { 0U, 120U, 301U},
   { 0U, 70U, 303U},
   { 0U, 53569U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65192U, 292U},
   { 1U, 0U, 278U},
   { 0U, 100U, 278U},
   { 1U, 0U, 277U},
   { 0U, 3U, 277U},
   { 0U, 8U, 291U},
   { 0U, 0U, 279U},
   { 0U, 0U, 274U},
   { 0U, 128U, 256U},
   { 0U, 0U, 256U},
   { 1U, 0U, 278U},
   { 0U, 96U, 278U},
   { 0U, 2U, 274U},
   { 0U, 0U, 291U},
   { 0U, 1U, 279U},
   { 0U, 64U, 264U},
   { 0U, 25U, 300U},
   { 0U, 64U, 278U},
   { 0U, 10U, 277U},
   { 0U, 11U, 277U},
   { 0U, 120U, 301U},
   { 0U, 70U, 303U},
   { 0U, 53569U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65192U, 292U},
   { 0U, 100U, 278U},
   { 0U, 0U, 277U},
   { 0U, 1U, 277U},
   { 0U, 65535U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 170U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65535U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 242U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 15U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65535U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 248U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 252U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65535U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 249U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 60U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65535U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 39U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 25U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 33U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 6U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 69U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 42U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 14U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 43U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 244U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 44U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 4U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 45U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 20U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 46U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 3U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 47U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 3U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 20U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 83U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 0U, 257U},
   { 0U, 160U, 259U},
   { 0U, 120U, 261U},
   { 0U, 0U, 266U},
   { 0U, 36U, 267U},
   { 0U, 40U, 281U},
   { 0U, 136U, 283U},
   { 0U, 2U, 285U},
   { 0U, 3U, 286U},
   { 0U, 0U, 297U},
   { 0U, 252U, 299U},
   { 0U, 8U, 258U},
   { 0U, 0U, 260U},
   { 0U, 8U, 282U},
   { 0U, 40U, 284U},
   { 0U, 33U, 298U},
   { 0U, 0U, 280U},
   { 0U, 0U, 306U},
   { 0U, 0U, 265U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 49U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 220U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 50U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 32U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 1U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 64U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 55U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 48U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 65529U, 292U},
   { 0U, 134U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 56U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 8U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 0U, 295U},
   { 0U, 65528U, 292U},
   { 0U, 65533U, 292U},
   { 0U, 65530U, 292U},
   { 0U, 3U, 273U}};
static int cit_write_reg(struct gspca_dev *gspca_dev , u16 value , u16 index )
{
  struct usb_device *udev ;
  int err ;
  unsigned int tmp ;
  {
  {
  udev = gspca_dev->dev;
  tmp = __create_pipe(udev, 0U);
  err = usb_control_msg(udev, tmp | 2147483648U, 0, 66, (int )value, (int )index,
                        (void *)0, 0, 1000);
  }
  if (err < 0) {
    {
    printk("\vgspca_xirlink_cit: Failed to write a register (index 0x%04X, value 0x%02X, error %d)\n",
           (int )index, (int )value, err);
    }
  } else {
  }
  return (0);
}
}
static int cit_read_reg(struct gspca_dev *gspca_dev , u16 index , int verbose )
{
  struct usb_device *udev ;
  __u8 *buf ;
  int res ;
  unsigned int tmp ;
  {
  {
  udev = gspca_dev->dev;
  buf = gspca_dev->usb_buf;
  tmp = __create_pipe(udev, 0U);
  res = usb_control_msg(udev, tmp | 2147483776U, 1, 194, 0, (int )index, (void *)buf,
                        8, 1000);
  }
  if (res < 0) {
    {
    printk("\vgspca_xirlink_cit: Failed to read a register (index 0x%04X, error %d)\n",
           (int )index, res);
    }
    return (res);
  } else {
  }
  if (verbose != 0) {
    if (gspca_debug > 0) {
      {
      printk("\017%s: Register %04x value: %02x", (char *)(& gspca_dev->v4l2_dev.name),
             (int )index, (int )*buf);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void cit_send_FF_04_02(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_write_reg(gspca_dev, 255, 295);
  cit_write_reg(gspca_dev, 4, 292);
  cit_write_reg(gspca_dev, 2, 292);
  }
  return;
}
}
static void cit_send_00_04_06(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 4, 292);
  cit_write_reg(gspca_dev, 6, 292);
  }
  return;
}
}
static void cit_send_x_00(struct gspca_dev *gspca_dev , unsigned short x )
{
  {
  {
  cit_write_reg(gspca_dev, (int )x, 295);
  cit_write_reg(gspca_dev, 0, 292);
  }
  return;
}
}
static void cit_send_x_00_05(struct gspca_dev *gspca_dev , unsigned short x )
{
  {
  {
  cit_send_x_00(gspca_dev, (int )x);
  cit_write_reg(gspca_dev, 5, 292);
  }
  return;
}
}
static void cit_send_x_00_05_02(struct gspca_dev *gspca_dev , unsigned short x )
{
  {
  {
  cit_write_reg(gspca_dev, (int )x, 295);
  cit_write_reg(gspca_dev, 0, 292);
  cit_write_reg(gspca_dev, 5, 292);
  cit_write_reg(gspca_dev, 2, 292);
  }
  return;
}
}
static void cit_send_x_01_00_05(struct gspca_dev *gspca_dev , u16 x )
{
  {
  {
  cit_write_reg(gspca_dev, (int )x, 295);
  cit_write_reg(gspca_dev, 1, 292);
  cit_write_reg(gspca_dev, 0, 292);
  cit_write_reg(gspca_dev, 5, 292);
  }
  return;
}
}
static void cit_send_x_00_05_02_01(struct gspca_dev *gspca_dev , u16 x )
{
  {
  {
  cit_write_reg(gspca_dev, (int )x, 295);
  cit_write_reg(gspca_dev, 0, 292);
  cit_write_reg(gspca_dev, 5, 292);
  cit_write_reg(gspca_dev, 2, 292);
  cit_write_reg(gspca_dev, 1, 292);
  }
  return;
}
}
static void cit_send_x_00_05_02_08_01(struct gspca_dev *gspca_dev , u16 x )
{
  {
  {
  cit_write_reg(gspca_dev, (int )x, 295);
  cit_write_reg(gspca_dev, 0, 292);
  cit_write_reg(gspca_dev, 5, 292);
  cit_write_reg(gspca_dev, 2, 292);
  cit_write_reg(gspca_dev, 8, 292);
  cit_write_reg(gspca_dev, 1, 292);
  }
  return;
}
}
static void cit_Packet_Format1(struct gspca_dev *gspca_dev , u16 fkey , u16 val )
{
  {
  {
  cit_send_x_01_00_05(gspca_dev, 136);
  cit_send_x_00_05(gspca_dev, (int )fkey);
  cit_send_x_00_05_02_08_01(gspca_dev, (int )val);
  cit_send_x_00_05(gspca_dev, 136);
  cit_send_x_00_05_02_01(gspca_dev, (int )fkey);
  cit_send_x_00_05(gspca_dev, 137);
  cit_send_x_00(gspca_dev, (int )fkey);
  cit_send_00_04_06(gspca_dev);
  cit_read_reg(gspca_dev, 294, 0);
  cit_send_FF_04_02(gspca_dev);
  }
  return;
}
}
static void cit_PacketFormat2(struct gspca_dev *gspca_dev , u16 fkey , u16 val )
{
  {
  {
  cit_send_x_01_00_05(gspca_dev, 136);
  cit_send_x_00_05(gspca_dev, (int )fkey);
  cit_send_x_00_05_02(gspca_dev, (int )val);
  }
  return;
}
}
static void cit_model2_Packet2(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_write_reg(gspca_dev, 255, 301);
  cit_write_reg(gspca_dev, 65187, 292);
  }
  return;
}
}
static void cit_model2_Packet1(struct gspca_dev *gspca_dev , u16 v1 , u16 v2 )
{
  {
  {
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 255, 302);
  cit_write_reg(gspca_dev, (int )v1, 303);
  cit_write_reg(gspca_dev, 255, 304);
  cit_write_reg(gspca_dev, 50969, 292);
  cit_write_reg(gspca_dev, (int )v2, 295);
  cit_model2_Packet2(gspca_dev);
  }
  return;
}
}
static void cit_model3_Packet1(struct gspca_dev *gspca_dev , u16 v1 , u16 v2 )
{
  {
  {
  cit_write_reg(gspca_dev, 120, 301);
  cit_write_reg(gspca_dev, (int )v1, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, (int )v2, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  }
  return;
}
}
static void cit_model4_Packet1(struct gspca_dev *gspca_dev , u16 v1 , u16 v2 )
{
  {
  {
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, (int )v1, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, (int )v2, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  }
  return;
}
}
static void cit_model4_BrightnessPacket(struct gspca_dev *gspca_dev , u16 val )
{
  {
  {
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 38, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, (int )val, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 56, 301);
  cit_write_reg(gspca_dev, 4, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  }
  return;
}
}
static int sd_config(struct gspca_dev *gspca_dev , struct usb_device_id const *id )
{
  struct sd *sd ;
  struct cam *cam ;
  {
  sd = (struct sd *)gspca_dev;
  sd->model = (u8 )id->driver_info;
  if ((unsigned int )sd->model == 3U && ibm_netcam_pro != 0) {
    sd->model = 5U;
  } else {
  }
  cam = & gspca_dev->cam;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  cam->cam_mode = (struct v4l2_pix_format const *)(& model0_mode);
  cam->nmodes = 3U;
  sd->sof_len = 4U;
  goto ldv_30194;
  case_1:
  cam->cam_mode = (struct v4l2_pix_format const *)(& cif_yuv_mode);
  cam->nmodes = 2U;
  sd->sof_len = 4U;
  goto ldv_30194;
  case_2:
  cam->cam_mode = (struct v4l2_pix_format const *)(& model2_mode) + 1UL;
  cam->nmodes = 3U;
  goto ldv_30194;
  case_3:
  cam->cam_mode = (struct v4l2_pix_format const *)(& vga_yuv_mode);
  cam->nmodes = 3U;
  sd->stop_on_control_change = 1U;
  sd->sof_len = 4U;
  goto ldv_30194;
  case_4:
  cam->cam_mode = (struct v4l2_pix_format const *)(& model2_mode);
  cam->nmodes = 4U;
  goto ldv_30194;
  case_5:
  cam->cam_mode = (struct v4l2_pix_format const *)(& vga_yuv_mode);
  cam->nmodes = 2U;
  cam->input_flags = 32U;
  sd->stop_on_control_change = 1U;
  sd->sof_len = 4U;
  goto ldv_30194;
  switch_break: ;
  }
  ldv_30194: ;
  return (0);
}
}
static int cit_init_model0(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_write_reg(gspca_dev, 0, 256);
  cit_write_reg(gspca_dev, 1, 274);
  cit_write_reg(gspca_dev, 0, 1024);
  cit_write_reg(gspca_dev, 1, 1024);
  cit_write_reg(gspca_dev, 0, 1056);
  cit_write_reg(gspca_dev, 1, 1056);
  cit_write_reg(gspca_dev, 13, 1033);
  cit_write_reg(gspca_dev, 2, 1034);
  cit_write_reg(gspca_dev, 24, 1029);
  cit_write_reg(gspca_dev, 8, 1077);
  cit_write_reg(gspca_dev, 38, 1035);
  cit_write_reg(gspca_dev, 7, 1079);
  cit_write_reg(gspca_dev, 21, 1071);
  cit_write_reg(gspca_dev, 43, 1081);
  cit_write_reg(gspca_dev, 38, 1082);
  cit_write_reg(gspca_dev, 8, 1080);
  cit_write_reg(gspca_dev, 30, 1067);
  cit_write_reg(gspca_dev, 65, 1068);
  }
  return (0);
}
}
static int cit_init_ibm_netcam_pro(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_read_reg(gspca_dev, 296, 1);
  cit_write_reg(gspca_dev, 3, 307);
  cit_write_reg(gspca_dev, 0, 279);
  cit_write_reg(gspca_dev, 8, 291);
  cit_write_reg(gspca_dev, 0, 256);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 2, 274);
  cit_write_reg(gspca_dev, 0, 307);
  cit_write_reg(gspca_dev, 0, 291);
  cit_write_reg(gspca_dev, 1, 279);
  cit_write_reg(gspca_dev, 64, 264);
  cit_write_reg(gspca_dev, 25, 300);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 2, 277);
  cit_write_reg(gspca_dev, 11, 277);
  cit_write_reg(gspca_dev, 120, 301);
  cit_write_reg(gspca_dev, 1, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 121, 301);
  cit_write_reg(gspca_dev, 255, 304);
  cit_write_reg(gspca_dev, 52545, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_read_reg(gspca_dev, 294, 1);
  cit_model3_Packet1(gspca_dev, 0, 0);
  cit_model3_Packet1(gspca_dev, 0, 1);
  cit_model3_Packet1(gspca_dev, 11, 0);
  cit_model3_Packet1(gspca_dev, 12, 8);
  cit_model3_Packet1(gspca_dev, 13, 58);
  cit_model3_Packet1(gspca_dev, 14, 96);
  cit_model3_Packet1(gspca_dev, 15, 96);
  cit_model3_Packet1(gspca_dev, 16, 8);
  cit_model3_Packet1(gspca_dev, 17, 4);
  cit_model3_Packet1(gspca_dev, 18, 40);
  cit_model3_Packet1(gspca_dev, 19, 2);
  cit_model3_Packet1(gspca_dev, 20, 0);
  cit_model3_Packet1(gspca_dev, 21, 251);
  cit_model3_Packet1(gspca_dev, 22, 2);
  cit_model3_Packet1(gspca_dev, 23, 55);
  cit_model3_Packet1(gspca_dev, 24, 54);
  cit_model3_Packet1(gspca_dev, 30, 0);
  cit_model3_Packet1(gspca_dev, 31, 8);
  cit_model3_Packet1(gspca_dev, 32, 193);
  cit_model3_Packet1(gspca_dev, 33, 52);
  cit_model3_Packet1(gspca_dev, 34, 52);
  cit_model3_Packet1(gspca_dev, 37, 2);
  cit_model3_Packet1(gspca_dev, 40, 34);
  cit_model3_Packet1(gspca_dev, 41, 10);
  cit_model3_Packet1(gspca_dev, 43, 0);
  cit_model3_Packet1(gspca_dev, 44, 0);
  cit_model3_Packet1(gspca_dev, 45, 255);
  cit_model3_Packet1(gspca_dev, 46, 255);
  cit_model3_Packet1(gspca_dev, 47, 255);
  cit_model3_Packet1(gspca_dev, 48, 255);
  cit_model3_Packet1(gspca_dev, 49, 255);
  cit_model3_Packet1(gspca_dev, 50, 7);
  cit_model3_Packet1(gspca_dev, 51, 5);
  cit_model3_Packet1(gspca_dev, 55, 64);
  cit_model3_Packet1(gspca_dev, 57, 0);
  cit_model3_Packet1(gspca_dev, 58, 0);
  cit_model3_Packet1(gspca_dev, 59, 1);
  cit_model3_Packet1(gspca_dev, 60, 0);
  cit_model3_Packet1(gspca_dev, 64, 12);
  cit_model3_Packet1(gspca_dev, 65, 251);
  cit_model3_Packet1(gspca_dev, 66, 2);
  cit_model3_Packet1(gspca_dev, 67, 0);
  cit_model3_Packet1(gspca_dev, 69, 0);
  cit_model3_Packet1(gspca_dev, 70, 0);
  cit_model3_Packet1(gspca_dev, 71, 0);
  cit_model3_Packet1(gspca_dev, 72, 0);
  cit_model3_Packet1(gspca_dev, 73, 0);
  cit_model3_Packet1(gspca_dev, 74, 255);
  cit_model3_Packet1(gspca_dev, 75, 255);
  cit_model3_Packet1(gspca_dev, 76, 255);
  cit_model3_Packet1(gspca_dev, 79, 0);
  cit_model3_Packet1(gspca_dev, 80, 0);
  cit_model3_Packet1(gspca_dev, 81, 2);
  cit_model3_Packet1(gspca_dev, 85, 0);
  cit_model3_Packet1(gspca_dev, 86, 0);
  cit_model3_Packet1(gspca_dev, 87, 0);
  cit_model3_Packet1(gspca_dev, 88, 2);
  cit_model3_Packet1(gspca_dev, 89, 0);
  cit_model3_Packet1(gspca_dev, 92, 22);
  cit_model3_Packet1(gspca_dev, 93, 34);
  cit_model3_Packet1(gspca_dev, 94, 60);
  cit_model3_Packet1(gspca_dev, 95, 80);
  cit_model3_Packet1(gspca_dev, 96, 68);
  cit_model3_Packet1(gspca_dev, 97, 5);
  cit_model3_Packet1(gspca_dev, 106, 126);
  cit_model3_Packet1(gspca_dev, 111, 0);
  cit_model3_Packet1(gspca_dev, 114, 27);
  cit_model3_Packet1(gspca_dev, 115, 5);
  cit_model3_Packet1(gspca_dev, 116, 10);
  cit_model3_Packet1(gspca_dev, 117, 27);
  cit_model3_Packet1(gspca_dev, 118, 42);
  cit_model3_Packet1(gspca_dev, 119, 60);
  cit_model3_Packet1(gspca_dev, 120, 80);
  cit_model3_Packet1(gspca_dev, 123, 0);
  cit_model3_Packet1(gspca_dev, 124, 17);
  cit_model3_Packet1(gspca_dev, 125, 36);
  cit_model3_Packet1(gspca_dev, 126, 67);
  cit_model3_Packet1(gspca_dev, 127, 90);
  cit_model3_Packet1(gspca_dev, 132, 32);
  cit_model3_Packet1(gspca_dev, 133, 51);
  cit_model3_Packet1(gspca_dev, 134, 10);
  cit_model3_Packet1(gspca_dev, 135, 48);
  cit_model3_Packet1(gspca_dev, 136, 112);
  cit_model3_Packet1(gspca_dev, 139, 8);
  cit_model3_Packet1(gspca_dev, 143, 0);
  cit_model3_Packet1(gspca_dev, 144, 6);
  cit_model3_Packet1(gspca_dev, 145, 40);
  cit_model3_Packet1(gspca_dev, 146, 90);
  cit_model3_Packet1(gspca_dev, 147, 130);
  cit_model3_Packet1(gspca_dev, 150, 20);
  cit_model3_Packet1(gspca_dev, 151, 32);
  cit_model3_Packet1(gspca_dev, 152, 0);
  cit_model3_Packet1(gspca_dev, 176, 70);
  cit_model3_Packet1(gspca_dev, 177, 0);
  cit_model3_Packet1(gspca_dev, 178, 0);
  cit_model3_Packet1(gspca_dev, 179, 4);
  cit_model3_Packet1(gspca_dev, 180, 7);
  cit_model3_Packet1(gspca_dev, 182, 2);
  cit_model3_Packet1(gspca_dev, 183, 4);
  cit_model3_Packet1(gspca_dev, 187, 0);
  cit_model3_Packet1(gspca_dev, 188, 1);
  cit_model3_Packet1(gspca_dev, 189, 0);
  cit_model3_Packet1(gspca_dev, 191, 0);
  cit_model3_Packet1(gspca_dev, 192, 200);
  cit_model3_Packet1(gspca_dev, 193, 20);
  cit_model3_Packet1(gspca_dev, 194, 1);
  cit_model3_Packet1(gspca_dev, 195, 0);
  cit_model3_Packet1(gspca_dev, 196, 4);
  cit_model3_Packet1(gspca_dev, 203, 191);
  cit_model3_Packet1(gspca_dev, 204, 191);
  cit_model3_Packet1(gspca_dev, 205, 191);
  cit_model3_Packet1(gspca_dev, 206, 0);
  cit_model3_Packet1(gspca_dev, 207, 32);
  cit_model3_Packet1(gspca_dev, 208, 64);
  cit_model3_Packet1(gspca_dev, 209, 191);
  cit_model3_Packet1(gspca_dev, 209, 191);
  cit_model3_Packet1(gspca_dev, 210, 191);
  cit_model3_Packet1(gspca_dev, 211, 191);
  cit_model3_Packet1(gspca_dev, 234, 8);
  cit_model3_Packet1(gspca_dev, 235, 0);
  cit_model3_Packet1(gspca_dev, 236, 232);
  cit_model3_Packet1(gspca_dev, 237, 1);
  cit_model3_Packet1(gspca_dev, 239, 34);
  cit_model3_Packet1(gspca_dev, 240, 0);
  cit_model3_Packet1(gspca_dev, 242, 40);
  cit_model3_Packet1(gspca_dev, 244, 2);
  cit_model3_Packet1(gspca_dev, 245, 0);
  cit_model3_Packet1(gspca_dev, 250, 0);
  cit_model3_Packet1(gspca_dev, 251, 1);
  cit_model3_Packet1(gspca_dev, 252, 0);
  cit_model3_Packet1(gspca_dev, 253, 0);
  cit_model3_Packet1(gspca_dev, 254, 0);
  cit_model3_Packet1(gspca_dev, 255, 0);
  cit_model3_Packet1(gspca_dev, 190, 3);
  cit_model3_Packet1(gspca_dev, 200, 0);
  cit_model3_Packet1(gspca_dev, 201, 32);
  cit_model3_Packet1(gspca_dev, 202, 64);
  cit_model3_Packet1(gspca_dev, 83, 1);
  cit_model3_Packet1(gspca_dev, 130, 14);
  cit_model3_Packet1(gspca_dev, 131, 32);
  cit_model3_Packet1(gspca_dev, 52, 60);
  cit_model3_Packet1(gspca_dev, 110, 85);
  cit_model3_Packet1(gspca_dev, 98, 5);
  cit_model3_Packet1(gspca_dev, 99, 8);
  cit_model3_Packet1(gspca_dev, 102, 10);
  cit_model3_Packet1(gspca_dev, 103, 6);
  cit_model3_Packet1(gspca_dev, 107, 16);
  cit_model3_Packet1(gspca_dev, 90, 1);
  cit_model3_Packet1(gspca_dev, 91, 10);
  cit_model3_Packet1(gspca_dev, 35, 6);
  cit_model3_Packet1(gspca_dev, 38, 4);
  cit_model3_Packet1(gspca_dev, 54, 105);
  cit_model3_Packet1(gspca_dev, 56, 100);
  cit_model3_Packet1(gspca_dev, 61, 3);
  cit_model3_Packet1(gspca_dev, 62, 1);
  cit_model3_Packet1(gspca_dev, 184, 20);
  cit_model3_Packet1(gspca_dev, 185, 20);
  cit_model3_Packet1(gspca_dev, 230, 4);
  cit_model3_Packet1(gspca_dev, 232, 1);
  }
  return (0);
}
}
static int sd_init(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  {
  cit_init_model0(gspca_dev);
  sd_stop0(gspca_dev);
  }
  goto ldv_30217;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  goto ldv_30217;
  case_5:
  {
  cit_init_ibm_netcam_pro(gspca_dev);
  sd_stop0(gspca_dev);
  }
  goto ldv_30217;
  switch_break: ;
  }
  ldv_30217: ;
  return (0);
}
}
static int cit_set_brightness(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  int i ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_5: ;
  goto ldv_30231;
  case_1:
  {
  cit_Packet_Format1(gspca_dev, 49, (int )((u16 )val));
  cit_Packet_Format1(gspca_dev, 50, (int )((u16 )val));
  cit_Packet_Format1(gspca_dev, 51, (int )((u16 )val));
  }
  goto ldv_30231;
  case_2:
  {
  i = (val * 2254) / 1000 + 96;
  cit_model2_Packet1(gspca_dev, 26, (int )((u16 )i));
  }
  goto ldv_30231;
  case_3:
  i = val;
  if (i <= 11) {
    i = 12;
  } else {
  }
  {
  cit_model3_Packet1(gspca_dev, 54, (int )((u16 )i));
  }
  goto ldv_30231;
  case_4:
  {
  i = (val * 2794) / 1000 + 4;
  cit_model4_BrightnessPacket(gspca_dev, (int )((u16 )i));
  }
  goto ldv_30231;
  switch_break: ;
  }
  ldv_30231: ;
  return (0);
}
}
static int cit_set_contrast(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  int i ;
  int i___0 ;
  int new_contrast ;
  struct __anonstruct_cv_246 cv[7U] ;
  int i___1 ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  {
  i = (val * 1000) / 1333;
  cit_write_reg(gspca_dev, (int )((u16 )i), 1058);
  i = (val * 2000) / 1333;
  cit_write_reg(gspca_dev, (int )((u16 )i), 1059);
  i = (val * 4000) / 1333;
  cit_write_reg(gspca_dev, (int )((u16 )i), 1060);
  i = (val * 8000) / 1333;
  cit_write_reg(gspca_dev, (int )((u16 )i), 1061);
  }
  goto ldv_30243;
  case_2: ;
  case_4: ;
  goto ldv_30243;
  case_1:
  new_contrast = (val * -1000 + 20000) / 1333;
  i___0 = 0;
  goto ldv_30250;
  ldv_30249:
  {
  cit_Packet_Format1(gspca_dev, 20, (int )((u16 )new_contrast));
  cit_send_FF_04_02(gspca_dev);
  i___0 = i___0 + 1;
  }
  ldv_30250: ;
  if (i___0 <= 4) {
    goto ldv_30249;
  } else {
  }
  goto ldv_30243;
  case_3:
  {
  cv[0].cv1 = 5U;
  cv[0].cv2 = 5U;
  cv[0].cv3 = 15U;
  cv[1].cv1 = 4U;
  cv[1].cv2 = 4U;
  cv[1].cv3 = 22U;
  cv[2].cv1 = 2U;
  cv[2].cv2 = 3U;
  cv[2].cv3 = 22U;
  cv[3].cv1 = 2U;
  cv[3].cv2 = 8U;
  cv[3].cv3 = 22U;
  cv[4].cv1 = 1U;
  cv[4].cv2 = 12U;
  cv[4].cv3 = 22U;
  cv[5].cv1 = 1U;
  cv[5].cv2 = 14U;
  cv[5].cv3 = 22U;
  cv[6].cv1 = 1U;
  cv[6].cv2 = 16U;
  cv[6].cv3 = 22U;
  i___1 = val / 3;
  cit_model3_Packet1(gspca_dev, 103, (int )cv[i___1].cv1);
  cit_model3_Packet1(gspca_dev, 91, (int )cv[i___1].cv2);
  cit_model3_Packet1(gspca_dev, 92, (int )cv[i___1].cv3);
  }
  goto ldv_30243;
  case_5:
  {
  cit_model3_Packet1(gspca_dev, 91, (int )((unsigned int )((u16 )val) + 1U));
  }
  goto ldv_30243;
  switch_break: ;
  }
  ldv_30243: ;
  return (0);
}
}
static int cit_set_hue(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1: ;
  case_5: ;
  goto ldv_30268;
  case_2:
  {
  cit_model2_Packet1(gspca_dev, 36, (int )((u16 )val));
  }
  goto ldv_30268;
  case_3: ;
  goto ldv_30268;
  case_4:
  {
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 160, 295);
  cit_write_reg(gspca_dev, 160, 302);
  cit_write_reg(gspca_dev, 160, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, (int )((u16 )val), 301);
  cit_write_reg(gspca_dev, 62789, 292);
  }
  goto ldv_30268;
  switch_break: ;
  }
  ldv_30268: ;
  return (0);
}
}
static int cit_set_sharpness(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  int i ;
  unsigned short sa[7U] ;
  struct __anonstruct_sv_248 sv[7U] ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_2: ;
  case_4: ;
  case_5: ;
  goto ldv_30282;
  case_1:
  sa[0] = 17U;
  sa[1] = 19U;
  sa[2] = 22U;
  sa[3] = 24U;
  sa[4] = 26U;
  sa[5] = 8U;
  sa[6] = 10U;
  i = 0;
  goto ldv_30287;
  ldv_30286:
  {
  cit_PacketFormat2(gspca_dev, 19, (int )sa[val]);
  i = i + 1;
  }
  ldv_30287: ;
  if (i <= 4) {
    goto ldv_30286;
  } else {
  }
  goto ldv_30282;
  case_3:
  {
  sv[0].sv1 = 0U;
  sv[0].sv2 = 0U;
  sv[0].sv3 = 5U;
  sv[0].sv4 = 20U;
  sv[1].sv1 = 1U;
  sv[1].sv2 = 4U;
  sv[1].sv3 = 5U;
  sv[1].sv4 = 20U;
  sv[2].sv1 = 2U;
  sv[2].sv2 = 4U;
  sv[2].sv3 = 5U;
  sv[2].sv4 = 20U;
  sv[3].sv1 = 3U;
  sv[3].sv2 = 4U;
  sv[3].sv3 = 5U;
  sv[3].sv4 = 20U;
  sv[4].sv1 = 3U;
  sv[4].sv2 = 5U;
  sv[4].sv3 = 5U;
  sv[4].sv4 = 20U;
  sv[5].sv1 = 3U;
  sv[5].sv2 = 6U;
  sv[5].sv3 = 5U;
  sv[5].sv4 = 20U;
  sv[6].sv1 = 3U;
  sv[6].sv2 = 7U;
  sv[6].sv3 = 5U;
  sv[6].sv4 = 20U;
  cit_model3_Packet1(gspca_dev, 96, (int )sv[val].sv1);
  cit_model3_Packet1(gspca_dev, 97, (int )sv[val].sv2);
  cit_model3_Packet1(gspca_dev, 98, (int )sv[val].sv3);
  cit_model3_Packet1(gspca_dev, 99, (int )sv[val].sv4);
  }
  goto ldv_30282;
  switch_break: ;
  }
  ldv_30282: ;
  return (0);
}
}
static void cit_set_lighting(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  int i ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  goto ldv_30306;
  case_1:
  i = 0;
  goto ldv_30310;
  ldv_30309:
  {
  cit_Packet_Format1(gspca_dev, 39, (int )((u16 )val));
  i = i + 1;
  }
  ldv_30310: ;
  if (i <= 4) {
    goto ldv_30309;
  } else {
  }
  goto ldv_30306;
  switch_break: ;
  }
  ldv_30306: ;
  return;
}
}
static void cit_set_hflip(struct gspca_dev *gspca_dev , s32 val )
{
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (val != 0) {
    {
    cit_write_reg(gspca_dev, 32, 277);
    }
  } else {
    {
    cit_write_reg(gspca_dev, 64, 277);
    }
  }
  goto ldv_30318;
  case_1: ;
  case_2: ;
  case_3: ;
  case_4: ;
  case_5: ;
  goto ldv_30318;
  switch_break: ;
  }
  ldv_30318: ;
  return;
}
}
static int cit_restart_stream(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1:
  {
  cit_write_reg(gspca_dev, 1, 276);
  }
  case_2: ;
  case_4:
  {
  cit_write_reg(gspca_dev, 192, 268);
  usb_clear_halt(gspca_dev->dev, (int )(gspca_dev->urb[0])->pipe);
  }
  goto ldv_30332;
  case_3: ;
  case_5:
  {
  cit_write_reg(gspca_dev, 1, 276);
  cit_write_reg(gspca_dev, 192, 268);
  usb_clear_halt(gspca_dev->dev, (int )(gspca_dev->urb[0])->pipe);
  cit_write_reg(gspca_dev, 1, 275);
  }
  goto ldv_30332;
  switch_break: ;
  }
  ldv_30332:
  sd->sof_read = 0U;
  return (0);
}
}
static int cit_get_packet_size(struct gspca_dev *gspca_dev )
{
  struct usb_host_interface *alt ;
  struct usb_interface *intf ;
  {
  {
  intf = usb_ifnum_to_if((struct usb_device const *)gspca_dev->dev, (unsigned int )gspca_dev->iface);
  alt = usb_altnum_to_altsetting((struct usb_interface const *)intf, (unsigned int )gspca_dev->alt);
  }
  if ((unsigned long )alt == (unsigned long )((struct usb_host_interface *)0)) {
    {
    printk("\vgspca_xirlink_cit: Couldn\'t get altsetting\n");
    }
    return (-5);
  } else {
  }
  return ((int )(alt->endpoint)->desc.wMaxPacketSize);
}
}
static int cit_get_clock_div(struct gspca_dev *gspca_dev )
{
  int clock_div ;
  int fps[8U] ;
  int packet_size ;
  {
  {
  clock_div = 7;
  fps[0] = 30;
  fps[1] = 25;
  fps[2] = 20;
  fps[3] = 15;
  fps[4] = 12;
  fps[5] = 8;
  fps[6] = 6;
  fps[7] = 3;
  packet_size = cit_get_packet_size(gspca_dev);
  }
  if (packet_size < 0) {
    return (packet_size);
  } else {
  }
  goto ldv_30347;
  ldv_30346:
  clock_div = clock_div - 1;
  ldv_30347: ;
  if (clock_div > 3 && (__u32 )(packet_size * 1000) > (((gspca_dev->pixfmt.width * gspca_dev->pixfmt.height) * (__u32 )fps[clock_div + -1]) * 3U) / 2U) {
    goto ldv_30346;
  } else {
  }
  if (gspca_debug > 0) {
    {
    printk("\017%s: PacketSize: %d, res: %dx%d -> using clockdiv: %d (%d fps)", (char *)(& gspca_dev->v4l2_dev.name),
           packet_size, gspca_dev->pixfmt.width, gspca_dev->pixfmt.height, clock_div,
           fps[clock_div]);
    }
  } else {
  }
  return (clock_div);
}
}
static int cit_start_model0(struct gspca_dev *gspca_dev )
{
  unsigned short compression ;
  int clock_div ;
  {
  {
  compression = 0U;
  clock_div = cit_get_clock_div(gspca_dev);
  }
  if (clock_div < 0) {
    return (clock_div);
  } else {
  }
  {
  cit_write_reg(gspca_dev, 0, 256);
  cit_write_reg(gspca_dev, 3, 1080);
  cit_write_reg(gspca_dev, 30, 1067);
  cit_write_reg(gspca_dev, 65, 1068);
  cit_write_reg(gspca_dev, 8, 1078);
  cit_write_reg(gspca_dev, 36, 1027);
  cit_write_reg(gspca_dev, 44, 1028);
  cit_write_reg(gspca_dev, 2, 1062);
  cit_write_reg(gspca_dev, 20, 1063);
  }
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  goto switch_break;
  case_160:
  {
  cit_write_reg(gspca_dev, 4, 267);
  cit_write_reg(gspca_dev, 1, 266);
  cit_write_reg(gspca_dev, 16, 258);
  cit_write_reg(gspca_dev, 160, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 120, 261);
  }
  goto ldv_30355;
  case_176:
  {
  cit_write_reg(gspca_dev, 6, 267);
  cit_write_reg(gspca_dev, 0, 266);
  cit_write_reg(gspca_dev, 5, 258);
  cit_write_reg(gspca_dev, 176, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 144, 261);
  }
  goto ldv_30355;
  case_320:
  {
  cit_write_reg(gspca_dev, 8, 267);
  cit_write_reg(gspca_dev, 4, 266);
  cit_write_reg(gspca_dev, 5, 258);
  cit_write_reg(gspca_dev, 160, 259);
  cit_write_reg(gspca_dev, 16, 260);
  cit_write_reg(gspca_dev, 120, 261);
  }
  goto ldv_30355;
  switch_break: ;
  }
  ldv_30355:
  {
  cit_write_reg(gspca_dev, (int )compression, 265);
  cit_write_reg(gspca_dev, (int )((u16 )clock_div), 273);
  }
  return (0);
}
}
static int cit_start_model1(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  int i ;
  int clock_div ;
  s32 tmp ;
  {
  {
  sd = (struct sd *)gspca_dev;
  clock_div = cit_get_clock_div(gspca_dev);
  }
  if (clock_div < 0) {
    return (clock_div);
  } else {
  }
  {
  cit_read_reg(gspca_dev, 296, 1);
  cit_read_reg(gspca_dev, 256, 0);
  cit_write_reg(gspca_dev, 1, 256);
  cit_read_reg(gspca_dev, 256, 0);
  cit_write_reg(gspca_dev, 129, 256);
  cit_read_reg(gspca_dev, 256, 0);
  cit_write_reg(gspca_dev, 1, 256);
  cit_write_reg(gspca_dev, 1, 264);
  cit_write_reg(gspca_dev, 3, 274);
  cit_read_reg(gspca_dev, 277, 0);
  cit_write_reg(gspca_dev, 6, 277);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 68, 278);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 64, 278);
  cit_read_reg(gspca_dev, 277, 0);
  cit_write_reg(gspca_dev, 14, 277);
  cit_write_reg(gspca_dev, 25, 300);
  cit_Packet_Format1(gspca_dev, 0, 30);
  cit_Packet_Format1(gspca_dev, 57, 13);
  cit_Packet_Format1(gspca_dev, 57, 9);
  cit_Packet_Format1(gspca_dev, 59, 0);
  cit_Packet_Format1(gspca_dev, 40, 34);
  cit_Packet_Format1(gspca_dev, 39, 0);
  cit_Packet_Format1(gspca_dev, 43, 31);
  cit_Packet_Format1(gspca_dev, 57, 8);
  i = 0;
  }
  goto ldv_30365;
  ldv_30364:
  {
  cit_Packet_Format1(gspca_dev, 44, 0);
  i = i + 1;
  }
  ldv_30365: ;
  if (i <= 4) {
    goto ldv_30364;
  } else {
  }
  i = 0;
  goto ldv_30368;
  ldv_30367:
  {
  cit_Packet_Format1(gspca_dev, 48, 20);
  i = i + 1;
  }
  ldv_30368: ;
  if (i <= 4) {
    goto ldv_30367;
  } else {
  }
  {
  cit_PacketFormat2(gspca_dev, 57, 2);
  cit_PacketFormat2(gspca_dev, 1, 225);
  cit_PacketFormat2(gspca_dev, 2, 205);
  cit_PacketFormat2(gspca_dev, 3, 205);
  cit_PacketFormat2(gspca_dev, 4, 250);
  cit_PacketFormat2(gspca_dev, 63, 255);
  cit_PacketFormat2(gspca_dev, 57, 0);
  cit_PacketFormat2(gspca_dev, 57, 2);
  cit_PacketFormat2(gspca_dev, 10, 55);
  cit_PacketFormat2(gspca_dev, 11, 184);
  cit_PacketFormat2(gspca_dev, 12, 243);
  cit_PacketFormat2(gspca_dev, 13, 227);
  cit_PacketFormat2(gspca_dev, 14, 13);
  cit_PacketFormat2(gspca_dev, 15, 242);
  cit_PacketFormat2(gspca_dev, 16, 213);
  cit_PacketFormat2(gspca_dev, 17, 186);
  cit_PacketFormat2(gspca_dev, 18, 83);
  cit_PacketFormat2(gspca_dev, 63, 255);
  cit_PacketFormat2(gspca_dev, 57, 0);
  cit_PacketFormat2(gspca_dev, 57, 2);
  cit_PacketFormat2(gspca_dev, 22, 0);
  cit_PacketFormat2(gspca_dev, 23, 40);
  cit_PacketFormat2(gspca_dev, 24, 125);
  cit_PacketFormat2(gspca_dev, 25, 190);
  cit_PacketFormat2(gspca_dev, 63, 255);
  cit_PacketFormat2(gspca_dev, 57, 0);
  i = 0;
  }
  goto ldv_30371;
  ldv_30370:
  {
  cit_Packet_Format1(gspca_dev, 0, 24);
  i = i + 1;
  }
  ldv_30371: ;
  if (i <= 4) {
    goto ldv_30370;
  } else {
  }
  i = 0;
  goto ldv_30374;
  ldv_30373:
  {
  cit_Packet_Format1(gspca_dev, 19, 24);
  i = i + 1;
  }
  ldv_30374: ;
  if (i <= 4) {
    goto ldv_30373;
  } else {
  }
  i = 0;
  goto ldv_30377;
  ldv_30376:
  {
  cit_Packet_Format1(gspca_dev, 20, 6);
  i = i + 1;
  }
  ldv_30377: ;
  if (i <= 4) {
    goto ldv_30376;
  } else {
  }
  if (0) {
    i = 0;
    goto ldv_30380;
    ldv_30379:
    {
    cit_Packet_Format1(gspca_dev, 49, 55);
    i = i + 1;
    }
    ldv_30380: ;
    if (i <= 4) {
      goto ldv_30379;
    } else {
    }
    i = 0;
    goto ldv_30383;
    ldv_30382:
    {
    cit_Packet_Format1(gspca_dev, 50, 70);
    i = i + 1;
    }
    ldv_30383: ;
    if (i <= 4) {
      goto ldv_30382;
    } else {
    }
    i = 0;
    goto ldv_30386;
    ldv_30385:
    {
    cit_Packet_Format1(gspca_dev, 51, 85);
    i = i + 1;
    }
    ldv_30386: ;
    if (i <= 4) {
      goto ldv_30385;
    } else {
    }
  } else {
  }
  {
  cit_Packet_Format1(gspca_dev, 46, 4);
  i = 0;
  }
  goto ldv_30389;
  ldv_30388:
  {
  cit_Packet_Format1(gspca_dev, 45, 4);
  i = i + 1;
  }
  ldv_30389: ;
  if (i <= 4) {
    goto ldv_30388;
  } else {
  }
  i = 0;
  goto ldv_30392;
  ldv_30391:
  {
  cit_Packet_Format1(gspca_dev, 41, 128);
  i = i + 1;
  }
  ldv_30392: ;
  if (i <= 4) {
    goto ldv_30391;
  } else {
  }
  {
  cit_Packet_Format1(gspca_dev, 44, 1);
  cit_Packet_Format1(gspca_dev, 48, 23);
  cit_Packet_Format1(gspca_dev, 57, 8);
  i = 0;
  }
  goto ldv_30395;
  ldv_30394:
  {
  cit_Packet_Format1(gspca_dev, 52, 0);
  i = i + 1;
  }
  ldv_30395: ;
  if (i <= 4) {
    goto ldv_30394;
  } else {
  }
  {
  cit_write_reg(gspca_dev, 0, 257);
  cit_write_reg(gspca_dev, 0, 266);
  }
  {
  if (gspca_dev->pixfmt.width == 128U) {
    goto case_128;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352;
  } else {
  }
  goto switch_break;
  case_128:
  {
  cit_write_reg(gspca_dev, 128, 259);
  cit_write_reg(gspca_dev, 96, 261);
  cit_write_reg(gspca_dev, 12, 267);
  cit_write_reg(gspca_dev, 4, 283);
  cit_write_reg(gspca_dev, 11, 285);
  cit_write_reg(gspca_dev, 0, 286);
  cit_write_reg(gspca_dev, 0, 297);
  }
  goto ldv_30398;
  case_176:
  {
  cit_write_reg(gspca_dev, 176, 259);
  cit_write_reg(gspca_dev, 143, 261);
  cit_write_reg(gspca_dev, 6, 267);
  cit_write_reg(gspca_dev, 4, 283);
  cit_write_reg(gspca_dev, 13, 285);
  cit_write_reg(gspca_dev, 0, 286);
  cit_write_reg(gspca_dev, 3, 297);
  }
  goto ldv_30398;
  case_352:
  {
  cit_write_reg(gspca_dev, 176, 259);
  cit_write_reg(gspca_dev, 144, 261);
  cit_write_reg(gspca_dev, 2, 267);
  cit_write_reg(gspca_dev, 4, 283);
  cit_write_reg(gspca_dev, 5, 285);
  cit_write_reg(gspca_dev, 0, 286);
  cit_write_reg(gspca_dev, 0, 297);
  }
  goto ldv_30398;
  switch_break: ;
  }
  ldv_30398:
  {
  cit_write_reg(gspca_dev, 255, 299);
  }
  if (0) {
    i = 0;
    goto ldv_30402;
    ldv_30401:
    {
    cit_Packet_Format1(gspca_dev, 49, 195);
    i = i + 1;
    }
    ldv_30402: ;
    if (i <= 4) {
      goto ldv_30401;
    } else {
    }
    i = 0;
    goto ldv_30405;
    ldv_30404:
    {
    cit_Packet_Format1(gspca_dev, 50, 210);
    i = i + 1;
    }
    ldv_30405: ;
    if (i <= 4) {
      goto ldv_30404;
    } else {
    }
    i = 0;
    goto ldv_30408;
    ldv_30407:
    {
    cit_Packet_Format1(gspca_dev, 51, 225);
    i = i + 1;
    }
    ldv_30408: ;
    if (i <= 4) {
      goto ldv_30407;
    } else {
    }
    i = 0;
    goto ldv_30411;
    ldv_30410:
    {
    cit_Packet_Format1(gspca_dev, 20, 10);
    i = i + 1;
    }
    ldv_30411: ;
    if (i <= 4) {
      goto ldv_30410;
    } else {
    }
    i = 0;
    goto ldv_30414;
    ldv_30413:
    {
    cit_PacketFormat2(gspca_dev, 19, 26);
    i = i + 1;
    }
    ldv_30414: ;
    if (i <= 1) {
      goto ldv_30413;
    } else {
    }
    {
    tmp = v4l2_ctrl_g_ctrl(sd->lighting);
    cit_Packet_Format1(gspca_dev, 39, (int )((u16 )tmp));
    }
  } else {
  }
  {
  if (gspca_dev->pixfmt.width == 128U) {
    goto case_128___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352___0;
  } else {
  }
  goto switch_break___0;
  case_128___0:
  {
  cit_Packet_Format1(gspca_dev, 43, 30);
  cit_write_reg(gspca_dev, 201, 281);
  cit_write_reg(gspca_dev, 128, 265);
  cit_write_reg(gspca_dev, 54, 258);
  cit_write_reg(gspca_dev, 26, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 43, 284);
  cit_write_reg(gspca_dev, 35, 298);
  }
  goto ldv_30417;
  case_176___0:
  {
  cit_Packet_Format1(gspca_dev, 43, 30);
  cit_write_reg(gspca_dev, 201, 281);
  cit_write_reg(gspca_dev, 128, 265);
  cit_write_reg(gspca_dev, 4, 258);
  cit_write_reg(gspca_dev, 2, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 43, 284);
  cit_write_reg(gspca_dev, 35, 298);
  }
  goto ldv_30417;
  case_352___0:
  {
  cit_Packet_Format1(gspca_dev, 43, 31);
  cit_write_reg(gspca_dev, 201, 281);
  cit_write_reg(gspca_dev, 128, 265);
  cit_write_reg(gspca_dev, 8, 258);
  cit_write_reg(gspca_dev, 1, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 47, 284);
  cit_write_reg(gspca_dev, 35, 298);
  }
  goto ldv_30417;
  switch_break___0: ;
  }
  ldv_30417:
  {
  cit_write_reg(gspca_dev, 1, 256);
  cit_write_reg(gspca_dev, (int )((u16 )clock_div), 273);
  }
  return (0);
}
}
static int cit_start_model2(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  int clock_div ;
  s32 tmp ;
  {
  {
  sd = (struct sd *)gspca_dev;
  clock_div = 0;
  cit_write_reg(gspca_dev, 0, 256);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 2, 274);
  cit_write_reg(gspca_dev, 188, 300);
  cit_write_reg(gspca_dev, 8, 299);
  cit_write_reg(gspca_dev, 0, 264);
  cit_write_reg(gspca_dev, 1, 307);
  cit_write_reg(gspca_dev, 1, 258);
  }
  {
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352;
  } else {
  }
  goto switch_break;
  case_176:
  {
  cit_write_reg(gspca_dev, 44, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 36, 261);
  cit_write_reg(gspca_dev, 185, 266);
  cit_write_reg(gspca_dev, 56, 281);
  sd->sof_len = 10U;
  }
  goto ldv_30426;
  case_320:
  {
  cit_write_reg(gspca_dev, 40, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 30, 261);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 112, 281);
  sd->sof_len = 2U;
  }
  goto ldv_30426;
  {
  cit_write_reg(gspca_dev, 44, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 30, 261);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 112, 281);
  sd->sof_len = 2U;
  }
  goto ldv_30426;
  case_352:
  {
  cit_write_reg(gspca_dev, 44, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 36, 261);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 112, 281);
  sd->sof_len = 2U;
  }
  goto ldv_30426;
  switch_break: ;
  }
  ldv_30426:
  {
  cit_write_reg(gspca_dev, 0, 256);
  }
  {
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352___0;
  } else {
  }
  goto switch_break___0;
  case_176___0:
  {
  cit_write_reg(gspca_dev, 80, 273);
  cit_write_reg(gspca_dev, 208, 273);
  }
  goto ldv_30430;
  case_320___0: ;
  case_352___0:
  {
  cit_write_reg(gspca_dev, 64, 273);
  cit_write_reg(gspca_dev, 192, 273);
  }
  goto ldv_30430;
  switch_break___0: ;
  }
  ldv_30430:
  {
  cit_write_reg(gspca_dev, 155, 271);
  cit_write_reg(gspca_dev, 187, 271);
  cit_model2_Packet1(gspca_dev, 10, 92);
  cit_model2_Packet1(gspca_dev, 4, 0);
  cit_model2_Packet1(gspca_dev, 6, 251);
  cit_model2_Packet1(gspca_dev, 8, 0);
  cit_model2_Packet1(gspca_dev, 12, 9);
  cit_model2_Packet1(gspca_dev, 18, 10);
  cit_model2_Packet1(gspca_dev, 42, 0);
  cit_model2_Packet1(gspca_dev, 44, 0);
  cit_model2_Packet1(gspca_dev, 46, 8);
  cit_model2_Packet1(gspca_dev, 48, 0);
  }
  {
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176___1;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320___1;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352___1;
  } else {
  }
  goto switch_break___1;
  case_176___1:
  {
  cit_model2_Packet1(gspca_dev, 20, 2);
  cit_model2_Packet1(gspca_dev, 22, 2);
  cit_model2_Packet1(gspca_dev, 24, 74);
  clock_div = 6;
  }
  goto ldv_30434;
  case_320___1:
  {
  cit_model2_Packet1(gspca_dev, 20, 9);
  cit_model2_Packet1(gspca_dev, 22, 5);
  cit_model2_Packet1(gspca_dev, 24, 68);
  clock_div = 8;
  }
  goto ldv_30434;
  {
  cit_model2_Packet1(gspca_dev, 20, 9);
  cit_model2_Packet1(gspca_dev, 22, 3);
  cit_model2_Packet1(gspca_dev, 24, 68);
  clock_div = 10;
  }
  goto ldv_30434;
  case_352___1:
  {
  cit_model2_Packet1(gspca_dev, 20, 3);
  cit_model2_Packet1(gspca_dev, 22, 2);
  cit_model2_Packet1(gspca_dev, 24, 74);
  clock_div = 16;
  }
  goto ldv_30434;
  switch_break___1: ;
  }
  ldv_30434:
  {
  cit_model2_Packet1(gspca_dev, 28, (int )((u16 )clock_div));
  }
  {
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176___2;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320___2;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352___2;
  } else {
  }
  goto switch_break___2;
  case_176___2:
  {
  cit_model2_Packet1(gspca_dev, 38, 194);
  }
  goto ldv_30438;
  case_320___2:
  {
  cit_model2_Packet1(gspca_dev, 38, 68);
  }
  goto ldv_30438;
  {
  cit_model2_Packet1(gspca_dev, 38, 70);
  }
  goto ldv_30438;
  case_352___2:
  {
  cit_model2_Packet1(gspca_dev, 38, 72);
  }
  goto ldv_30438;
  switch_break___2: ;
  }
  ldv_30438:
  {
  tmp = v4l2_ctrl_g_ctrl(sd->lighting);
  cit_model2_Packet1(gspca_dev, 40, (int )((u16 )tmp));
  v4l2_ctrl_grab(sd->lighting, 1);
  cit_model2_Packet1(gspca_dev, 30, 47);
  cit_model2_Packet1(gspca_dev, 32, 52);
  cit_model2_Packet1(gspca_dev, 34, 160);
  cit_model2_Packet1(gspca_dev, 48, 4);
  }
  return (0);
}
}
static int cit_start_model3(struct gspca_dev *gspca_dev )
{
  unsigned short compression ;
  int i ;
  int clock_div ;
  {
  {
  compression = 0U;
  clock_div = 0;
  cit_read_reg(gspca_dev, 296, 1);
  cit_write_reg(gspca_dev, 0, 256);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 2, 274);
  cit_write_reg(gspca_dev, 0, 291);
  cit_write_reg(gspca_dev, 1, 279);
  cit_write_reg(gspca_dev, 64, 264);
  cit_write_reg(gspca_dev, 25, 300);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 2, 277);
  cit_write_reg(gspca_dev, 3, 277);
  cit_read_reg(gspca_dev, 277, 0);
  cit_write_reg(gspca_dev, 11, 277);
  cit_model3_Packet1(gspca_dev, 10, 64);
  cit_model3_Packet1(gspca_dev, 11, 246);
  cit_model3_Packet1(gspca_dev, 12, 2);
  cit_model3_Packet1(gspca_dev, 13, 32);
  cit_model3_Packet1(gspca_dev, 14, 51);
  cit_model3_Packet1(gspca_dev, 15, 7);
  cit_model3_Packet1(gspca_dev, 16, 0);
  cit_model3_Packet1(gspca_dev, 17, 112);
  cit_model3_Packet1(gspca_dev, 18, 48);
  cit_model3_Packet1(gspca_dev, 19, 0);
  cit_model3_Packet1(gspca_dev, 20, 1);
  cit_model3_Packet1(gspca_dev, 21, 1);
  cit_model3_Packet1(gspca_dev, 22, 1);
  cit_model3_Packet1(gspca_dev, 23, 1);
  cit_model3_Packet1(gspca_dev, 24, 0);
  cit_model3_Packet1(gspca_dev, 30, 195);
  cit_model3_Packet1(gspca_dev, 32, 0);
  cit_model3_Packet1(gspca_dev, 40, 16);
  cit_model3_Packet1(gspca_dev, 41, 84);
  cit_model3_Packet1(gspca_dev, 42, 19);
  cit_model3_Packet1(gspca_dev, 43, 7);
  cit_model3_Packet1(gspca_dev, 45, 40);
  cit_model3_Packet1(gspca_dev, 46, 0);
  cit_model3_Packet1(gspca_dev, 49, 0);
  cit_model3_Packet1(gspca_dev, 50, 0);
  cit_model3_Packet1(gspca_dev, 51, 0);
  cit_model3_Packet1(gspca_dev, 52, 0);
  cit_model3_Packet1(gspca_dev, 53, 56);
  cit_model3_Packet1(gspca_dev, 58, 1);
  cit_model3_Packet1(gspca_dev, 60, 30);
  cit_model3_Packet1(gspca_dev, 63, 10);
  cit_model3_Packet1(gspca_dev, 65, 0);
  cit_model3_Packet1(gspca_dev, 70, 63);
  cit_model3_Packet1(gspca_dev, 71, 0);
  cit_model3_Packet1(gspca_dev, 80, 5);
  cit_model3_Packet1(gspca_dev, 82, 26);
  cit_model3_Packet1(gspca_dev, 83, 3);
  cit_model3_Packet1(gspca_dev, 90, 107);
  cit_model3_Packet1(gspca_dev, 93, 30);
  cit_model3_Packet1(gspca_dev, 94, 48);
  cit_model3_Packet1(gspca_dev, 95, 65);
  cit_model3_Packet1(gspca_dev, 100, 8);
  cit_model3_Packet1(gspca_dev, 101, 21);
  cit_model3_Packet1(gspca_dev, 104, 15);
  cit_model3_Packet1(gspca_dev, 121, 0);
  cit_model3_Packet1(gspca_dev, 122, 0);
  cit_model3_Packet1(gspca_dev, 124, 63);
  cit_model3_Packet1(gspca_dev, 130, 15);
  cit_model3_Packet1(gspca_dev, 133, 0);
  cit_model3_Packet1(gspca_dev, 153, 0);
  cit_model3_Packet1(gspca_dev, 155, 35);
  cit_model3_Packet1(gspca_dev, 156, 34);
  cit_model3_Packet1(gspca_dev, 157, 150);
  cit_model3_Packet1(gspca_dev, 158, 150);
  cit_model3_Packet1(gspca_dev, 159, 10);
  }
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  if (gspca_dev->pixfmt.width == 640U) {
    goto case_640;
  } else {
  }
  goto switch_break;
  case_160:
  {
  cit_write_reg(gspca_dev, 0, 257);
  cit_write_reg(gspca_dev, 160, 259);
  cit_write_reg(gspca_dev, 120, 261);
  cit_write_reg(gspca_dev, 0, 266);
  cit_write_reg(gspca_dev, 36, 267);
  cit_write_reg(gspca_dev, 169, 281);
  cit_write_reg(gspca_dev, 22, 283);
  cit_write_reg(gspca_dev, 2, 285);
  cit_write_reg(gspca_dev, 3, 286);
  cit_write_reg(gspca_dev, 0, 297);
  cit_write_reg(gspca_dev, 252, 299);
  cit_write_reg(gspca_dev, 24, 258);
  cit_write_reg(gspca_dev, 4, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 40, 284);
  cit_write_reg(gspca_dev, 34, 298);
  cit_write_reg(gspca_dev, 0, 280);
  cit_write_reg(gspca_dev, 0, 306);
  cit_model3_Packet1(gspca_dev, 33, 1);
  cit_write_reg(gspca_dev, (int )compression, 265);
  clock_div = 3;
  }
  goto ldv_30448;
  case_320:
  {
  cit_write_reg(gspca_dev, 0, 257);
  cit_write_reg(gspca_dev, 160, 259);
  cit_write_reg(gspca_dev, 120, 261);
  cit_write_reg(gspca_dev, 0, 266);
  cit_write_reg(gspca_dev, 40, 267);
  cit_write_reg(gspca_dev, 2, 285);
  cit_write_reg(gspca_dev, 0, 286);
  cit_write_reg(gspca_dev, 0, 297);
  cit_write_reg(gspca_dev, 252, 299);
  cit_write_reg(gspca_dev, 34, 298);
  cit_model3_Packet1(gspca_dev, 33, 1);
  cit_write_reg(gspca_dev, (int )compression, 265);
  cit_write_reg(gspca_dev, 217, 281);
  cit_write_reg(gspca_dev, 6, 283);
  cit_write_reg(gspca_dev, 33, 258);
  cit_write_reg(gspca_dev, 16, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 63, 284);
  cit_write_reg(gspca_dev, 28, 280);
  cit_write_reg(gspca_dev, 0, 306);
  clock_div = 5;
  }
  goto ldv_30448;
  case_640:
  {
  cit_write_reg(gspca_dev, 240, 261);
  cit_write_reg(gspca_dev, 0, 266);
  cit_write_reg(gspca_dev, 56, 267);
  cit_write_reg(gspca_dev, 217, 281);
  cit_write_reg(gspca_dev, 6, 283);
  cit_write_reg(gspca_dev, 4, 285);
  cit_write_reg(gspca_dev, 3, 286);
  cit_write_reg(gspca_dev, 0, 297);
  cit_write_reg(gspca_dev, 252, 299);
  cit_write_reg(gspca_dev, 33, 258);
  cit_write_reg(gspca_dev, 22, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 63, 284);
  cit_write_reg(gspca_dev, 34, 298);
  cit_write_reg(gspca_dev, 28, 280);
  cit_model3_Packet1(gspca_dev, 33, 1);
  cit_write_reg(gspca_dev, (int )compression, 265);
  cit_write_reg(gspca_dev, 64, 257);
  cit_write_reg(gspca_dev, 64, 259);
  cit_write_reg(gspca_dev, 0, 306);
  clock_div = 7;
  }
  goto ldv_30448;
  switch_break: ;
  }
  ldv_30448:
  {
  cit_model3_Packet1(gspca_dev, 126, 14);
  cit_model3_Packet1(gspca_dev, 54, 17);
  cit_model3_Packet1(gspca_dev, 96, 2);
  cit_model3_Packet1(gspca_dev, 97, 4);
  cit_model3_Packet1(gspca_dev, 98, 5);
  cit_model3_Packet1(gspca_dev, 99, 20);
  cit_model3_Packet1(gspca_dev, 150, 160);
  cit_model3_Packet1(gspca_dev, 151, 150);
  cit_model3_Packet1(gspca_dev, 103, 1);
  cit_model3_Packet1(gspca_dev, 91, 12);
  cit_model3_Packet1(gspca_dev, 92, 22);
  cit_model3_Packet1(gspca_dev, 152, 11);
  cit_model3_Packet1(gspca_dev, 44, 3);
  cit_model3_Packet1(gspca_dev, 47, 42);
  cit_model3_Packet1(gspca_dev, 48, 41);
  cit_model3_Packet1(gspca_dev, 55, 2);
  cit_model3_Packet1(gspca_dev, 56, 89);
  cit_model3_Packet1(gspca_dev, 61, 46);
  cit_model3_Packet1(gspca_dev, 62, 40);
  cit_model3_Packet1(gspca_dev, 120, 5);
  cit_model3_Packet1(gspca_dev, 123, 17);
  cit_model3_Packet1(gspca_dev, 125, 75);
  cit_model3_Packet1(gspca_dev, 127, 34);
  cit_model3_Packet1(gspca_dev, 128, 12);
  cit_model3_Packet1(gspca_dev, 129, 11);
  cit_model3_Packet1(gspca_dev, 131, 253);
  cit_model3_Packet1(gspca_dev, 134, 11);
  cit_model3_Packet1(gspca_dev, 135, 11);
  cit_model3_Packet1(gspca_dev, 126, 14);
  cit_model3_Packet1(gspca_dev, 150, 160);
  cit_model3_Packet1(gspca_dev, 151, 150);
  cit_model3_Packet1(gspca_dev, 152, 11);
  cit_write_reg(gspca_dev, (int )((u16 )clock_div), 273);
  }
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320___0;
  } else {
  }
  if (gspca_dev->pixfmt.width == 640U) {
    goto case_640___0;
  } else {
  }
  goto switch_break___0;
  case_160___0:
  {
  cit_model3_Packet1(gspca_dev, 31, 0);
  cit_model3_Packet1(gspca_dev, 57, 31);
  cit_model3_Packet1(gspca_dev, 59, 60);
  cit_model3_Packet1(gspca_dev, 64, 10);
  cit_model3_Packet1(gspca_dev, 81, 10);
  }
  goto ldv_30452;
  case_320___0:
  {
  cit_model3_Packet1(gspca_dev, 31, 0);
  cit_model3_Packet1(gspca_dev, 57, 31);
  cit_model3_Packet1(gspca_dev, 59, 60);
  cit_model3_Packet1(gspca_dev, 64, 8);
  cit_model3_Packet1(gspca_dev, 81, 11);
  }
  goto ldv_30452;
  case_640___0:
  {
  cit_model3_Packet1(gspca_dev, 31, 2);
  cit_model3_Packet1(gspca_dev, 57, 62);
  cit_model3_Packet1(gspca_dev, 64, 8);
  cit_model3_Packet1(gspca_dev, 81, 10);
  }
  goto ldv_30452;
  switch_break___0: ;
  }
  ldv_30452: ;
  if (rca_input != 0) {
    i = 0;
    goto ldv_30458;
    ldv_30457: ;
    if ((unsigned int )((unsigned short )rca_initdata[i][0]) != 0U) {
      {
      cit_read_reg(gspca_dev, (int )rca_initdata[i][2], 0);
      }
    } else {
      {
      cit_write_reg(gspca_dev, (int )rca_initdata[i][1], (int )rca_initdata[i][2]);
      }
    }
    i = i + 1;
    ldv_30458: ;
    if ((unsigned int )i <= 533U) {
      goto ldv_30457;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int cit_start_model4(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  {
  {
  sd = (struct sd *)gspca_dev;
  cit_write_reg(gspca_dev, 0, 256);
  cit_write_reg(gspca_dev, 192, 273);
  cit_write_reg(gspca_dev, 188, 300);
  cit_write_reg(gspca_dev, 128, 299);
  cit_write_reg(gspca_dev, 0, 264);
  cit_write_reg(gspca_dev, 1, 307);
  cit_write_reg(gspca_dev, 155, 271);
  cit_write_reg(gspca_dev, 187, 271);
  cit_model4_Packet1(gspca_dev, 56, 0);
  cit_model4_Packet1(gspca_dev, 10, 92);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 4, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 251, 302);
  cit_write_reg(gspca_dev, 0, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 12, 295);
  cit_write_reg(gspca_dev, 9, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 18, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 8, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 42, 301);
  cit_write_reg(gspca_dev, 0, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_model4_Packet1(gspca_dev, 52, 0);
  }
  {
  if (gspca_dev->pixfmt.width == 128U) {
    goto case_128;
  } else {
  }
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352;
  } else {
  }
  goto switch_break;
  case_128:
  {
  cit_write_reg(gspca_dev, 112, 281);
  cit_write_reg(gspca_dev, 208, 273);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 1, 258);
  cit_write_reg(gspca_dev, 40, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 30, 261);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 22, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 10, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 20, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 170, 302);
  cit_write_reg(gspca_dev, 26, 304);
  cit_write_reg(gspca_dev, 35338, 292);
  cit_write_reg(gspca_dev, 90, 301);
  cit_write_reg(gspca_dev, 38213, 292);
  cit_write_reg(gspca_dev, 170, 295);
  cit_write_reg(gspca_dev, 24, 302);
  cit_write_reg(gspca_dev, 67, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 28, 295);
  cit_write_reg(gspca_dev, 235, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 50, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 54, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 23, 295);
  cit_write_reg(gspca_dev, 19, 302);
  cit_write_reg(gspca_dev, 49, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 23, 301);
  cit_write_reg(gspca_dev, 120, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  sd->sof_len = 2U;
  }
  goto ldv_30465;
  case_160:
  {
  cit_write_reg(gspca_dev, 56, 281);
  cit_write_reg(gspca_dev, 208, 273);
  cit_write_reg(gspca_dev, 185, 266);
  cit_write_reg(gspca_dev, 1, 258);
  cit_write_reg(gspca_dev, 40, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 30, 261);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 22, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 11, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 20, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 170, 302);
  cit_write_reg(gspca_dev, 26, 304);
  cit_write_reg(gspca_dev, 35338, 292);
  cit_write_reg(gspca_dev, 90, 301);
  cit_write_reg(gspca_dev, 38213, 292);
  cit_write_reg(gspca_dev, 170, 295);
  cit_write_reg(gspca_dev, 24, 302);
  cit_write_reg(gspca_dev, 67, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 28, 295);
  cit_write_reg(gspca_dev, 199, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 50, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 37, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 54, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 72, 295);
  cit_write_reg(gspca_dev, 53, 302);
  cit_write_reg(gspca_dev, 208, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 72, 301);
  cit_write_reg(gspca_dev, 144, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 1, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  sd->sof_len = 2U;
  }
  goto ldv_30465;
  case_176:
  {
  cit_write_reg(gspca_dev, 56, 281);
  cit_write_reg(gspca_dev, 208, 273);
  cit_write_reg(gspca_dev, 185, 266);
  cit_write_reg(gspca_dev, 1, 258);
  cit_write_reg(gspca_dev, 44, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 36, 261);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 22, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 7, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 20, 301);
  cit_write_reg(gspca_dev, 1, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 170, 302);
  cit_write_reg(gspca_dev, 26, 304);
  cit_write_reg(gspca_dev, 35338, 292);
  cit_write_reg(gspca_dev, 94, 301);
  cit_write_reg(gspca_dev, 38213, 292);
  cit_write_reg(gspca_dev, 170, 295);
  cit_write_reg(gspca_dev, 24, 302);
  cit_write_reg(gspca_dev, 73, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 28, 295);
  cit_write_reg(gspca_dev, 199, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 50, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 40, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 54, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 16, 295);
  cit_write_reg(gspca_dev, 19, 302);
  cit_write_reg(gspca_dev, 42, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 16, 301);
  cit_write_reg(gspca_dev, 109, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 1, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  sd->sof_len = 10U;
  }
  goto ldv_30465;
  case_320:
  {
  cit_write_reg(gspca_dev, 112, 281);
  cit_write_reg(gspca_dev, 208, 273);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 1, 258);
  cit_write_reg(gspca_dev, 40, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 30, 261);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 22, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 10, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 20, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 170, 302);
  cit_write_reg(gspca_dev, 26, 304);
  cit_write_reg(gspca_dev, 35338, 292);
  cit_write_reg(gspca_dev, 90, 301);
  cit_write_reg(gspca_dev, 38213, 292);
  cit_write_reg(gspca_dev, 170, 295);
  cit_write_reg(gspca_dev, 24, 302);
  cit_write_reg(gspca_dev, 67, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 28, 295);
  cit_write_reg(gspca_dev, 235, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 50, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 54, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 23, 295);
  cit_write_reg(gspca_dev, 19, 302);
  cit_write_reg(gspca_dev, 49, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 23, 301);
  cit_write_reg(gspca_dev, 120, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  sd->sof_len = 2U;
  }
  goto ldv_30465;
  case_352:
  {
  cit_write_reg(gspca_dev, 112, 281);
  cit_write_reg(gspca_dev, 192, 273);
  cit_write_reg(gspca_dev, 57, 266);
  cit_write_reg(gspca_dev, 1, 258);
  cit_write_reg(gspca_dev, 44, 259);
  cit_write_reg(gspca_dev, 0, 260);
  cit_write_reg(gspca_dev, 36, 261);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 22, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 6, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 20, 301);
  cit_write_reg(gspca_dev, 2, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 170, 302);
  cit_write_reg(gspca_dev, 26, 304);
  cit_write_reg(gspca_dev, 35338, 292);
  cit_write_reg(gspca_dev, 94, 301);
  cit_write_reg(gspca_dev, 38213, 292);
  cit_write_reg(gspca_dev, 170, 295);
  cit_write_reg(gspca_dev, 24, 302);
  cit_write_reg(gspca_dev, 73, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 170, 303);
  cit_write_reg(gspca_dev, 53333, 292);
  cit_write_reg(gspca_dev, 28, 295);
  cit_write_reg(gspca_dev, 207, 302);
  cit_write_reg(gspca_dev, 43560, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 50, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 170, 304);
  cit_write_reg(gspca_dev, 33448, 292);
  cit_write_reg(gspca_dev, 54, 301);
  cit_write_reg(gspca_dev, 8, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 65530, 292);
  cit_write_reg(gspca_dev, 170, 301);
  cit_write_reg(gspca_dev, 30, 303);
  cit_write_reg(gspca_dev, 53569, 292);
  cit_write_reg(gspca_dev, 16, 295);
  cit_write_reg(gspca_dev, 19, 302);
  cit_write_reg(gspca_dev, 37, 304);
  cit_write_reg(gspca_dev, 35368, 292);
  cit_write_reg(gspca_dev, 16, 301);
  cit_write_reg(gspca_dev, 72, 303);
  cit_write_reg(gspca_dev, 53573, 292);
  cit_write_reg(gspca_dev, 0, 295);
  cit_write_reg(gspca_dev, 65192, 292);
  sd->sof_len = 2U;
  }
  goto ldv_30465;
  switch_break: ;
  }
  ldv_30465:
  {
  cit_model4_Packet1(gspca_dev, 56, 4);
  }
  return (0);
}
}
static int cit_start_ibm_netcam_pro(struct gspca_dev *gspca_dev )
{
  unsigned short compression ;
  int i ;
  int clock_div ;
  {
  {
  compression = 0U;
  clock_div = cit_get_clock_div(gspca_dev);
  }
  if (clock_div < 0) {
    return (clock_div);
  } else {
  }
  {
  cit_write_reg(gspca_dev, 3, 307);
  cit_write_reg(gspca_dev, 0, 279);
  cit_write_reg(gspca_dev, 8, 291);
  cit_write_reg(gspca_dev, 0, 256);
  cit_write_reg(gspca_dev, 96, 278);
  cit_write_reg(gspca_dev, 0, 307);
  cit_write_reg(gspca_dev, 0, 291);
  cit_write_reg(gspca_dev, 1, 279);
  cit_write_reg(gspca_dev, 64, 264);
  cit_write_reg(gspca_dev, 25, 300);
  cit_write_reg(gspca_dev, 96, 278);
  cit_model3_Packet1(gspca_dev, 73, 0);
  cit_write_reg(gspca_dev, 0, 257);
  cit_write_reg(gspca_dev, 58, 258);
  cit_write_reg(gspca_dev, 160, 259);
  cit_write_reg(gspca_dev, 120, 261);
  cit_write_reg(gspca_dev, 0, 266);
  cit_write_reg(gspca_dev, 2, 285);
  cit_write_reg(gspca_dev, 0, 297);
  cit_write_reg(gspca_dev, 252, 299);
  cit_write_reg(gspca_dev, 34, 298);
  }
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  goto switch_break;
  case_160:
  {
  cit_write_reg(gspca_dev, 36, 267);
  cit_write_reg(gspca_dev, 137, 281);
  cit_write_reg(gspca_dev, 10, 283);
  cit_write_reg(gspca_dev, 3, 286);
  cit_write_reg(gspca_dev, 7, 260);
  cit_write_reg(gspca_dev, 9, 282);
  cit_write_reg(gspca_dev, 139, 284);
  cit_write_reg(gspca_dev, 8, 280);
  cit_write_reg(gspca_dev, 0, 306);
  }
  goto ldv_30477;
  case_320:
  {
  cit_write_reg(gspca_dev, 40, 267);
  cit_write_reg(gspca_dev, 217, 281);
  cit_write_reg(gspca_dev, 6, 283);
  cit_write_reg(gspca_dev, 0, 286);
  cit_write_reg(gspca_dev, 14, 260);
  cit_write_reg(gspca_dev, 4, 282);
  cit_write_reg(gspca_dev, 63, 284);
  cit_write_reg(gspca_dev, 12, 280);
  cit_write_reg(gspca_dev, 0, 306);
  }
  goto ldv_30477;
  switch_break: ;
  }
  ldv_30477:
  {
  cit_model3_Packet1(gspca_dev, 25, 49);
  cit_model3_Packet1(gspca_dev, 26, 3);
  cit_model3_Packet1(gspca_dev, 27, 56);
  cit_model3_Packet1(gspca_dev, 28, 0);
  cit_model3_Packet1(gspca_dev, 36, 1);
  cit_model3_Packet1(gspca_dev, 39, 1);
  cit_model3_Packet1(gspca_dev, 42, 4);
  cit_model3_Packet1(gspca_dev, 53, 11);
  cit_model3_Packet1(gspca_dev, 63, 1);
  cit_model3_Packet1(gspca_dev, 68, 0);
  cit_model3_Packet1(gspca_dev, 84, 0);
  cit_model3_Packet1(gspca_dev, 196, 0);
  cit_model3_Packet1(gspca_dev, 231, 1);
  cit_model3_Packet1(gspca_dev, 233, 1);
  cit_model3_Packet1(gspca_dev, 238, 0);
  cit_model3_Packet1(gspca_dev, 243, 192);
  cit_write_reg(gspca_dev, (int )compression, 265);
  cit_write_reg(gspca_dev, (int )((u16 )clock_div), 273);
  }
  if (rca_input != 0) {
    i = 0;
    goto ldv_30482;
    ldv_30481: ;
    if ((unsigned int )((unsigned short )rca_initdata[i][0]) != 0U) {
      {
      cit_read_reg(gspca_dev, (int )rca_initdata[i][2], 0);
      }
    } else {
      {
      cit_write_reg(gspca_dev, (int )rca_initdata[i][1], (int )rca_initdata[i][2]);
      }
    }
    i = i + 1;
    ldv_30482: ;
    if ((unsigned int )i <= 533U) {
      goto ldv_30481;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int sd_start(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  int packet_size ;
  {
  {
  sd = (struct sd *)gspca_dev;
  packet_size = cit_get_packet_size(gspca_dev);
  }
  if (packet_size < 0) {
    return (packet_size);
  } else {
  }
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  {
  cit_start_model0(gspca_dev);
  }
  goto ldv_30490;
  case_1:
  {
  cit_start_model1(gspca_dev);
  }
  goto ldv_30490;
  case_2:
  {
  cit_start_model2(gspca_dev);
  }
  goto ldv_30490;
  case_3:
  {
  cit_start_model3(gspca_dev);
  }
  goto ldv_30490;
  case_4:
  {
  cit_start_model4(gspca_dev);
  }
  goto ldv_30490;
  case_5:
  {
  cit_start_ibm_netcam_pro(gspca_dev);
  }
  goto ldv_30490;
  switch_break: ;
  }
  ldv_30490:
  {
  cit_write_reg(gspca_dev, (int )((u16 )(packet_size >> 8)), 262);
  cit_write_reg(gspca_dev, (int )((u16 )packet_size) & 255, 263);
  cit_restart_stream(gspca_dev);
  }
  return (0);
}
}
static int sd_isoc_init(struct gspca_dev *gspca_dev )
{
  struct usb_host_interface *alt ;
  int max_packet_size ;
  {
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  goto switch_default;
  case_160:
  max_packet_size = 450;
  goto ldv_30502;
  case_176:
  max_packet_size = 600;
  goto ldv_30502;
  switch_default:
  max_packet_size = 1022;
  goto ldv_30502;
  switch_break: ;
  }
  ldv_30502:
  alt = (struct usb_host_interface *)(& (((gspca_dev->dev)->actconfig)->intf_cache[0])->altsetting) + 1UL;
  (alt->endpoint)->desc.wMaxPacketSize = (unsigned short )max_packet_size;
  return (0);
}
}
static int sd_isoc_nego(struct gspca_dev *gspca_dev )
{
  int ret ;
  int packet_size ;
  int min_packet_size ;
  struct usb_host_interface *alt ;
  {
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  goto switch_default;
  case_160:
  min_packet_size = 200;
  goto ldv_30513;
  case_176:
  min_packet_size = 266;
  goto ldv_30513;
  switch_default:
  min_packet_size = 400;
  goto ldv_30513;
  switch_break: ;
  }
  ldv_30513:
  alt = (struct usb_host_interface *)(& (((gspca_dev->dev)->actconfig)->intf_cache[0])->altsetting) + 1UL;
  packet_size = (int )(alt->endpoint)->desc.wMaxPacketSize;
  if (packet_size <= min_packet_size) {
    return (-5);
  } else {
  }
  packet_size = packet_size + -100;
  if (packet_size < min_packet_size) {
    packet_size = min_packet_size;
  } else {
  }
  {
  (alt->endpoint)->desc.wMaxPacketSize = (unsigned short )packet_size;
  ret = usb_set_interface(gspca_dev->dev, (int )gspca_dev->iface, 1);
  }
  if (ret < 0) {
    {
    printk("\vgspca_xirlink_cit: set alt 1 err %d\n", ret);
    }
  } else {
  }
  return (ret);
}
}
static void sd_stopN(struct gspca_dev *gspca_dev )
{
  {
  {
  cit_write_reg(gspca_dev, 0, 268);
  }
  return;
}
}
static void sd_stop0(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  if ((int )((signed char )gspca_dev->present) == 0) {
    return;
  } else {
  }
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  {
  cit_write_reg(gspca_dev, 192, 256);
  }
  goto ldv_30524;
  case_1:
  {
  cit_send_FF_04_02(gspca_dev);
  cit_read_reg(gspca_dev, 256, 0);
  cit_write_reg(gspca_dev, 129, 256);
  }
  goto ldv_30524;
  case_2:
  {
  v4l2_ctrl_grab(sd->lighting, 0);
  }
  case_4:
  {
  cit_model2_Packet1(gspca_dev, 48, 4);
  cit_write_reg(gspca_dev, 128, 256);
  cit_write_reg(gspca_dev, 32, 273);
  cit_write_reg(gspca_dev, 160, 273);
  cit_model2_Packet1(gspca_dev, 48, 2);
  cit_write_reg(gspca_dev, 32, 273);
  cit_write_reg(gspca_dev, 0, 274);
  }
  goto ldv_30524;
  case_3:
  {
  cit_write_reg(gspca_dev, 6, 300);
  cit_model3_Packet1(gspca_dev, 70, 0);
  cit_read_reg(gspca_dev, 278, 0);
  cit_write_reg(gspca_dev, 100, 278);
  cit_read_reg(gspca_dev, 277, 0);
  cit_write_reg(gspca_dev, 3, 277);
  cit_write_reg(gspca_dev, 8, 291);
  cit_write_reg(gspca_dev, 0, 279);
  cit_write_reg(gspca_dev, 0, 274);
  cit_write_reg(gspca_dev, 128, 256);
  }
  goto ldv_30524;
  case_5:
  {
  cit_model3_Packet1(gspca_dev, 73, 255);
  cit_write_reg(gspca_dev, 6, 300);
  cit_write_reg(gspca_dev, 0, 278);
  cit_write_reg(gspca_dev, 8, 291);
  cit_write_reg(gspca_dev, 0, 279);
  cit_write_reg(gspca_dev, 3, 307);
  cit_write_reg(gspca_dev, 0, 273);
  cit_write_reg(gspca_dev, 192, 256);
  }
  goto ldv_30524;
  switch_break: ;
  }
  ldv_30524: ;
  if ((unsigned int )sd->button_state != 0U) {
    {
    input_report_key(gspca_dev->input_dev, 212U, 0);
    input_sync(gspca_dev->input_dev);
    sd->button_state = 0U;
    }
  } else {
  }
  return;
}
}
static u8 *cit_find_sof(struct gspca_dev *gspca_dev , u8 *data , int len )
{
  struct sd *sd ;
  u8 byte3 ;
  u8 byte4 ;
  int i ;
  {
  sd = (struct sd *)gspca_dev;
  byte3 = 0U;
  byte4 = 0U;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2___0;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1: ;
  case_3: ;
  case_5: ;
  {
  if (gspca_dev->pixfmt.width == 160U) {
    goto case_160;
  } else {
  }
  if (gspca_dev->pixfmt.width == 176U) {
    goto case_176;
  } else {
  }
  if (gspca_dev->pixfmt.width == 320U) {
    goto case_320;
  } else {
  }
  if (gspca_dev->pixfmt.width == 352U) {
    goto case_352;
  } else {
  }
  if (gspca_dev->pixfmt.width == 640U) {
    goto case_640;
  } else {
  }
  goto switch_break___0;
  case_160:
  byte3 = 2U;
  byte4 = 10U;
  goto ldv_30544;
  case_176:
  byte3 = 2U;
  byte4 = 14U;
  goto ldv_30544;
  case_320:
  byte3 = 2U;
  byte4 = 8U;
  goto ldv_30544;
  case_352:
  byte3 = 2U;
  byte4 = 0U;
  goto ldv_30544;
  case_640:
  byte3 = 3U;
  byte4 = 8U;
  goto ldv_30544;
  switch_break___0: ;
  }
  ldv_30544: ;
  if ((unsigned int )sd->model <= 1U) {
    byte3 = 0U;
  } else {
  }
  i = 0;
  goto ldv_30556;
  ldv_30555: ;
  if ((unsigned int )sd->model == 0U && (int )sd->sof_read != i) {
    goto ldv_30549;
  } else {
  }
  {
  if ((int )sd->sof_read == 0) {
    goto case_0___0;
  } else {
  }
  if ((int )sd->sof_read == 1) {
    goto case_1___0;
  } else {
  }
  if ((int )sd->sof_read == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->sof_read == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_break___1;
  case_0___0: ;
  if ((unsigned int )*(data + (unsigned long )i) == 0U) {
    sd->sof_read = (u8 )((int )sd->sof_read + 1);
  } else {
  }
  goto ldv_30551;
  case_1___0: ;
  if ((unsigned int )*(data + (unsigned long )i) == 255U) {
    sd->sof_read = (u8 )((int )sd->sof_read + 1);
  } else
  if ((unsigned int )*(data + (unsigned long )i) == 0U) {
    sd->sof_read = 1U;
  } else {
    sd->sof_read = 0U;
  }
  goto ldv_30551;
  case_2: ;
  if ((int )*(data + (unsigned long )i) == (int )byte3) {
    sd->sof_read = (u8 )((int )sd->sof_read + 1);
  } else
  if ((unsigned int )*(data + (unsigned long )i) == 0U) {
    sd->sof_read = 1U;
  } else {
    sd->sof_read = 0U;
  }
  goto ldv_30551;
  case_3___0: ;
  if ((int )*(data + (unsigned long )i) == (int )byte4) {
    sd->sof_read = 0U;
    return (data + (((unsigned long )i + (unsigned long )sd->sof_len) + 0xfffffffffffffffdUL));
  } else {
  }
  if ((unsigned int )byte3 == 0U && (unsigned int )*(data + (unsigned long )i) == 255U) {
    sd->sof_read = 2U;
  } else
  if ((unsigned int )*(data + (unsigned long )i) == 0U) {
    sd->sof_read = 1U;
  } else {
    sd->sof_read = 0U;
  }
  goto ldv_30551;
  switch_break___1: ;
  }
  ldv_30551:
  i = i + 1;
  ldv_30556: ;
  if (i < len) {
    goto ldv_30555;
  } else {
  }
  ldv_30549: ;
  goto ldv_30557;
  case_2___0: ;
  case_4:
  i = 0;
  goto ldv_30564;
  ldv_30563: ;
  {
  if ((int )sd->sof_read == 0) {
    goto case_0___1;
  } else {
  }
  if ((int )sd->sof_read == 1) {
    goto case_1___1;
  } else {
  }
  goto switch_break___2;
  case_0___1: ;
  if ((unsigned int )*(data + (unsigned long )i) == 0U) {
    sd->sof_read = (u8 )((int )sd->sof_read + 1);
  } else {
  }
  goto ldv_30561;
  case_1___1:
  sd->sof_read = 0U;
  if ((unsigned int )*(data + (unsigned long )i) == 255U) {
    if (i > 3) {
      if (gspca_debug > 3) {
        {
        printk("\017%s: header found at offset: %d: %02x %02x 00 %3ph\n", (char *)(& gspca_dev->v4l2_dev.name),
               i + -1, (int )*(data + ((unsigned long )i + 0xfffffffffffffffcUL)),
               (int )*(data + ((unsigned long )i + 0xfffffffffffffffdUL)), data + (unsigned long )i);
        }
      } else {
      }
    } else
    if (gspca_debug > 3) {
      {
      printk("\017%s: header found at offset: %d: 00 %3ph\n", (char *)(& gspca_dev->v4l2_dev.name),
             i + -1, data + (unsigned long )i);
      }
    } else {
    }
    return (data + (((unsigned long )i + (unsigned long )sd->sof_len) + 0xffffffffffffffffUL));
  } else {
  }
  goto ldv_30561;
  switch_break___2: ;
  }
  ldv_30561:
  i = i + 1;
  ldv_30564: ;
  if (i < len) {
    goto ldv_30563;
  } else {
  }
  goto ldv_30557;
  switch_break: ;
  }
  ldv_30557: ;
  return ((u8 *)0U);
}
}
static void sd_pkt_scan(struct gspca_dev *gspca_dev , u8 *data , int len )
{
  struct sd *sd ;
  unsigned char *sof ;
  u8 *tmp ;
  int n ;
  {
  {
  sd = (struct sd *)gspca_dev;
  tmp = cit_find_sof(gspca_dev, data, len);
  sof = tmp;
  }
  if ((unsigned long )sof != (unsigned long )((unsigned char *)0U)) {
    n = (int )((unsigned int )((long )sof) - (unsigned int )((long )data));
    if (n > (int )sd->sof_len) {
      n = n - (int )sd->sof_len;
    } else {
      n = 0;
    }
    {
    gspca_frame_add(gspca_dev, 3, (u8 const *)data, n);
    gspca_frame_add(gspca_dev, 1, (u8 const *)0U, 0);
    len = (int )((unsigned int )len + ((unsigned int )((long )data) - (unsigned int )((long )sof)));
    data = sof;
    }
  } else {
  }
  {
  gspca_frame_add(gspca_dev, 2, (u8 const *)data, len);
  }
  return;
}
}
static void cit_check_button(struct gspca_dev *gspca_dev )
{
  int new_button_state ;
  struct sd *sd ;
  {
  sd = (struct sd *)gspca_dev;
  {
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_3: ;
  case_5: ;
  goto ldv_30581;
  switch_default: ;
  return;
  switch_break: ;
  }
  ldv_30581:
  {
  cit_read_reg(gspca_dev, 275, 0);
  new_button_state = (unsigned int )*(gspca_dev->usb_buf) == 0U;
  }
  if (new_button_state != 0) {
    {
    cit_write_reg(gspca_dev, 1, 275);
    }
  } else {
  }
  if ((int )sd->button_state != new_button_state) {
    {
    input_report_key(gspca_dev->input_dev, 212U, new_button_state);
    input_sync(gspca_dev->input_dev);
    sd->button_state = (u8 )new_button_state;
    }
  } else {
  }
  return;
}
}
static int sd_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct gspca_dev *gspca_dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct sd *sd ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  gspca_dev = (struct gspca_dev *)__mptr + 0xfffffffffffff700UL;
  sd = (struct sd *)gspca_dev;
  gspca_dev->usb_err = 0;
  if ((unsigned int )gspca_dev->streaming == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )sd->stop_on_control_change != 0U) {
    {
    sd_stopN(gspca_dev);
    }
  } else {
  }
  {
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctrl->id == 9963796U) {
    goto case_9963796;
  } else {
  }
  if (ctrl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctrl->id == 9963804U) {
    goto case_9963804;
  } else {
  }
  goto switch_break;
  case_9963776:
  {
  cit_set_brightness(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  case_9963777:
  {
  cit_set_contrast(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  case_9963779:
  {
  cit_set_hue(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  case_9963796:
  {
  cit_set_hflip(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  case_9963803:
  {
  cit_set_sharpness(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  case_9963804:
  {
  cit_set_lighting(gspca_dev, ctrl->__annonCompField82.val);
  }
  goto ldv_30591;
  switch_break: ;
  }
  ldv_30591: ;
  if ((unsigned int )sd->stop_on_control_change != 0U) {
    {
    cit_restart_stream(gspca_dev);
    }
  } else {
  }
  return (gspca_dev->usb_err);
}
}
static struct v4l2_ctrl_ops const sd_ctrl_ops = {0, 0, & sd_s_ctrl};
static int sd_init_controls(struct gspca_dev *gspca_dev )
{
  struct sd *sd ;
  struct v4l2_ctrl_handler *hdl ;
  bool has_brightness ;
  bool has_contrast ;
  bool has_hue ;
  bool has_sharpness ;
  bool has_lighting ;
  bool has_hflip ;
  struct lock_class_key _key ;
  {
  sd = (struct sd *)gspca_dev;
  hdl = & gspca_dev->ctrl_handler;
  has_lighting = 0;
  has_hflip = has_lighting;
  has_sharpness = has_hflip;
  has_hue = has_sharpness;
  has_contrast = has_hue;
  has_brightness = has_contrast;
  {
  if ((int )sd->model == 0) {
    goto case_0;
  } else {
  }
  if ((int )sd->model == 1) {
    goto case_1;
  } else {
  }
  if ((int )sd->model == 2) {
    goto case_2;
  } else {
  }
  if ((int )sd->model == 3) {
    goto case_3;
  } else {
  }
  if ((int )sd->model == 4) {
    goto case_4;
  } else {
  }
  if ((int )sd->model == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  has_hflip = 1;
  has_contrast = has_hflip;
  goto ldv_30610;
  case_1:
  has_lighting = 1;
  has_sharpness = has_lighting;
  has_contrast = has_sharpness;
  has_brightness = has_contrast;
  goto ldv_30610;
  case_2:
  has_lighting = 1;
  has_hue = has_lighting;
  has_brightness = has_hue;
  goto ldv_30610;
  case_3:
  has_sharpness = 1;
  has_contrast = has_sharpness;
  has_brightness = has_contrast;
  goto ldv_30610;
  case_4:
  has_hue = 1;
  has_brightness = has_hue;
  goto ldv_30610;
  case_5:
  has_lighting = 1;
  has_hflip = has_lighting;
  has_sharpness = has_hflip;
  has_hue = has_sharpness;
  has_brightness = has_hue;
  goto ldv_30610;
  switch_break: ;
  }
  ldv_30610:
  {
  gspca_dev->vdev.ctrl_handler = hdl;
  v4l2_ctrl_handler_init_class(hdl, 5U, & _key, "xirlink_cit:3024:(hdl)->_lock");
  }
  if ((int )has_brightness) {
    {
    v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963776U, 0, 63, 1U, 32);
    }
  } else {
  }
  if ((int )has_contrast) {
    {
    v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963777U, 0, 20, 1U, 10);
    }
  } else {
  }
  if ((int )has_hue) {
    {
    v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963779U, 0, 127, 1U, 63);
    }
  } else {
  }
  if ((int )has_sharpness) {
    {
    v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963803U, 0, 6, 1U, 3);
    }
  } else {
  }
  if ((int )has_lighting) {
    {
    sd->lighting = v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963804U, 0, 2, 1U, 1);
    }
  } else {
  }
  if ((int )has_hflip) {
    {
    v4l2_ctrl_new_std(hdl, & sd_ctrl_ops, 9963796U, 0, 1, 1U, 0);
    }
  } else {
  }
  if (hdl->error != 0) {
    {
    printk("\vgspca_xirlink_cit: Could not initialize controls\n");
    }
    return (hdl->error);
  } else {
  }
  return (0);
}
}
static struct sd_desc const sd_desc =
     {"xirlink-cit", & sd_config, & sd_init, & sd_init_controls, & sd_start, & sd_pkt_scan,
    0, 0, & sd_stopN, & sd_stop0, & cit_check_button, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    1U};
static struct sd_desc const sd_desc_isoc_nego =
     {"xirlink-cit", & sd_config, & sd_init, & sd_init_controls, & sd_start, & sd_pkt_scan,
    & sd_isoc_init, & sd_isoc_nego, & sd_stopN, & sd_stop0, & cit_check_button, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1U};
static struct usb_device_id const device_table[8U] = { {15U, 1349U, 32896U, 1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 0UL},
        {15U,
      1349U, 32896U, 2U, 2U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1UL},
        {15U,
      1349U, 32896U, 778U, 778U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 2UL},
        {15U,
      1349U, 32896U, 769U, 769U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 3UL},
        {15U,
      1349U, 32770U, 778U, 778U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 4UL},
        {15U,
      1349U, 32780U, 778U, 778U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 2UL},
        {15U,
      1349U, 32781U, 778U, 778U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 4UL}};
struct usb_device_id const __mod_usb_device_table ;
static int sd_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct sd_desc const *desc ;
  int tmp ;
  {
  desc = & sd_desc;
  {
  if (id->driver_info == 0UL) {
    goto case_0;
  } else {
  }
  if (id->driver_info == 1UL) {
    goto case_1;
  } else {
  }
  if (id->driver_info == 2UL) {
    goto case_2;
  } else {
  }
  if (id->driver_info == 4UL) {
    goto case_4;
  } else {
  }
  if (id->driver_info == 3UL) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0: ;
  case_1: ;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceNumber != 2U) {
    return (-19);
  } else {
  }
  goto ldv_30629;
  case_2: ;
  case_4: ;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceNumber != 0U) {
    return (-19);
  } else {
  }
  goto ldv_30629;
  case_3: ;
  if ((unsigned int )(intf->cur_altsetting)->desc.bInterfaceNumber != 0U) {
    return (-19);
  } else {
  }
  if (ibm_netcam_pro != 0) {
    desc = & sd_desc_isoc_nego;
  } else {
  }
  goto ldv_30629;
  switch_break: ;
  }
  ldv_30629:
  {
  tmp = gspca_dev_probe2(intf, id, desc, 4848, & __this_module);
  }
  return (tmp);
}
}
static struct usb_driver sd_driver =
     {"xirlink-cit", & sd_probe, & gspca_disconnect, 0, & gspca_suspend, & gspca_resume,
    & gspca_resume, 0, 0, (struct usb_device_id const *)(& device_table), {{{{{{0U}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                             {0, 0}},
    {{0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0}, 0U, 0U, 0U, 0U};
static int sd_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_26(& sd_driver, & __this_module, "gspca_xirlink_cit");
  }
  return (tmp);
}
}
static void sd_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_27(& sd_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_sd_driver_exit_6_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_sd_driver_init_6_11(int (*arg0)(void) ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_4_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_6_5(void) ;
void ldv_dispatch_instance_deregister_3_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_3_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_5_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_6_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_6_7(void) ;
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_12(void (*arg0)(struct gspca_dev * ,
                                                                unsigned char * ,
                                                                int ) , struct gspca_dev *arg1 ,
                                                   unsigned char *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_16(void (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_17(void (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct gspca_dev * ,
                                                              struct usb_device_id * ) ,
                                                  struct gspca_dev *arg1 , struct usb_device_id *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(void (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_9(int (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_entry_EMGentry_6(void *arg0 ) ;
int main(void) ;
void ldv_initialize_external_data(void) ;
void ldv_struct_sd_desc_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_5(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_15(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_4(void) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_3(void *arg0 ) ;
void ldv_usb_instance_callback_2_6(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_post_2_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_2_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_2_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_2_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_2_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_suspend_2_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_2(void *arg0 ) ;
int (*ldv_0_callback_config)(struct gspca_dev * , struct usb_device_id * ) ;
void (*ldv_0_callback_dq_callback)(struct gspca_dev * ) ;
int (*ldv_0_callback_init)(struct gspca_dev * ) ;
int (*ldv_0_callback_init_controls)(struct gspca_dev * ) ;
int (*ldv_0_callback_isoc_init)(struct gspca_dev * ) ;
int (*ldv_0_callback_isoc_nego)(struct gspca_dev * ) ;
void (*ldv_0_callback_pkt_scan)(struct gspca_dev * , unsigned char * , int ) ;
int (*ldv_0_callback_start)(struct gspca_dev * ) ;
void (*ldv_0_callback_stop0)(struct gspca_dev * ) ;
void (*ldv_0_callback_stopN)(struct gspca_dev * ) ;
struct gspca_dev *ldv_0_container_struct_gspca_dev_ptr ;
struct usb_device_id *ldv_0_container_struct_usb_device_id_ptr ;
unsigned char *ldv_0_ldv_param_12_1_default ;
int ldv_0_ldv_param_12_2_default ;
int (*ldv_1_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_1_container_struct_v4l2_ctrl_ptr ;
int (*ldv_2_callback_reset_resume)(struct usb_interface * ) ;
struct usb_driver *ldv_2_container_usb_driver ;
struct usb_device_id *ldv_2_ldv_param_13_1_default ;
struct pm_message *ldv_2_ldv_param_8_1_default ;
int ldv_2_probe_retval_default ;
_Bool ldv_2_reset_flag_default ;
struct usb_interface *ldv_2_resource_usb_interface ;
struct usb_device *ldv_2_usb_device_usb_device ;
struct usb_driver *ldv_3_container_usb_driver ;
void (*ldv_6_exit_sd_driver_exit_default)(void) ;
int (*ldv_6_init_sd_driver_init_default)(void) ;
int ldv_6_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_6 ;
int (*ldv_0_callback_config)(struct gspca_dev * , struct usb_device_id * ) = (int (*)(struct gspca_dev * , struct usb_device_id * ))(& sd_config);
void (*ldv_0_callback_dq_callback)(struct gspca_dev * ) = & cit_check_button;
int (*ldv_0_callback_init)(struct gspca_dev * ) = & sd_init;
int (*ldv_0_callback_init_controls)(struct gspca_dev * ) = & sd_init_controls;
int (*ldv_0_callback_isoc_init)(struct gspca_dev * ) = & sd_isoc_init;
int (*ldv_0_callback_isoc_nego)(struct gspca_dev * ) = & sd_isoc_nego;
void (*ldv_0_callback_pkt_scan)(struct gspca_dev * , unsigned char * , int ) = & sd_pkt_scan;
int (*ldv_0_callback_start)(struct gspca_dev * ) = & sd_start;
void (*ldv_0_callback_stop0)(struct gspca_dev * ) = & sd_stop0;
void (*ldv_0_callback_stopN)(struct gspca_dev * ) = & sd_stopN;
int (*ldv_1_callback_s_ctrl)(struct v4l2_ctrl * ) = & sd_s_ctrl;
int (*ldv_2_callback_reset_resume)(struct usb_interface * ) = & gspca_resume;
void (*ldv_6_exit_sd_driver_exit_default)(void) = & sd_driver_exit;
int (*ldv_6_init_sd_driver_init_default)(void) = & sd_driver_init;
void ldv_EMGentry_exit_sd_driver_exit_6_2(void (*arg0)(void) )
{
  {
  {
  sd_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_sd_driver_init_6_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = sd_driver_init();
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
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_struct_gspca_dev_ptr = (struct gspca_dev *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_container_struct_usb_device_id_ptr = (struct usb_device_id *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_0_ldv_param_12_1_default = (unsigned char *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_2_ldv_param_13_1_default = (struct usb_device_id *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_2_ldv_param_8_1_default = (struct pm_message *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_2_resource_usb_interface = (struct usb_interface *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_2_usb_device_usb_device = (struct usb_device *)tmp___6;
  }
  return;
}
}
void ldv_dispatch_deregister_4_1(struct usb_driver *arg0 )
{
  {
  {
  ldv_3_container_usb_driver = arg0;
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4(void)
{
  {
  {
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_6_5(void)
{
  {
  {
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_3_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_2_container_usb_driver = arg0;
  ldv_switch_automaton_state_2_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_3_3(struct usb_driver *arg0 )
{
  {
  {
  ldv_2_container_usb_driver = arg0;
  ldv_switch_automaton_state_2_15();
  }
  return;
}
}
void ldv_dispatch_register_5_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_3_container_usb_driver = arg0;
  ldv_switch_automaton_state_3_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_6_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_4_6_7(void)
{
  {
  {
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 )
{
  {
  {
  sd_isoc_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_11(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 )
{
  {
  {
  sd_isoc_nego(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_12(void (*arg0)(struct gspca_dev * ,
                                                                unsigned char * ,
                                                                int ) , struct gspca_dev *arg1 ,
                                                   unsigned char *arg2 , int arg3 )
{
  {
  {
  sd_pkt_scan(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_15(int (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 )
{
  {
  {
  sd_start(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_16(void (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 )
{
  {
  {
  sd_stop0(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_17(void (*arg0)(struct gspca_dev * ) ,
                                                   struct gspca_dev *arg1 )
{
  {
  {
  sd_stopN(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct gspca_dev * ,
                                                              struct usb_device_id * ) ,
                                                  struct gspca_dev *arg1 , struct usb_device_id *arg2 )
{
  {
  {
  sd_config(arg1, (struct usb_device_id const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(void (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 )
{
  {
  {
  cit_check_button(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_8(int (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 )
{
  {
  {
  sd_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_9(int (*arg0)(struct gspca_dev * ) ,
                                                  struct gspca_dev *arg1 )
{
  {
  {
  sd_init_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  sd_s_ctrl(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_6 == 2) {
    goto case_2;
  } else {
  }
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
  if (ldv_statevar_6 == 8) {
    goto case_8;
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_EMGentry_exit_sd_driver_exit_6_2(ldv_6_exit_sd_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_30982;
  case_3:
  {
  ldv_assume(ldv_statevar_3 == 2);
  ldv_EMGentry_exit_sd_driver_exit_6_2(ldv_6_exit_sd_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_30982;
  case_4:
  {
  ldv_assume(ldv_statevar_0 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4();
  ldv_statevar_6 = 2;
  }
  goto ldv_30982;
  case_5:
  {
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_4_6_5();
  ldv_statevar_6 = 4;
  }
  goto ldv_30982;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_3_6_6();
  ldv_statevar_6 = 5;
  }
  goto ldv_30982;
  case_7:
  {
  ldv_assume(ldv_statevar_1 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_4_6_7();
  ldv_statevar_6 = 6;
  }
  goto ldv_30982;
  case_8:
  {
  ldv_assume(ldv_6_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 3;
  } else {
    ldv_statevar_6 = 7;
  }
  goto ldv_30982;
  case_10:
  {
  ldv_assume(ldv_6_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_30982;
  case_11:
  {
  ldv_assume(ldv_statevar_3 == 4);
  ldv_6_ret_default = ldv_EMGentry_init_sd_driver_init_6_11(ldv_6_init_sd_driver_init_default);
  ldv_6_ret_default = ldv_post_init(ldv_6_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 8;
  } else {
    ldv_statevar_6 = 10;
  }
  goto ldv_30982;
  switch_default: ;
  switch_break: ;
  }
  ldv_30982: ;
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
  ldv_statevar_6 = 11;
  ldv_statevar_0 = 5;
  ldv_statevar_1 = 5;
  ldv_2_reset_flag_default = 0;
  ldv_statevar_2 = 15;
  ldv_statevar_3 = 4;
  }
  ldv_31001:
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
  case_0:
  {
  ldv_entry_EMGentry_6((void *)0);
  }
  goto ldv_30995;
  case_1:
  {
  ldv_struct_sd_desc_dummy_resourceless_instance_0((void *)0);
  }
  goto ldv_30995;
  case_2:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_30995;
  case_3:
  {
  ldv_usb_usb_instance_2((void *)0);
  }
  goto ldv_30995;
  case_4:
  {
  ldv_usb_dummy_factory_3((void *)0);
  }
  goto ldv_30995;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_30995: ;
  goto ldv_31001;
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
void ldv_struct_sd_desc_dummy_resourceless_instance_0(void *arg0 )
{
  void *tmp ;
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
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
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
  if (ldv_statevar_0 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_0 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_0 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_0 == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_31008;
  case_2:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_31008;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_config, ldv_0_container_struct_gspca_dev_ptr,
                                               ldv_0_container_struct_usb_device_id_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_4:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_31008;
  case_5: ;
  goto ldv_31008;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_dq_callback, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_0_8(ldv_0_callback_init, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_0_9(ldv_0_callback_init_controls, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_0_10(ldv_0_callback_isoc_init, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_0_11(ldv_0_callback_isoc_nego, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_13:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_0_ldv_param_12_1_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_0_12(ldv_0_callback_pkt_scan, ldv_0_container_struct_gspca_dev_ptr,
                                                ldv_0_ldv_param_12_1_default, ldv_0_ldv_param_12_2_default);
  ldv_free((void *)ldv_0_ldv_param_12_1_default);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_0_15(ldv_0_callback_start, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_0_16(ldv_0_callback_stop0, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_0_17(ldv_0_callback_stopN, ldv_0_container_struct_gspca_dev_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_31008;
  switch_default: ;
  switch_break: ;
  }
  ldv_31008: ;
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
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
  goto switch_default;
  case_1: ;
  goto ldv_31027;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 1;
  } else {
    ldv_statevar_1 = 3;
  }
  goto ldv_31027;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_s_ctrl, ldv_1_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_31027;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 1;
  } else {
    ldv_statevar_1 = 3;
  }
  goto ldv_31027;
  case_5: ;
  goto ldv_31027;
  switch_default: ;
  switch_break: ;
  }
  ldv_31027: ;
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
  return (10);
  case_6: ;
  return (11);
  case_7: ;
  return (13);
  case_8: ;
  return (15);
  case_9: ;
  return (16);
  case_10: ;
  return (17);
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
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_2_reset_flag_default = 0;
  ldv_statevar_2 = 15;
  return;
}
}
void ldv_switch_automaton_state_2_15(void)
{
  {
  ldv_statevar_2 = 14;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_switch_automaton_state_3_4(void)
{
  {
  ldv_statevar_3 = 3;
  return;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_4_usb_driver_usb_driver ;
  {
  {
  ldv_4_usb_driver_usb_driver = arg1;
  ldv_assume(ldv_statevar_3 == 2);
  ldv_dispatch_deregister_4_1(ldv_4_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_3(void *arg0 )
{
  {
  {
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 3);
  ldv_dispatch_instance_deregister_3_2(ldv_3_container_usb_driver);
  ldv_statevar_3 = 4;
  }
  goto ldv_31079;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 15);
  ldv_dispatch_instance_register_3_3(ldv_3_container_usb_driver);
  ldv_statevar_3 = 2;
  }
  goto ldv_31079;
  case_4: ;
  goto ldv_31079;
  switch_default: ;
  switch_break: ;
  }
  ldv_31079: ;
  return;
}
}
void ldv_usb_instance_callback_2_6(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  gspca_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_post_2_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_2_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_2_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = sd_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_2_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  gspca_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_2_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  gspca_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_suspend_2_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 )
{
  {
  {
  gspca_suspend(arg1, *arg2);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_5_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_5_usb_driver_usb_driver = arg1;
    ldv_assume(ldv_statevar_3 == 4);
    ldv_dispatch_register_5_2(ldv_5_usb_driver_usb_driver);
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
void ldv_usb_usb_instance_2(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  {
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
  if (ldv_statevar_2 == 9) {
    goto case_9;
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
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_3:
  {
  ldv_assume(ldv_2_probe_retval_default != 0);
  ldv_free((void *)ldv_2_resource_usb_interface);
  ldv_free((void *)ldv_2_usb_device_usb_device);
  ldv_2_reset_flag_default = 0;
  ldv_statevar_2 = 15;
  }
  goto ldv_31133;
  case_4:
  {
  ldv_usb_instance_release_2_4(ldv_2_container_usb_driver->disconnect, ldv_2_resource_usb_interface);
  ldv_free((void *)ldv_2_resource_usb_interface);
  ldv_free((void *)ldv_2_usb_device_usb_device);
  ldv_2_reset_flag_default = 0;
  ldv_statevar_2 = 15;
  }
  goto ldv_31133;
  case_5:
  {
  ldv_usb_instance_release_2_4(ldv_2_container_usb_driver->disconnect, ldv_2_resource_usb_interface);
  ldv_free((void *)ldv_2_resource_usb_interface);
  ldv_free((void *)ldv_2_usb_device_usb_device);
  ldv_2_reset_flag_default = 0;
  ldv_statevar_2 = 15;
  }
  goto ldv_31133;
  case_6:
  {
  ldv_usb_instance_callback_2_6(ldv_2_callback_reset_resume, ldv_2_resource_usb_interface);
  ldv_statevar_2 = 4;
  }
  goto ldv_31133;
  case_7:
  {
  ldv_usb_instance_resume_2_7(ldv_2_container_usb_driver->resume, ldv_2_resource_usb_interface);
  ldv_statevar_2 = 4;
  }
  goto ldv_31133;
  case_9: ;
  if ((unsigned long )ldv_2_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_post_2_9(ldv_2_container_usb_driver->post_reset, ldv_2_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_2 = 4;
  goto ldv_31133;
  case_10: ;
  if ((unsigned long )ldv_2_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_pre_2_10(ldv_2_container_usb_driver->pre_reset, ldv_2_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_2 = 9;
  goto ldv_31133;
  case_11: ;
  goto ldv_31133;
  case_12:
  {
  ldv_assume(ldv_2_probe_retval_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_31133;
  case_14:
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_2_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_2_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_2_resource_usb_interface->dev.parent = & ldv_2_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_2_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_2_probe_retval_default = ldv_usb_instance_probe_2_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_2_container_usb_driver->probe,
                                                           ldv_2_resource_usb_interface,
                                                           ldv_2_ldv_param_13_1_default);
  ldv_2_probe_retval_default = ldv_ldv_post_probe_28(ldv_2_probe_retval_default);
  ldv_free((void *)ldv_2_ldv_param_13_1_default);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_2 = 3;
  } else {
    ldv_statevar_2 = 12;
  }
  goto ldv_31133;
  case_15: ;
  goto ldv_31133;
  case_16:
  {
  tmp___3 = ldv_xmalloc(4UL);
  ldv_2_ldv_param_8_1_default = (struct pm_message *)tmp___3;
  ldv_usb_instance_suspend_2_8(ldv_2_container_usb_driver->suspend, ldv_2_resource_usb_interface,
                               ldv_2_ldv_param_8_1_default);
  ldv_free((void *)ldv_2_ldv_param_8_1_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_31133;
  switch_default: ;
  switch_break: ;
  }
  ldv_31133: ;
  return;
}
}
static int ldv_usb_register_driver_26(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
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
static void ldv_usb_deregister_27(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_probe_28(int ldv_func_arg1 )
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
int ldv_filter_err_code(int ret_val ) ;
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
long ldv__builtin_expect(long exp , long c ) ;
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
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int gspca_dev_probe2(struct usb_interface *arg0, const struct usb_device_id *arg1, const struct sd_desc *arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void gspca_disconnect(struct usb_interface *arg0) {
  return;
}
void gspca_frame_add(struct gspca_dev *arg0, enum gspca_packet_type arg1, const u8 *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int gspca_resume(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gspca_suspend(struct usb_interface *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct usb_host_interface *usb_altnum_to_altsetting(const struct usb_interface *arg0, unsigned int arg1) {
  return (struct usb_host_interface *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_clear_halt(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void *external_alloc(void);
struct usb_interface *usb_ifnum_to_if(const struct usb_device *arg0, unsigned int arg1) {
  return (struct usb_interface *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_grab(struct v4l2_ctrl *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return (struct v4l2_ctrl *)external_alloc();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
