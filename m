Return-Path: <usb-storage+bncBC4LXIPCY4NRBJ6CYDEAMGQEMHOIPXI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1046.google.com (mail-pj1-x1046.google.com [IPv6:2607:f8b0:4864:20::1046])
	by mail.lfdr.de (Postfix) with ESMTPS id A908DC438AF
	for <lists+usb-storage@lfdr.de>; Sun, 09 Nov 2025 06:05:48 +0100 (CET)
Received: by mail-pj1-x1046.google.com with SMTP id 98e67ed59e1d1-3418ad76023sf5045983a91.0
        for <lists+usb-storage@lfdr.de>; Sat, 08 Nov 2025 21:05:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762664744; cv=pass;
        d=google.com; s=arc-20240605;
        b=klrAXYXlX2B3Cnsfu/73Y2ql+J/zBw3KYsD5MfMLnk37FSPuRY5h+JAnihIObtcZHt
         4cHMXmO9BcURjN10bcwdg/hIFsi2T/BdC9zXfzq+00kDTRerVFtCEZSEcRaDqGC7i5+F
         nc2qb8ZqGWBGrx0psqtR2qOns4CQTYzujyRuab1ATTykfqgDG6pdw+4g6LDkx9hoxhw+
         L2GJTC/i8+ssQvxSJLjckHYLnRuul/huBYHV0B2y1kpmSY8x+5p+PWxS6VQ+zXRSdRW2
         Nd4QNFvrCED8eEel7wYQEdFAFPD41bCFmXR+5B32oXnm7zh/RKoksqoDDpPr/70kkzeB
         NzJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dd1Y2XanEyLocKu6P3YWxIukcWu0pIvWOeKFyyXOALQ=;
        fh=rrLODbvabqxNVaGPEr7dEe3wYkDFddVaXM36mKCgn9o=;
        b=LY7m3eBmGYeHcqz057SdzsAkM+JsW6AYEaV7INFR6nPKuI5MwIoxNWAyBQoJ/6x4Zq
         TOjtA9MKylt08zl8cocdBsDJ7tkIxCTQyJoCjhsWQPFitsI++xKnzu5JuJ+vzFuERCHF
         drfFeT5arN5t8ribzoU8/xXhT6LF0IOVAnvf7TK1Aytm7gMhehQ0g57RaA1mhwD202gF
         HfAhLut11xqJp48ox/89tHnF7sY1NYyh55cULqA4CbeIVZxiNjK6vfgNUHzDSra6j40w
         v0tKmOQso26b3shs+F0fEa+WjccvLr3Azf7FfJj9hMIzJFMwnKQ1XAMw92xocVqZInTr
         HSFQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=Xrm449qO;
       spf=pass (google.com: domain of lkp@intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762664744; x=1763269544; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dd1Y2XanEyLocKu6P3YWxIukcWu0pIvWOeKFyyXOALQ=;
        b=HRHs6baMfrwU2u9dPQfTbQdnC5OfdIntKucue3x217pkuWSdNgUP7mSSBZ9cwGvDNf
         olqYrPlIgdbpjb+8Elg5YRlbblQpZd7G6OywWdtGNoqrJNXyrdqd2JNNkmfhaKs4WqiO
         k5aDZhOB91FV9VEEUHFzkV14yjyQY1AHLEKEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762664744; x=1763269544;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dd1Y2XanEyLocKu6P3YWxIukcWu0pIvWOeKFyyXOALQ=;
        b=PMjloeaTaX3Q4KhYf80B3wI8xBOno2GUU7Fc5WO1MFwkjUSVVgtZDeLzY872IoAOxT
         wiRX8FHsb11NlpsTpjeraF7QVmetd5PAOmpqY4Ka2EUxsV18tAKYFdsoC3JUEUQOCccM
         NIggZjihbsmiAcYYXgVO52FlqqDUVBiObqG8V/bpRiDcPjS0VZKUcYJuTRtGAsHtTrB6
         9qGFQ3qHsC2RQ+FsVxVNsYlvQ74d7lnJSpOu8U0adiw6H3t2IlMSlwBjX/5IaP6d0CVU
         aSpnIIOF5Bg5a9rs3yTCk6z3noPCSwm5f9VVM3ZCCPWo3GhQU6e4OCTGRwWYQikZvNAP
         AGVg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV2YBlhOT24nOLvAOEqOs2C3T/kMYqeEEG+am5WHhuIWyD4Iz6d6N99QZs3tCVZuJAMu/X3cw==@lfdr.de
X-Gm-Message-State: AOJu0YwWhkDTPxz/IxMAZFXMW2MN+iykfkfvfTfYffol6CXlgVLKi4sU
	HdSylecB4edxNKPMfU+ER/hdETZ3M5TY8thCXXZZrxWhIhewFr2Z7JkN+fZazx4TTjY=
X-Google-Smtp-Source: AGHT+IHN6WLqO9jLYs/tjEvziOUXQRVL6031B/hp8DtJ0x864khS6Hj7SVwpYsIaUD5CzPFWatk/9Q==
X-Received: by 2002:a17:90b:2e85:b0:340:c261:f9db with SMTP id 98e67ed59e1d1-3436cb946c8mr5420547a91.10.1762664744221;
        Sat, 08 Nov 2025 21:05:44 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+asTqWa9mrfWBK9CLE0Y/gjAR/q0SxvMpGN8SUtVas0Pw=="
Received: by 2002:a17:90b:42:b0:343:6a95:b0d2 with SMTP id 98e67ed59e1d1-3436a95b505ls1458999a91.1.-pod-prod-03-us;
 Sat, 08 Nov 2025 21:05:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVEhuOKk5eo+m/apCYh77JJgAxu4uI+5rF/JyZ4U3vtGHBUQ+BLLbZ0/e3jjYlW4HuUl2AbvD+2YJp2pA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:7283:b0:350:fa56:3f47 with SMTP id adf61e73a8af0-353a2f358f0mr5829550637.37.1762664742817;
        Sat, 08 Nov 2025 21:05:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762664742; cv=none;
        d=google.com; s=arc-20240605;
        b=F6cMixDInyZrWSup6cWkO+P0FtAtQ++aL7zLq4rdR7OAIWkIEzngL7mpL1fxeFw3fe
         dwFDUhzoQFjd0JvpDwN4/COtV3msE0gk9dUgzuScqQzd4rfv0XA3BwsnNPFY/x6S30iC
         DfZc9etJe4hkA8CDR9iQGuNiaA4AirLfbtlUQ8Bp2ni5fR/yJk9juDrT18u71ft1zdJM
         +MqFiib8FupN74vwt0cFl1FWDyfEkjjnGtTm1x62AaEGgdAF0ttqVTP1x1qhic0I09fB
         QAs4tafIUalvHOoWpEVJ+uwczW8TqeP4BkCeQc1XO5GMQLn2PFsehHqR1kLD+ibSP5ix
         CqOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h0MgXN5FRuCYzRD9PgUgKKfX+xz3j5lRGkFq5of0MwU=;
        fh=QIHRcab1SMF5YuVaTNhk2MA7UMSymMgLtTbs8Rcklnw=;
        b=D9JXb/An0iWh/0qbUEUbIOkogMBCESofV7L7aqECGUUlNaViaGsUC98vrLgnAAq3KH
         zlgL+ZVRbj279VAvOfLKuyttAAn458wME7Jm6DDq2be76bU2ow3rRGkpqRl0CjrlX2i/
         iMUhHftT3p72Ivcu26yTEMyR3B+0viaoINjIMXYEHIVE2xtn1lnZBTis6vPWkBlOFe61
         uaEEMP7ZP1GN8FSjzRHumVqBqVvQ6PxIikDLiHnp1VpAaY4762D/LQIMDcBeUWOY9j3d
         GvqCXStSHd5cginpmY+XscltNW+PjRVIO4e6y+iGkAcJn3Ky7pRNolEOrqWRH3xygckn
         aqRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=Xrm449qO;
       spf=pass (google.com: domain of lkp@intel.com designates 198.175.65.19 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mgamail.intel.com (mgamail.intel.com. [198.175.65.19])
        by mx.google.com with ESMTPS id 41be03b00d2f7-ba8f5889329si5577967a12.284.2025.11.08.21.05.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 08 Nov 2025 21:05:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 198.175.65.19 as permitted sender) client-ip=198.175.65.19;
X-CSE-ConnectionGUID: XxzbJ2n0Q/KVWa574X/lRQ==
X-CSE-MsgGUID: 0mzi2tDqRqiYgHZVzJsvhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="64638518"
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; 
   d="scan'208";a="64638518"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2025 21:05:42 -0800
X-CSE-ConnectionGUID: tfmRiFbtTsmEFp5uVbgV2Q==
X-CSE-MsgGUID: 5e89+h57RXiGDU9wxyxXYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; 
   d="scan'208";a="193572600"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 08 Nov 2025 21:05:40 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vHxcP-0001mp-1I;
	Sun, 09 Nov 2025 05:05:37 +0000
Date: Sun, 9 Nov 2025 13:05:25 +0800
From: kernel test robot <lkp@intel.com>
To: ccc194101@163.com, stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] Re: [PATCH] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
Message-ID: <202511091255.ohMJwQcj-lkp@intel.com>
References: <20251107061046.32339-1-ccc194101@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251107061046.32339-1-ccc194101@163.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=Xrm449qO;       spf=pass
 (google.com: domain of lkp@intel.com designates 198.175.65.19 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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

Hi,

kernel test robot noticed the following build errors:

[auto build test ERROR on 284922f4c563aa3a8558a00f2a05722133237fe8]

url:    https://github.com/intel-lab-lkp/linux/commits/ccc194101-163-com/usb-usb-storage-No-additional-quirks-need-to-be-added-to-the-ECD819-SU3-optical-drive/20251107-141330
base:   284922f4c563aa3a8558a00f2a05722133237fe8
patch link:    https://lore.kernel.org/r/20251107061046.32339-1-ccc194101%40163.com
patch subject: [PATCH] usb: usb-storage: No additional quirks need to be added to the ECD819-SU3 optical drive.
config: loongarch-randconfig-001-20251109 (https://download.01.org/0day-ci/archive/20251109/202511091255.ohMJwQcj-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project b9ea93cd5c37fb6d606502fd01208dd48330549d)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251109/202511091255.ohMJwQcj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511091255.ohMJwQcj-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/usb/storage/uas.c:931:
>> drivers/usb/storage/unusual_uas.h:100:1: error: incompatible pointer to integer conversion initializing 'kernel_ulong_t' (aka 'unsigned long') with an expression of type 'void *' [-Wint-conversion]
     100 | UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     101 |                 "Initio Corporation",
         |                 ~~~~~~~~~~~~~~~~~~~~~
     102 |                 "external DVD burner ECD819-SU3",
         |                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     103 |                 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
         |                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     104 |                 NULL),
         |                 ~~~~~
   drivers/usb/storage/uas.c:928:17: note: expanded from macro 'UNUSUAL_DEV'
     928 |         .driver_info = (flags) }
         |                        ^~~~~~~
   1 error generated.


vim +100 drivers/usb/storage/unusual_uas.h

 > 100	UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
   101			"Initio Corporation",
   102			"external DVD burner ECD819-SU3",
   103			USB_SC_DEVICE, USB_PR_DEVICE, NULL,
   104			NULL),
   105	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202511091255.ohMJwQcj-lkp%40intel.com.
