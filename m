Return-Path: <usb-storage+bncBDTNDO5RRYJRBI4HQCUQMGQE6UCF26A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C197BB82E
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 14:55:00 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-533f8bc82a8sf1877655a12.0
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 05:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696596900; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/eLcuZ2E+K2owZT31OCqLRYxDMEC2y+uUDcbZSKmJaqWHiROJgl9x9S1gOQF9psFc
         /Rb1EquWD0XVD5NGZY1wrgu/bPhbTf3HvB1LVdCpOtijJRIdlHIaJF23f/wfgGTVSMtL
         lKvYgF7W5irh24JBVmuLjKZT0D1tdWkRMwMvZA/MRidVKnAhXtB1x0kKd1TjRpX4v9uO
         kG3Gcdk/c/1KkCAieTlbIgDUGP4Bo8/SNexIWYoMr7zLHaqCcysuxvB8DGcMYFtAUnUx
         w+t8qePk4H2mrofe0nGfDaiMiGzUqgN+UBVr17osce3tW4jyMWNdSJ70Usb7oMrHVSeg
         xEiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HrDEE2nMgX5NvC1ftNChhgwfnopGjY7aK5JihbXkrOg=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=NMZ4+MZJAdGbVXU+d59MCYw8IfH0uMAZL2RspirmOvlao7vyCA4bID2+dJFC4IED+l
         9keTyAi72DvlBC9GW75Srq0OMO6Znm4CYKVY4/fqpomQ/D6Z0TXN2Y9n+CzlWM5kxFCK
         3afOW5DPnhaywzFNAEAV0dLcvT8Pzko9F77JKHKL8/6txwkPF5ljbFb7ZWWQQ6VOBskf
         pljqXSN/nNJnhfCcxS+MAIHA/IugnxnOjixinKX8O4O7JcqnQAosfi9H1cCx0c6yuxLd
         rDPf4eqKYbPg3lcL6ZwU5I3AQn3XXcYWnsBlmkwD6oQ0EjSkOm7oMVbwjyecEl0Q+u0L
         9CdQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UaLoitKk;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696596900; x=1697201700; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrDEE2nMgX5NvC1ftNChhgwfnopGjY7aK5JihbXkrOg=;
        b=Z7xe7hJnE5SnqUHK+rejF/U9bhpbCoelkjEQMQFS5cffW/MoyOls8I0xmp69f7csF9
         VQdWkiScbXdC7R/FlpcCdrnS43P2i51oWOZ8LAC+oRovDIVnfwnWJpYMJVuACUxoYzob
         1v/BUCjTUv8LvT6Oq7v+3VlYdCvNdFlY8mwsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696596900; x=1697201700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrDEE2nMgX5NvC1ftNChhgwfnopGjY7aK5JihbXkrOg=;
        b=N6s52tLpmCNfbG0ViL+nX1rXWlooqhGMvv8jcnNeOiXEi/dtMxjnh2+NVC+/Xxez5V
         ZCazpNhxTUovTfsgS4GYV3dUQhRgAYoZax+Brmf0zZeh8bWuoCX/c3mGfRAAL3VzhyoB
         2SZiv330oIn8XiJGQbBZkKjxBl2rYA5vnVMdZHH1S8gkxeAlwvNTLK5NXTMcq0wh3/VF
         VkZ2fBpic4lylccYMtGhoO+OUjaWXWDqiG7O3/Tc9wQCsaTVhZhwSICm/wSykv2PvWzz
         NmQQTUOOx9WZFAjhvKkybO+B7UoUfMxqLnrmIeP6m5UCZ8muyedZaC3qwljTZInG0iHL
         PcJg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxfHiEWk9kBoJQFdE0A0XIvpgpgofrsoUjq+d5hqp/A8QjlId8s
	1TlajsJHWbPBV+Kv4Pa8BuxHmQ==
X-Google-Smtp-Source: AGHT+IEU6UkO+mT2zWWrU8wT2+BApJ6OUAjwYqF+hAXQYZxtsDwlYrW1HNH1DeRdPaf8nSm5exbh2w==
X-Received: by 2002:aa7:c74a:0:b0:525:7234:52b7 with SMTP id c10-20020aa7c74a000000b00525723452b7mr7236347eds.19.1696596899795;
        Fri, 06 Oct 2023 05:54:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:fb0f:0:b0:522:17b3:a113 with SMTP id d15-20020a50fb0f000000b0052217b3a113ls971441edq.1.-pod-prod-06-eu;
 Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
X-Received: by 2002:a17:907:763b:b0:9b6:582e:be5e with SMTP id jy27-20020a170907763b00b009b6582ebe5emr7495367ejc.60.1696596898390;
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696596898; cv=none;
        d=google.com; s=arc-20160816;
        b=nJzWr/NZ7N8F5XhLJPtguOtgOMw5TGzZK0gz2ZQbqe+TU7wE6f6SUGeLkmhn07wMju
         E83XhHUmgUPVkxPT3UFq9w2fHbUYcgnXYthxIJ/LxkzvnS6YQkb6cCPfzSd/65i3+umS
         bkD++yyzuu0BTW/bdxaCxFROCO0h3c7FvIz0VWsyXzs4O9vXZ8RcIUgGSOiHLfNng0SF
         4Uc+j8h4kPc6vGvGhCkVh5LSGsH7lJbxHCNXheqJOLw1UEGmtvsWGU0LOxK/T8z8rKLR
         VIyBUO/I4pRo6/jrhqaAvhPtkhD/jyhsFwZCplb2Uas2HCLXkLAdFr2R9eSvbajzUO8R
         ntjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1+Xk47edy3U3XgclyVuRlA6zu+d2RpKkXSanUVJr3n8=;
        fh=a0TltY5qNwl0Oa9ebjgPj0wI1noiSzhlLA8n7ahwZlA=;
        b=OwNqOpIu4FHRZDqhLruY/icQEgTrpYwWncnk2Cik4APb8VumwCEGHvcYIie0iv1KnX
         SnU1Tha9FOCr5iuibTpG9gDFnQixpk9EJ9qhbN8ycpI66QOEaCxCDV33EmfqqukJXey6
         9oJIz06KVpwuor1lsNdp41CPUORV/Y6R1612ZfImZUTKlky1/gLTsOpEYqQsUX51BJA7
         lOATMGuDy+/kAgvcqur8KWT0bSt7iJZm66+jJ1gKx/aJ6LU/zE2UsTKsrISyD5k0WOlb
         6qxDUpFpXJ8emiLnxEGZyRcm7PtcicHt9+fIxOUhVyZ+k/+YP/1JQ28y3H33PXauoh/V
         6QtQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UaLoitKk;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id hg12-20020a1709072ccc00b009ae61969480sor1557361ejc.12.2023.10.06.05.54.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Oct 2023 05:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:210a:b0:9ae:56da:6068 with SMTP id 10-20020a170906210a00b009ae56da6068mr7408282ejt.57.1696596897956;
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
Received: from sauvignon.fi.muni.cz (laomedon.fi.muni.cz. [147.251.42.107])
        by smtp.gmail.com with ESMTPSA id p26-20020a1709060dda00b0099bc08862b6sm2894660eji.171.2023.10.06.05.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:54:57 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	linux-block@vger.kernel.org,
	stern@rowland.harvard.edu,
	oneukum@suse.com,
	jonathan.derrick@linux.dev,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [RFC PATCH 4/6] usb-storage,uas: use host helper to
 generate driver info
Date: Fri,  6 Oct 2023 14:54:43 +0200
Message-ID: <20231006125445.122380-5-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006125445.122380-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=UaLoitKk;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

The USB mass storage quirks flags are stored in driver_info,
a 32-bit integer (unsigned long on 32-bit platforms).
As this attribute cannot be enlarged, we need to use some form
of translation of 64-bit quirk bits.

This problem was discussed on USB list
https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/

The initial solution to use static array extensively increased the size
of the kernel module, so I decided to try the second suggested solution:
generate a table by host-compiled program and use bit 31 to indicate
that the value is index and not actual value.

This patch adds a host-compiled program that processes unusual_devs.h
(and unusual_uas.h) and generates files unusual-flags.c and unusual-flags-uas.c
(for pre-processed USB device table with 32 bit device info) and unusual-flags.h
with function to translate flags to 64-bits from device-info.

The separate generated header file is needed as storage and UAS drivers headers
are tightly bound together and any ohter solution seems to be more pervasive.

Translation function is used only in usb-storage and uas modules; all other
USB storage modules store flags directly, using only 32-bit integers.

This translation is unnecessary for a 64-bit system, but I keep it
in place for simplicity.
(Also, I did not find a reliable way a host-compiled program can detect
that the target platform has 32-bit unsigned long (usual macros do not
work here!).

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 drivers/usb/storage/Makefile       |  25 ++++
 drivers/usb/storage/mkflags.c      | 212 +++++++++++++++++++++++++++++
 drivers/usb/storage/uas-detect.h   |   2 +-
 drivers/usb/storage/uas.c          |  17 +--
 drivers/usb/storage/usb.c          |   7 +-
 drivers/usb/storage/usual-tables.c |  23 +---
 6 files changed, 248 insertions(+), 38 deletions(-)
 create mode 100644 drivers/usb/storage/mkflags.c

diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
index 46635fa4a340..1eacdbb387cd 100644
--- a/drivers/usb/storage/Makefile
+++ b/drivers/usb/storage/Makefile
@@ -45,3 +45,28 @@ ums-realtek-y		:= realtek_cr.o
 ums-sddr09-y		:= sddr09.o
 ums-sddr55-y		:= sddr55.o
 ums-usbat-y		:= shuttle_usbat.o
+
+$(obj)/usb.o: $(obj)/unusual-flags.h
+$(obj)/usual-tables.o: $(obj)/unusual-flags.c
+$(obj)/uas.o: $(obj)/unusual-flags.h $(obj)/unusual-flags-uas.c
+clean-files		:= unusual-flags.h unusual-flags.c unusual-flags-uas.c
+HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
+hostprogs		+= mkflags
+
+quiet_cmd_mkflag_flags = FLAGS   $@
+      cmd_mkflag_flags = $(obj)/mkflags flags > $@
+
+quiet_cmd_mkflag_storage = FLAGS   $@
+      cmd_mkflag_storage = $(obj)/mkflags storage > $@
+
+quiet_cmd_mkflag_uas = FLAGS   $@
+      cmd_mkflag_uas = $(obj)/mkflags uas > $@
+
+$(obj)/unusual-flags.h: $(obj)/mkflags FORCE
+	$(call if_changed,mkflag_flags)
+
+$(obj)/unusual-flags.c: $(obj)/mkflags FORCE
+	$(call if_changed,mkflag_storage)
+
+$(obj)/unusual-flags-uas.c: $(obj)/mkflags FORCE
+	$(call if_changed,mkflag_uas)
diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
new file mode 100644
index 000000000000..11aa6579e7e1
--- /dev/null
+++ b/drivers/usb/storage/mkflags.c
@@ -0,0 +1,212 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <stdio.h>
+#include <string.h>
+
+/*
+ * Cannot use userspace <inttypes.h> as code below
+ * processes internal kernel headers
+ */
+#include <linux/types.h>
+
+/*
+ * Silence warning for definitions in headers we do not use
+ */
+struct usb_device_id {};
+struct usb_interface;
+
+#include <linux/usb_usual.h>
+
+struct svals {
+	unsigned int type;
+
+	/*interface */
+	uint8_t bDeviceSubClass;
+	uint8_t bDeviceProtocol;
+
+	/* device */
+	uint16_t idVendor;
+	uint16_t idProduct;
+	uint16_t bcdDevice_lo;
+	uint16_t bcdDevice_hi;
+
+	uint64_t flags;
+	unsigned int set;
+	unsigned int idx;
+};
+
+enum { TYPE_DEVICE_STORAGE, TYPE_DEVICE_UAS, TYPE_CLASS };
+enum { FLAGS_NOT_SET, FLAGS_SET, FLAGS_DUPLICATE };
+#define FLAGS_END (uint64_t)-1
+
+#define IS_ENABLED(x) 0
+
+static struct svals vals[] = {
+#define USUAL_DEV(useProto, useTrans) \
+{ TYPE_CLASS, useProto, useTrans, 0, 0, 0, 0, 0, FLAGS_NOT_SET, 0 }
+
+#define COMPLIANT_DEV  UNUSUAL_DEV
+#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
+		    vendorName, productName, useProtocol, useTransport, \
+		    initFunction, flags) \
+{ TYPE_DEVICE_STORAGE, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
+
+#include "unusual_devs.h"
+
+/* UAS */
+#undef UNUSUAL_DEV
+#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
+		    vendorName, productName, useProtocol, useTransport, \
+		    initFunction, flags) \
+{ TYPE_DEVICE_UAS, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
+
+#include "unusual_uas.h"
+
+{ .flags = FLAGS_END }
+};
+#undef UNUSUAL_DEV
+#undef USUAL_DEV
+#undef COMPLIANT_DEV
+#undef IS_ENABLED
+
+#define HI32 (uint32_t)0x80000000
+
+static unsigned long get_device_info(uint64_t flags, unsigned int idx)
+{
+	if (flags < HI32)
+		return (unsigned long)flags;
+
+	/* Use index that will be processed in usb_stor_di2flags */
+	return HI32 + idx;
+}
+
+static void print_class(uint8_t bDeviceSubClass, uint8_t bDeviceProtocol)
+{
+	printf("\t{ .match_flags = USB_DEVICE_ID_MATCH_INT_INFO, ");
+	printf(".bInterfaceClass = USB_CLASS_MASS_STORAGE, ");
+	printf(".bInterfaceSubClass = 0x%x, .bInterfaceProtocol = 0x%x },\n",
+		bDeviceSubClass, bDeviceProtocol);
+}
+static void print_type(unsigned int type)
+{
+	for (int i = 0; vals[i].flags != FLAGS_END; i++) {
+		if (vals[i].type != type)
+			continue;
+
+		if (type == TYPE_DEVICE_STORAGE || type == TYPE_DEVICE_UAS) {
+			printf("\t{ .match_flags = USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION, ");
+			printf(".idVendor = 0x%x, .idProduct =0x%x, "
+				".bcdDevice_lo = 0x%x, .bcdDevice_hi = 0x%x, .driver_info = 0x%lx },\n",
+				vals[i].idVendor, vals[i].idProduct,
+				vals[i].bcdDevice_lo, vals[i].bcdDevice_hi,
+				get_device_info(vals[i].flags, vals[i].idx));
+		} else if (type == TYPE_CLASS)
+			print_class(vals[i].bDeviceSubClass, vals[i].bDeviceProtocol);
+	}
+}
+
+static void print_usb_flags(void)
+{
+	int i;
+
+	printf("#include <linux/types.h>\n\n");
+
+	/* usb_stor_di2flags */
+	printf("static u64 usb_stor_di2flags(unsigned long idx)\n{\n");
+	printf("\tu64 flags = 0;\n\n");
+	printf("\tif (idx < 0x%x) \n\t\treturn idx;\n\n", HI32);
+	printf("\tswitch(idx - 0x%x) {\n", HI32);
+	for (i = 0; vals[i].flags != FLAGS_END; i++) {
+		if (vals[i].set == FLAGS_SET)
+			printf("\tcase %u: flags = 0x%llx; break;\n", vals[i].idx, vals[i].flags);
+	}
+	printf("\t}\n\n");
+	printf("\treturn flags;\n");
+	printf("}\n");
+}
+
+static void print_usb_storage(void)
+{
+	printf("#include <linux/usb.h>\n\n");
+
+	/* usb_storage_usb_ids */
+	printf("const struct usb_device_id usb_storage_usb_ids[] = {\n");
+
+	/* USB storage devices */
+	print_type(TYPE_DEVICE_STORAGE);
+
+	/* UAS storage devices */
+	printf("#if IS_ENABLED(CONFIG_USB_UAS)\n");
+	print_type(TYPE_DEVICE_UAS);
+	printf("#endif\n");
+
+	/* transport subclasses */
+	print_type(TYPE_CLASS);
+
+	printf("\t{ }\t\t/* Terminating entry */\n};\n");
+	printf("MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);\n");
+}
+
+static void print_usb_uas(void)
+{
+	printf("#include <linux/usb.h>\n\n");
+
+	/* uas_usb_ids */
+	printf("const struct usb_device_id uas_usb_ids[] = {\n");
+
+	/* UAS storage devices */
+	print_type(TYPE_DEVICE_UAS);
+
+	/* transport subclasses */
+	print_class(USB_SC_SCSI, USB_PR_BULK);
+	print_class(USB_SC_SCSI, USB_PR_UAS);
+
+	printf("\t{ }\t\t/* Terminating entry */\n};\n");
+	printf("MODULE_DEVICE_TABLE(usb, uas_usb_ids);\n");
+}
+
+int main(int argc, char *argv[])
+{
+	int i, j, idx = 0, idx_old, skip = 0;
+
+	if (argc != 2 || (strcmp(argv[1], "flags") &&
+	    strcmp(argv[1], "storage") && strcmp(argv[1], "uas"))) {
+		printf("Please specify type: storage, uas or flags.\n");
+		return 1;
+	}
+
+	for (i = 0; vals[i].flags != FLAGS_END; i++) {
+		if (vals[i].type == TYPE_CLASS)
+			continue;
+		skip = 0;
+		if (vals[i].flags >= HI32) {
+			for (j = 0; j < i; j++) {
+				if (vals[j].flags == vals[i].flags &&
+				    vals[j].set == FLAGS_SET) {
+					skip = 1;
+					idx_old = vals[j].idx;
+					break;
+				}
+			}
+			if (skip) {
+				vals[i].idx = idx_old;
+				vals[i].set = FLAGS_DUPLICATE;
+			} else {
+				vals[i].idx = idx;
+				vals[i].set = FLAGS_SET;
+				idx++;
+			}
+		}
+	}
+
+	if (!strcmp(argv[1], "flags"))
+		print_usb_flags();
+	else if (!strcmp(argv[1], "storage"))
+		print_usb_storage();
+	else if (!strcmp(argv[1], "uas"))
+		print_usb_uas();
+	else
+		return 1;
+
+	return 0;
+}
diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index 4d3b49e5b87a..701621aaa9e7 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -59,7 +59,7 @@ static int uas_use_uas_driver(struct usb_interface *intf,
 	struct usb_host_endpoint *eps[4] = { };
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct usb_hcd *hcd = bus_to_hcd(udev->bus);
-	u64 flags = id->driver_info;
+	u64 flags = usb_stor_di2flags(id->driver_info);
 	struct usb_host_interface *alt;
 	int r;
 
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 696bb0b23599..f6e293daabf4 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -26,6 +26,7 @@
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_tcq.h>
 
+#include "unusual-flags.h"
 #include "uas-detect.h"
 #include "scsiglue.h"
 
@@ -909,21 +910,7 @@ static const struct scsi_host_template uas_host_template = {
 	.cmd_size = sizeof(struct uas_cmd_info),
 };
 
-#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
-		    vendorName, productName, useProtocol, useTransport, \
-		    initFunction, flags) \
-{ USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
-	.driver_info = (flags) }
-
-static struct usb_device_id uas_usb_ids[] = {
-#	include "unusual_uas.h"
-	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_BULK) },
-	{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, USB_SC_SCSI, USB_PR_UAS) },
-	{ }
-};
-MODULE_DEVICE_TABLE(usb, uas_usb_ids);
-
-#undef UNUSUAL_DEV
+#include "unusual-flags-uas.c"
 
 static int uas_switch_interface(struct usb_device *udev,
 				struct usb_interface *intf)
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 72b48b94aa5f..f3a53c3eeb45 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -56,6 +56,8 @@
 #include "sierra_ms.h"
 #include "option_ms.h"
 
+#include "unusual-flags.h"
+
 #if IS_ENABLED(CONFIG_USB_UAS)
 #include "uas-detect.h"
 #endif
@@ -589,7 +591,10 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
 	us->protocol = (unusual_dev->useTransport == USB_PR_DEVICE) ?
 			idesc->bInterfaceProtocol :
 			unusual_dev->useTransport;
-	us->fflags = id->driver_info;
+	if (fflags_use_index)
+		us->fflags = usb_stor_di2flags(id->driver_info);
+	else
+		us->fflags = id->driver_info;
 
 	usb_stor_adjust_quirks(us->pusb_dev, &us->fflags);
 
diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
index a26029e43dfd..c5871c1c3915 100644
--- a/drivers/usb/storage/usual-tables.c
+++ b/drivers/usb/storage/usual-tables.c
@@ -13,28 +13,9 @@
 
 
 /*
- * The table of devices
+ * The table of devices is pre-generated in unusual-flags.c
  */
-#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
-		    vendorName, productName, useProtocol, useTransport, \
-		    initFunction, flags) \
-{ USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
-  .driver_info = (kernel_ulong_t)(flags) }
-
-#define COMPLIANT_DEV	UNUSUAL_DEV
-
-#define USUAL_DEV(useProto, useTrans) \
-{ USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, useProto, useTrans) }
-
-const struct usb_device_id usb_storage_usb_ids[] = {
-#	include "unusual_devs.h"
-	{ }		/* Terminating entry */
-};
-MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);
-
-#undef UNUSUAL_DEV
-#undef COMPLIANT_DEV
-#undef USUAL_DEV
+#include "unusual-flags.c"
 
 /*
  * The table of devices to ignore
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231006125445.122380-5-gmazyland%40gmail.com.
