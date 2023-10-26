Return-Path: <usb-storage+bncBDTNDO5RRYJRB77Y5CUQMGQEGAUSJWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 710D87D8077
	for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 12:16:32 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-540150414efsf532671a12.3
        for <lists+usb-storage@lfdr.de>; Thu, 26 Oct 2023 03:16:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698315392; cv=pass;
        d=google.com; s=arc-20160816;
        b=dNcLIUN2eS509hvHiZTH0NEw7L1JXO3QKlGkLG+lkGjd3H5E8h8P7cIAEomYVBYAyz
         /B41GX8zcOkf8L4xhLx8+fn/C2ZfAJGUCJGlmC/BVc2RaRiMVFV6vHe7yGqt3X1VCNCc
         sNaAA0w3PBA5bwU3bu4K9A1nwFnJZnzgeEwWvN7i7m7FPOTZaRPPq8Z+PXljPa1HqRsG
         uA18J5G8D4/77Hqv2vJS5BQnhTVvTS3tNHqIhPl/aeln1JWksuiTeCXzvv1YLsiDbaOD
         eCqgWq3R1xoZuPzMFSxL0AqHz21p2pK9O6bmElXzYWcikf0FtAvSsdJd0IopGxCeSA0D
         R3Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QzC26QRfofPDfJ5H4l/7o4jXGH5EsAdf9LN1Wc2/h5Q=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=VUJnD7DumkoeO1TfZAzvNjNzwejXod54mLiHFR19veOfOqmJ+p7bZbdRKjfPouUi6n
         /NORVXQZt8ykNGkGehPbZ+6kGSvD3Gyboy2IxYCjZHM+8lZJHmO68iFDEQvLjkjIqyWS
         duGj0cPKNTeiE5P+xo3h3cWm2pyj4pQPCxsB/Q4V4mTYgp+cLb2OB9/faq+nq4QiY/FH
         fbo7ixmCMXKCIgALxINGCkZ9Ycmk1t9vUocxWkmJKOD+kRa9LfRhn5NhMBf18nv+J5A5
         nBrLVFwiJq1JQBGI+C5UCrMzfkBui/gg9NQOl0qoY/9oFUmL4dv5LytKr/1OqZsSUuSt
         E7PQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=IZwyEC8R;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698315392; x=1698920192; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzC26QRfofPDfJ5H4l/7o4jXGH5EsAdf9LN1Wc2/h5Q=;
        b=czFg70LPfKVxEgmcJhmsVoyWfkGGl2rMjgBq4sO/ECeReMVH8tvdcEnaFw9Ku4ccaB
         Yg1HjonUnKaOB1YmCF1SrD3EKhyRLPnqeaSwbgi5CWiPe+5iJu8lodqmWNYxRcE8fA3R
         6ZepFzgqABnprpfiLGnGp4TKchnc6m2BzAXfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698315392; x=1698920192;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QzC26QRfofPDfJ5H4l/7o4jXGH5EsAdf9LN1Wc2/h5Q=;
        b=NirRnt6xbeVwgV1EycHhyhlwZJWIod2Eiyjaa/K8S4X1YVlHalRplxisu/mtdXPF2B
         bag/JkTpQLUgvLpN2Cn2ppnlCsDIqi2TsdkSoxhal5ysJFPKG50sZqKp6ivmzGwYJBLU
         QbBHaw+nI7MTDV7LnMniVsE7ah6H+4BhWRqe4nTFt41KPAtRWt76oaYts8A3KPVDkMpm
         9bm7oYr7wqe1nV5HnsMD4rua9ow+QzUinYPiOfq65StdEOgmJ/jOYW2FQEEofBW56Okx
         /rikxIhPyevzqd8AxhmMeZo+bESNriNSY9T/Omgwp7v53G/hUxeRTywVw62UGP82fZeL
         GeeQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyVoZdyzr6xHZ46xjm0Jq6uWpVSFCllyHWgplk1DpfJfXJmEXdI
	YAVsmHdrFFbSaQ8afjDV6aQV/w==
X-Google-Smtp-Source: AGHT+IFB8jM/7blJJSa6ue6XpUUkLRrUAqoYVHjE9abfMEdFYY7FYs/zMRDX66YTV5V/SpSFmbrPZw==
X-Received: by 2002:a50:9fcc:0:b0:53e:fdeb:13c7 with SMTP id c70-20020a509fcc000000b0053efdeb13c7mr11246068edf.21.1698315391884;
        Thu, 26 Oct 2023 03:16:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:d1c6:0:b0:541:215f:6810 with SMTP id g6-20020aa7d1c6000000b00541215f6810ls284135edp.2.-pod-prod-05-eu;
 Thu, 26 Oct 2023 03:16:30 -0700 (PDT)
X-Received: by 2002:a17:906:da82:b0:9c7:5db4:c943 with SMTP id xh2-20020a170906da8200b009c75db4c943mr15466356ejb.40.1698315389982;
        Thu, 26 Oct 2023 03:16:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698315389; cv=none;
        d=google.com; s=arc-20160816;
        b=Oo10fC6iDNN9K4FwfhZdI+M3FCgaNYz1N10mqXbwR8IK7ifvWIiQOsVfZPpMscgIJT
         VOegBnM3un2Am8k6z2G/COZYyrJjksdOIUzuYgqqU4BfGiW5ILuma48VT9jwkqtU6PXv
         sou1qL1tucOx6hyGqsA4Tu28mmuvbouS5p+HbyTw97ROLAcDxbQtn03gqqOc2aY06AXT
         MPI+iBpoIjv2PLuS5FUapy6SGJkCOZioSy3x+isXg5VssaD/hl5mE+jfM+znHcuKb4yn
         ZgnuJxuPj97JYzNe9ztzbbvO+hlu/JnbVBdu1+/d8qbzF1TY84sdXoSXwvRoT+qRD456
         9KTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AkjuTFfoLx1JL94j6ELO8jS7ybJITpaFenCgMdUY8TY=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=QO7TPndnsoxuT6Y+cbUGqfTXhZ9yVuA1QbBzl7uzGg0b3fHZOROdRhDXPrXiO8nIGN
         PRY3sVJL1a63OSpA6lOiTrOd6+liBAQYWhuNDylCax5GZQlCbUnVNSvFn0w7cYUHT25Y
         iLvwzKd2S9GgD9BrnekaFX1H3rtQ3XmzS9RNWXftSiQTTW1v2/ehNc0M6yJ446EQaLoa
         lfF4GwmKZVkqriUUlZX0moWebYAxcE67RPSg4HM0GZp/pWe5o1WQbo9esOTTHnlzNlwk
         zlmO21ma435XCSkBJxNu+bgcf0hSJfoATTEsLBw2Snwr+Y4dxJ75DA6YinJtQ6G1/PUe
         xJdw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=IZwyEC8R;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ht7-20020a170907608700b009be23a040f1sor4245389ejc.18.2023.10.26.03.16.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Oct 2023 03:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:907:72c5:b0:9ae:6a51:87c3 with SMTP id du5-20020a17090772c500b009ae6a5187c3mr11799065ejc.9.1698315389315;
        Thu, 26 Oct 2023 03:16:29 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id ze15-20020a170906ef8f00b009bf7a4d591bsm11289653ejb.45.2023.10.26.03.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 03:16:28 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH v3] usb-storage,uas: use host helper to generate
 driver info
Date: Thu, 26 Oct 2023 12:16:15 +0200
Message-ID: <20231026101615.395113-1-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-5-gmazyland@gmail.com>
References: <20231016072604.40179-5-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=IZwyEC8R;       spf=pass
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

The USB mass storage quirks flags can be stored in driver_info in
a 32-bit integer (unsigned long on 32-bit platforms).
As this attribute cannot be enlarged, we need to use some form
of translation of 64-bit quirk bits.

This problem was discussed on the USB list
https://lore.kernel.org/linux-usb/f9e8acb5-32d5-4a30-859f-d4336a86b31a@gmail.com/

The initial solution to use a static array extensively increased the size
of the kernel module, so I decided to try the second suggested solution:
generate a table by host-compiled program and use bit 31 to indicate
that the value is an index, not the actual value.

This patch adds a host-compiled program that processes unusual_devs.h
(and unusual_uas.h) and generates files usb-ids.c and usb-ids-uas.c
(for pre-processed USB device table with 32-bit device info).
These files also contain a generated translation table for driver_info
to 64-bit values.

The translation function is used only in usb-storage and uas modules; all
other USB storage modules store flags directly, using only 32-bit flags.

For 64-bit platforms, where unsigned long is 64-bit, we do not need to
convert quirk flags to 32-bit index; the translation function there uses
flags directly.

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---

Changes from v2
 - Rebased to usb-testing tree
 - Include changes from Alan Stern and Greg KH reviews (thanks!)
 - Remove FORCE from Makefile add explicit dependence on unusual*.h headers
 - Avoid use of #ifdef (mkflags.c need -D CONFIG_64BIT=X flag now)
 - Use drv_info in functions and variable names (instead of di)
 - Use wrapper for usb_stor_probe1(), this simplifies the previous separate
   patch (no need to touch other drivers) so it can be merged here directly
 - Merge 64bit optimization to this patch too

Changes from v1
 - Separate flags generation from OPAL command patchset
   (it means there is currently no quirk flag that requires this patch yet)

 drivers/usb/storage/Makefile       |  32 ++++
 drivers/usb/storage/mkflags.c      | 233 +++++++++++++++++++++++++++++
 drivers/usb/storage/uas-detect.h   |   6 +-
 drivers/usb/storage/uas.c          |  23 +--
 drivers/usb/storage/usb-ids.h      |  37 +++++
 drivers/usb/storage/usb.c          |  32 +++-
 drivers/usb/storage/usual-tables.c |  23 +--
 7 files changed, 339 insertions(+), 47 deletions(-)
 create mode 100644 drivers/usb/storage/mkflags.c
 create mode 100644 drivers/usb/storage/usb-ids.h

diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
index 46635fa4a340..9c09d83769e3 100644
--- a/drivers/usb/storage/Makefile
+++ b/drivers/usb/storage/Makefile
@@ -45,3 +45,35 @@ ums-realtek-y		:= realtek_cr.o
 ums-sddr09-y		:= sddr09.o
 ums-sddr55-y		:= sddr55.o
 ums-usbat-y		:= shuttle_usbat.o
+
+# The mkflags host-compiled generator produces usb-ids.c (usb-storage)
+# and usb-ids-uas.c (uas) with USB device tables.
+# These tables include pre-computed 32-bit values, as USB driver_info
+# (where the value is stored) can be only 32-bit.
+# The most significant bit means it is index to 64-bit pre-computed table
+# generated by mkflags host-compiled program.
+# Currently used only by mass-storage and uas driver.
+
+$(obj)/usual-tables.o: $(obj)/usb-ids.c
+$(obj)/uas.o: $(obj)/usb-ids-uas.c
+clean-files		:= usb-ids.c usb-ids-uas.c
+HOSTCFLAGS_mkflags.o	:= -I $(srctree)/include/
+ifdef CONFIG_64BIT
+HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT=1
+else
+HOSTCFLAGS_mkflags.o	+= -D CONFIG_64BIT=0
+endif
+hostprogs		+= mkflags
+
+quiet_cmd_mkflag_storage = FLAGS   $@
+cmd_mkflag_storage = $(obj)/mkflags storage > $@
+
+quiet_cmd_mkflag_uas = FLAGS   $@
+cmd_mkflag_uas = $(obj)/mkflags uas > $@
+
+# mkflags always need to include unusual_devs.h and unusual_uas.h
+$(obj)/usb-ids.c: $(obj)/mkflags $(obj)/unusual_devs.h $(obj)/unusual_uas.h
+	$(call cmd,mkflag_storage)
+
+$(obj)/usb-ids-uas.c: $(obj)/mkflags $(obj)/unusual_devs.h $(obj)/unusual_uas.h
+	$(call cmd,mkflag_uas)
diff --git a/drivers/usb/storage/mkflags.c b/drivers/usb/storage/mkflags.c
new file mode 100644
index 000000000000..e9c7eb524999
--- /dev/null
+++ b/drivers/usb/storage/mkflags.c
@@ -0,0 +1,233 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+/*
+ * This is host-compiled generator for usb-ids.c (usb-storage)
+ * and usb-ids-uas.c (uas).
+ *
+ * Generated files contain pre-computed 32-bit values, as USB
+ * driver_info (where the value is stored) can be only 32-bit.
+ * The most significant bit means that it is index to 64-bit
+ * pre-computed table named usb_stor_drv_info_u64_table with size
+ * stored in usb_stor_drv_info_u64_table_size (for sanity check).
+ *
+ * Note that usb-storage driver contains also UAS devices, while UAS
+ * driver contains only UAS entries (so there can be duplicates).
+ */
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
+typedef enum { TYPE_DEVICE_STORAGE, TYPE_DEVICE_UAS, TYPE_CLASS } dev_type;
+typedef enum { FLAGS_NOT_SET, FLAGS_SET, FLAGS_DUPLICATE } dev_flags_set;
+#define FLAGS_END (uint64_t)-1
+
+struct unusual_dev_entry {
+	dev_type type;
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
+	dev_flags_set set;
+	unsigned int idx;
+};
+
+static struct unusual_dev_entry unusual_dev_entries[] = {
+#define USUAL_DEV(useProto, useTrans) \
+{ TYPE_CLASS, useProto, useTrans, 0, 0, 0, 0, 0, FLAGS_NOT_SET, 0 }
+
+#define COMPLIANT_DEV  UNUSUAL_DEV
+#define IS_ENABLED(x) 0
+
+/* usb-storage */
+#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
+		    vendorName, productName, useProtocol, useTransport, \
+		    initFunction, flags) \
+{ TYPE_DEVICE_STORAGE, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
+#include "unusual_devs.h"
+#undef UNUSUAL_DEV
+
+/* uas */
+#define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
+		    vendorName, productName, useProtocol, useTransport, \
+		    initFunction, flags) \
+{ TYPE_DEVICE_UAS, 0, 0, id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, flags, FLAGS_NOT_SET, 0 }
+#include "unusual_uas.h"
+#undef UNUSUAL_DEV
+
+/* Terminating entry */
+{ .flags = FLAGS_END }
+};
+#undef USUAL_DEV
+#undef COMPLIANT_DEV
+#undef IS_ENABLED
+
+/* Highest bit indicates it is index to usb_stor_drv_info_u64_table */
+#define HI32 (uint32_t)(1UL << 31)
+
+static uint64_t get_driver_info(uint64_t flags, unsigned int idx)
+{
+	if (CONFIG_64BIT)
+		return flags;
+
+	if (flags < HI32)
+		return flags;
+
+	/* Use index that will be processed in usb_stor_drv_info_to_flags */
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
+static void print_type(dev_type type)
+{
+	for (int i = 0; unusual_dev_entries[i].flags != FLAGS_END; i++) {
+		if (unusual_dev_entries[i].type != type)
+			continue;
+
+		if (type == TYPE_DEVICE_STORAGE || type == TYPE_DEVICE_UAS) {
+			printf("\t{ .match_flags = USB_DEVICE_ID_MATCH_DEVICE_AND_VERSION, ");
+			printf(".idVendor = 0x%04x, .idProduct =0x%04x, "
+				".bcdDevice_lo = 0x%04x, .bcdDevice_hi = 0x%04x, .driver_info = 0x%llx },\n",
+				unusual_dev_entries[i].idVendor, unusual_dev_entries[i].idProduct,
+				unusual_dev_entries[i].bcdDevice_lo, unusual_dev_entries[i].bcdDevice_hi,
+				get_driver_info(unusual_dev_entries[i].flags, unusual_dev_entries[i].idx));
+		} else if (type == TYPE_CLASS)
+			print_class(unusual_dev_entries[i].bDeviceSubClass, unusual_dev_entries[i].bDeviceProtocol);
+	}
+}
+
+static void print_usb_flags(const char *type)
+{
+	int i, count;
+
+	if (CONFIG_64BIT) {
+		printf("const u64 usb_%s_drv_info_u64_table[] = {};\n", type);
+		printf("const unsigned long usb_%s_drv_info_u64_table_size = 0;\n\n", type);
+	} else {
+		printf("const u64 usb_%s_drv_info_u64_table[] = {\n", type);
+		for (i = 0, count = 0; unusual_dev_entries[i].flags != FLAGS_END; i++) {
+			if (unusual_dev_entries[i].set == FLAGS_SET) {
+				printf("\t/* 0x%02x */ 0x%llx,\n", unusual_dev_entries[i].idx, unusual_dev_entries[i].flags);
+				count++;
+			}
+		}
+		printf("};\n\n");
+		printf("const unsigned long usb_%s_drv_info_u64_table_size = %i;\n\n", type, count);
+	}
+}
+
+static void print_usb_storage(void)
+{
+	printf("#include <linux/usb.h>\n\n");
+
+	/* conversion table from 32-bit device_flags to 64-bit flags */
+	print_usb_flags("stor");
+
+	/* usb_storage_usb_ids */
+	printf("const struct usb_device_id usb_storage_usb_ids[] = {\n");
+
+	/* usb-storage driver devices */
+	print_type(TYPE_DEVICE_STORAGE);
+
+	/* uas driver devices */
+	printf("#if IS_ENABLED(CONFIG_USB_UAS)\n");
+	print_type(TYPE_DEVICE_UAS);
+	printf("#endif\n");
+
+	/* transport subclasses */
+	print_type(TYPE_CLASS);
+
+	printf("\t{ } /* Terminating entry */\n};\n");
+	printf("MODULE_DEVICE_TABLE(usb, usb_storage_usb_ids);\n");
+}
+
+static void print_usb_uas(void)
+{
+	printf("#include <linux/usb.h>\n\n");
+
+	/* conversion table from 32-bit device_flags to 64-bit flags */
+	print_usb_flags("uas");
+
+	/* uas_usb_ids */
+	printf("const struct usb_device_id uas_usb_ids[] = {\n");
+
+	/* uas driver devices */
+	print_type(TYPE_DEVICE_UAS);
+
+	/* transport subclasses */
+	print_class(USB_SC_SCSI, USB_PR_BULK);
+	print_class(USB_SC_SCSI, USB_PR_UAS);
+
+	printf("\t{ } /* Terminating entry */\n};\n");
+	printf("MODULE_DEVICE_TABLE(usb, uas_usb_ids);\n");
+}
+
+int main(int argc, char *argv[])
+{
+	int i, j, idx = 0, idx_old, skip = 0;
+
+	if (argc != 2 || (strcmp(argv[1], "storage") && strcmp(argv[1], "uas"))) {
+		printf("Please specify output type: storage or uas.\n");
+		return 1;
+	}
+
+	for (i = 0; unusual_dev_entries[i].flags != FLAGS_END; i++) {
+		if (unusual_dev_entries[i].type == TYPE_CLASS)
+			continue;
+		skip = 0;
+		if (unusual_dev_entries[i].flags >= HI32) {
+			for (j = 0; j < i; j++) {
+				if (unusual_dev_entries[j].flags == unusual_dev_entries[i].flags &&
+				    unusual_dev_entries[j].set == FLAGS_SET) {
+					skip = 1;
+					idx_old = unusual_dev_entries[j].idx;
+					break;
+				}
+			}
+			if (skip) {
+				unusual_dev_entries[i].idx = idx_old;
+				unusual_dev_entries[i].set = FLAGS_DUPLICATE;
+			} else {
+				unusual_dev_entries[i].idx = idx;
+				unusual_dev_entries[i].set = FLAGS_SET;
+				idx++;
+			}
+		}
+	}
+
+	if (!strcmp(argv[1], "storage"))
+		print_usb_storage();
+	else if (!strcmp(argv[1], "uas"))
+		print_usb_uas();
+	else
+		return 1;
+
+	return 0;
+}
diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
index 4d3b49e5b87a..fe904d3072ec 100644
--- a/drivers/usb/storage/uas-detect.h
+++ b/drivers/usb/storage/uas-detect.h
@@ -54,12 +54,16 @@ static int uas_find_endpoints(struct usb_host_interface *alt,
 
 static int uas_use_uas_driver(struct usb_interface *intf,
 			      const struct usb_device_id *id,
+			      const u64 *drv_info_u64_table,
+			      unsigned long drv_info_u64_table_size,
 			      u64 *flags_ret)
 {
 	struct usb_host_endpoint *eps[4] = { };
 	struct usb_device *udev = interface_to_usbdev(intf);
 	struct usb_hcd *hcd = bus_to_hcd(udev->bus);
-	u64 flags = id->driver_info;
+	u64 flags = usb_stor_drv_info_to_flags(drv_info_u64_table,
+					       drv_info_u64_table_size,
+					       id->driver_info);
 	struct usb_host_interface *alt;
 	int r;
 
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 696bb0b23599..5b5dc8afda11 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -26,9 +26,13 @@
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_tcq.h>
 
+#include "usb-ids.h"
 #include "uas-detect.h"
 #include "scsiglue.h"
 
+/* The table of devices is pre-generated in usb-ids-uas.c */
+#include "usb-ids-uas.c"
+
 #define MAX_CMNDS 256
 
 struct uas_dev_info {
@@ -909,22 +913,6 @@ static const struct scsi_host_template uas_host_template = {
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
-
 static int uas_switch_interface(struct usb_device *udev,
 				struct usb_interface *intf)
 {
@@ -990,7 +978,8 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	struct usb_device *udev = interface_to_usbdev(intf);
 	u64 dev_flags;
 
-	if (!uas_use_uas_driver(intf, id, &dev_flags))
+	if (!uas_use_uas_driver(intf, id, usb_uas_drv_info_u64_table,
+				usb_uas_drv_info_u64_table_size, &dev_flags))
 		return -ENODEV;
 
 	if (uas_switch_interface(udev, intf))
diff --git a/drivers/usb/storage/usb-ids.h b/drivers/usb/storage/usb-ids.h
new file mode 100644
index 000000000000..d0359c572f33
--- /dev/null
+++ b/drivers/usb/storage/usb-ids.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+#ifndef _USB_STOR_IDS_H_
+#define _USB_STOR_IDS_H_
+
+#include <linux/types.h>
+#include <linux/bug.h>
+
+/* Conversion of 32-bit quirks flags for 32-bit platforms */
+extern const unsigned long usb_stor_drv_info_u64_table_size;
+extern const unsigned long usb_uas_drv_info_u64_table_size;
+extern const u64 usb_stor_drv_info_u64_table[];
+extern const u64 usb_uas_drv_info_u64_table[];
+
+static u64 usb_stor_drv_info_to_flags(const u64 *drv_info_u64_table,
+		unsigned long table_size, unsigned long idx)
+{
+#if IS_ENABLED(CONFIG_64BIT)
+	return idx;
+#else
+	u64 flags = 0;
+
+	if (idx < (1UL << 31))
+		return idx;
+
+	idx -= (1UL << 31);
+
+	if (idx < table_size)
+		flags = drv_info_u64_table[idx];
+	else
+		pr_warn_once("usb_stor_drv_info_u64_table not updated");
+
+	return flags;
+#endif
+}
+
+#endif
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d1ad6a2509ab..1e564ea52fc5 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -56,6 +56,7 @@
 #include "sierra_ms.h"
 #include "option_ms.h"
 
+#include "usb-ids.h"
 #if IS_ENABLED(CONFIG_USB_UAS)
 #include "uas-detect.h"
 #endif
@@ -574,7 +575,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
 
 /* Get the unusual_devs entries and the string descriptors */
 static int get_device_info(struct us_data *us, const struct usb_device_id *id,
-		const struct us_unusual_dev *unusual_dev)
+		const struct us_unusual_dev *unusual_dev, int fflags_use_index)
 {
 	struct usb_device *dev = us->pusb_dev;
 	struct usb_interface_descriptor *idesc =
@@ -589,7 +590,11 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
 	us->protocol = (unusual_dev->useTransport == USB_PR_DEVICE) ?
 			idesc->bInterfaceProtocol :
 			unusual_dev->useTransport;
-	us->fflags = id->driver_info;
+	if (fflags_use_index)
+		us->fflags = usb_stor_drv_info_to_flags(usb_stor_drv_info_u64_table,
+			usb_stor_drv_info_u64_table_size, id->driver_info);
+	else
+		us->fflags = id->driver_info;
 	usb_stor_adjust_quirks(us->pusb_dev, &us->fflags);
 
 	if (us->fflags & US_FL_IGNORE_DEVICE) {
@@ -921,11 +926,12 @@ static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
 }
 
 /* First part of general USB mass-storage probing */
-int usb_stor_probe1(struct us_data **pus,
+static int usb_stor_probe1_fflags(struct us_data **pus,
 		struct usb_interface *intf,
 		const struct usb_device_id *id,
 		const struct us_unusual_dev *unusual_dev,
-		const struct scsi_host_template *sht)
+		const struct scsi_host_template *sht,
+		int fflags_use_index)
 {
 	struct Scsi_Host *host;
 	struct us_data *us;
@@ -962,7 +968,7 @@ int usb_stor_probe1(struct us_data **pus,
 		goto BadDevice;
 
 	/* Get the unusual_devs entries and the descriptors */
-	result = get_device_info(us, id, unusual_dev);
+	result = get_device_info(us, id, unusual_dev, fflags_use_index);
 	if (result)
 		goto BadDevice;
 
@@ -981,6 +987,15 @@ int usb_stor_probe1(struct us_data **pus,
 	release_everything(us);
 	return result;
 }
+
+int usb_stor_probe1(struct us_data **pus,
+		struct usb_interface *intf,
+		const struct usb_device_id *id,
+		const struct us_unusual_dev *unusual_dev,
+		const struct scsi_host_template *sht)
+{
+	return usb_stor_probe1_fflags(pus, intf, id, unusual_dev, sht, 0);
+}
 EXPORT_SYMBOL_GPL(usb_stor_probe1);
 
 /* Second part of general USB mass-storage probing */
@@ -1090,7 +1105,8 @@ static int storage_probe(struct usb_interface *intf,
 
 	/* If uas is enabled and this device can do uas then ignore it. */
 #if IS_ENABLED(CONFIG_USB_UAS)
-	if (uas_use_uas_driver(intf, id, NULL))
+	if (uas_use_uas_driver(intf, id, usb_stor_drv_info_u64_table,
+			       usb_stor_drv_info_u64_table_size, NULL))
 		return -ENXIO;
 #endif
 
@@ -1119,8 +1135,8 @@ static int storage_probe(struct usb_interface *intf,
 			id->idVendor, id->idProduct);
 	}
 
-	result = usb_stor_probe1(&us, intf, id, unusual_dev,
-				 &usb_stor_host_template);
+	result = usb_stor_probe1_fflags(&us, intf, id, unusual_dev,
+				 &usb_stor_host_template, 1);
 	if (result)
 		return result;
 
diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
index a26029e43dfd..40ef861dbd08 100644
--- a/drivers/usb/storage/usual-tables.c
+++ b/drivers/usb/storage/usual-tables.c
@@ -13,28 +13,9 @@
 
 
 /*
- * The table of devices
+ * The table of devices is pre-generated in usb-ids.c
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
+#include "usb-ids.c"
 
 /*
  * The table of devices to ignore
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231026101615.395113-1-gmazyland%40gmail.com.
