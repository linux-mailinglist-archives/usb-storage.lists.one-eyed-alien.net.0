Return-Path: <usb-storage+bncBC4LXIPCY4NRBVV4YDEAMGQE36UOQMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B2BC4389F
	for <lists+usb-storage@lfdr.de>; Sun, 09 Nov 2025 05:53:44 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-294df925293sf23667725ad.2
        for <lists+usb-storage@lfdr.de>; Sat, 08 Nov 2025 20:53:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762664023; cv=pass;
        d=google.com; s=arc-20240605;
        b=BHJ3Cl2MPBmkWpnUwBfUyM4Tsz3q75fu61zd6S5jQgHJG2zOjG43gcsUHnTrDHriHp
         UlI2c0gpWNHEJ5LIDEImTKFtKAH0DvuRbx3bVVI3YzpiBEK+4VtxzOrtmc9muqa8mmxo
         coexqMksV2C8FfNm7EDf2GwykhFeEB6U4BjTPTfxLYjH3dhwB5W9fHjJNmODT6e2aZIG
         LRyfdq57V5G8TE1+HJpwVBg+hYt8XAkfq1Gqe8iFhbTyICU+oPr88CbXqZOq4Nuir7Mp
         42EEzST5fQomQF1KzIe537oX15i+SaF7Gg00TBjtCP4P45G/sPWfbMGPDYvkCtORs6HU
         lO+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2ZoGYWOm3BvKaj/+ZWuC1Z82EZMvGdSeeiU89Oq29Ok=;
        fh=/NO0edNRSgAtFFLy6nbISlFmJ/DVJQUvmYeAfLjTR9c=;
        b=BrLNyvWEJ/aYNnD+4f/lW31Rrs/qcUUIdeVvBdSBmqNjrk2oFkKA9GTzKMWEiyiJ4v
         tuYWERXzkATpLemXRzk3R4ByFT11EyHmJ6s/5YGSABVKaEZHoZeAKBV7xv0veO2MccFH
         Cx7lc8JMGcbPQpGGMb9IDWBYvag8GTJmd2/cgQQZpkdjPlMryRlLQkaWBgEGHmkERS3g
         MPsKOc7RZGX+WNeqjiFiqdg32hCNBVDhLW5/mNF3iUmu0h5S3b00ECRbUZHJxv2JJS9N
         gfpDnqFqlVO3JrZJjWOTrG924Dhj5o39SPo+4Hp0uX9FRXUomxQtwWMbzxuCtedDWjOC
         qZeQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=T37iSCDK;
       spf=pass (google.com: domain of lkp@intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762664023; x=1763268823; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ZoGYWOm3BvKaj/+ZWuC1Z82EZMvGdSeeiU89Oq29Ok=;
        b=L7B2+4CEZ+qkzekh0dP5wiMtAAygogA/KzAO8NrHmnZ+RbP6dFurOJAAgEm5SWltiQ
         bvL2Qp0hNH3wN1ePfdaN1j1hqnpNsXCQJvsAn6lO3aYUazSS6/is3ppA+coe2NlRYKjk
         RCSNz7DUaM/bpKZeatDNCKGuUU/Ty5eyQOMNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762664023; x=1763268823;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ZoGYWOm3BvKaj/+ZWuC1Z82EZMvGdSeeiU89Oq29Ok=;
        b=OaMwAtcGPrZ3Wuvya9B5JrxyzMX30ie5i1n+xw0/EdBArrXI8GKRv6EnAFgvJa2Ink
         DdTKax9X9SjcgVY1w9gi6+/mDkfvYCABIyiVlUcCHHS+EPJmJ9vZq8y9jgB/ZDLkg1Km
         IQuyRs7toGQ3Br2IpO2iyZCXFF/Cf/oC1Jing1IliA5S8HAlcYHHwHR7Lr8QuXW+NRLo
         jPgC9sAfec97T1yFPt+cn5U1btxoInJqYBcxOdXNGb8VbixFmGxNrIt0PLlMlo3L5p3Q
         qSMdwq4v3PEtoL0CcSmHUE7Xs0aN++pkcj2E9qpnDHyFez36x/9K6vrbsoCsExx59Sr5
         eU/Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWQ4Im9vQt5+xWLpXwI1x9pdhxykKYq5iWmXVKlRQsbM1W65oudGz3zDA0nG1KM8AOndMsUwA==@lfdr.de
X-Gm-Message-State: AOJu0YxJXxbd8t1kKIt+aLyVxyexnuks5XTzhLlihq2d18P9CYfzwzz4
	7g4SCyzqWOENsqh7NsIlD1StGUiGdigBuRVdKdtUO/uQuwR598HqE4uJds6GG+JiPQk=
X-Google-Smtp-Source: AGHT+IG2ZntTKfshQ9dVwTe8+Nvnj3yZ+zQhdjGD0gaXfzaq33mYtHCe3QhrLkMx3zbaDCobv+JjnQ==
X-Received: by 2002:a17:902:fc46:b0:269:4759:904b with SMTP id d9443c01a7336-297e570bf23mr51988525ad.58.1762664023132;
        Sat, 08 Nov 2025 20:53:43 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bsJI/Y+FpB3+dHvzpZo6VwPANrDa6GtMeGv1wLicI0Fw=="
Received: by 2002:a17:90b:274d:b0:33b:529a:13ed with SMTP id
 98e67ed59e1d1-341cd1b9389ls3308674a91.0.-pod-prod-05-us; Sat, 08 Nov 2025
 20:53:41 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUGzqEacR/dRD7wMbpebhYSTXZ3XFlMAMf4eYr8Yesc0v7mxjpFs01GaoD/NOHM5KpNryoPnWnCwy8IGw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:3ca5:b0:351:d6ff:dd0a with SMTP id adf61e73a8af0-353a3e69e57mr5564948637.49.1762664021343;
        Sat, 08 Nov 2025 20:53:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762664021; cv=none;
        d=google.com; s=arc-20240605;
        b=FcQEBk5CWw8Y9i4bG6zZimZoM7gcuj2qRT8dyYb9aNQelFwPIRvteJ8fC3KeBF+ZPn
         K+0yvMO0fkIyiNELDcAflX0t680l42deZE0HqjSrLRMGdYqwFCX8n9k4Njo/AWtwux5x
         j+/fpM8vcQA0p81hjDChDiB778zkCae7GOIOn/BayMVEUbelrZI5qWIkbjmDPEw/SekA
         P8GkEnVYmqZHph06eFduL+36GMzKZOeRwRjIZAofdfYjKIynF7YzqJFIYlszxiDIQJGx
         3fo8PsT8pNZtoFLwbsgHq4cS5VZcsaBsavME1F04CDiDUJqbj6hsTv0sfP/gm4sdpd+J
         TJvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FslYhnTepWULyevPdMS6JbmWeiIAi0U9cm4ndY59QQI=;
        fh=lTgjTFSVgFDmf8r2xTtRPhUPzie8fSTjG6Q57y9dhSM=;
        b=boz//IdWVdnjodUOKSCiVluZ2NPdnhMYYgGNaZ35tvDh6OFkb6VdOm07uEan4McvsY
         gkL5INuWprI/lom19FmOUuIHPrr97/TYmJNBqqYRRcskuNt06AAGmRE6zzeo+EJqyE/Z
         YE9joTwZgclif31Jb1BTvfNyp1rsGZxFFIof6j0XCe/ObsxI2AahZhIWTr0TqGKkNz8u
         zAOKfOYjuMbntQgBfvqYWGAaAaNSlmSg/QkAZ35o+DirZ9nyJS/hzgYFBk3IyBixfbK8
         avjXl4vlrYMZ6pJD2QUlVdA+9eKv0XL4BmQHAFCMEjVXj+yU5T0w13ZWvGIjHunicFub
         QHaQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=T37iSCDK;
       spf=pass (google.com: domain of lkp@intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mgamail.intel.com (mgamail.intel.com. [192.198.163.14])
        by mx.google.com with ESMTPS id 41be03b00d2f7-ba8f5a725c8si2543624a12.264.2025.11.08.20.53.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 08 Nov 2025 20:53:41 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.198.163.14 as permitted sender) client-ip=192.198.163.14;
X-CSE-ConnectionGUID: HQLU3LVvREeKxm2Av+2fJw==
X-CSE-MsgGUID: K+xYWCnvQES/qJrcevuIJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11607"; a="64792742"
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; 
   d="scan'208";a="64792742"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2025 20:53:41 -0800
X-CSE-ConnectionGUID: h5x42WdvTqu1BX/UaJUSBw==
X-CSE-MsgGUID: Tj0BVNGOSm68/3cRdyBYDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,291,1754982000"; 
   d="scan'208";a="188227193"
Received: from lkp-server01.sh.intel.com (HELO 6ef82f2de774) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 08 Nov 2025 20:53:38 -0800
Received: from kbuild by 6ef82f2de774 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vHxQm-0001mV-1n;
	Sun, 09 Nov 2025 04:53:36 +0000
Date: Sun, 9 Nov 2025 12:53:32 +0800
From: kernel test robot <lkp@intel.com>
To: ccc194101@163.com, stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org
Cc: oe-kbuild-all@lists.linux.dev, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Chen Changcheng <chenchangcheng@kylinos.cn>
Subject: [usb-storage] Re: [PATCH] usb: usb-storage: No additional quirks need
 to be added to the ECD819-SU3 optical drive.
Message-ID: <202511091243.dnLsy9w5-lkp@intel.com>
References: <20251107061046.32339-1-ccc194101@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251107061046.32339-1-ccc194101@163.com>
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=T37iSCDK;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.198.163.14 as permitted
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on 284922f4c563aa3a8558a00f2a05722133237fe8]

url:    https://github.com/intel-lab-lkp/linux/commits/ccc194101-163-com/usb-usb-storage-No-additional-quirks-need-to-be-added-to-the-ECD819-SU3-optical-drive/20251107-141330
base:   284922f4c563aa3a8558a00f2a05722133237fe8
patch link:    https://lore.kernel.org/r/20251107061046.32339-1-ccc194101%40163.com
patch subject: [PATCH] usb: usb-storage: No additional quirks need to be added to the ECD819-SU3 optical drive.
config: nios2-randconfig-001-20251109 (https://download.01.org/0day-ci/archive/20251109/202511091243.dnLsy9w5-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251109/202511091243.dnLsy9w5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511091243.dnLsy9w5-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/usb/storage/uas.c:928:24: warning: initialization of 'long unsigned int' from 'void *' makes integer from pointer without a cast [-Wint-conversion]
     928 |         .driver_info = (flags) }
         |                        ^
   drivers/usb/storage/unusual_uas.h:100:1: note: in expansion of macro 'UNUSUAL_DEV'
     100 | UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
         | ^~~~~~~~~~~
   drivers/usb/storage/uas.c:928:24: note: (near initialization for 'uas_usb_ids[9].driver_info')
     928 |         .driver_info = (flags) }
         |                        ^
   drivers/usb/storage/unusual_uas.h:100:1: note: in expansion of macro 'UNUSUAL_DEV'
     100 | UNUSUAL_DEV(0x13fd, 0x3940, 0x0310, 0x0310,
         | ^~~~~~~~~~~

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LEDS_EXPRESSWIRE
   Depends on [n]: GPIOLIB [=n] || NEW_LEDS [=y] && GPIOLIB [=n]
   Selected by [m]:
   - BACKLIGHT_KTD2801 [=m] && HAS_IOMEM [=y] && BACKLIGHT_CLASS_DEVICE [=y]


vim +928 drivers/usb/storage/uas.c

115bb1ffa54c39 Matthew Wilcox 2010-10-07  923  
79b4c06112f12c Hans de Goede  2013-10-25  924  #define UNUSUAL_DEV(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax, \
79b4c06112f12c Hans de Goede  2013-10-25  925  		    vendorName, productName, useProtocol, useTransport, \
79b4c06112f12c Hans de Goede  2013-10-25  926  		    initFunction, flags) \
79b4c06112f12c Hans de Goede  2013-10-25  927  { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
79b4c06112f12c Hans de Goede  2013-10-25 @928  	.driver_info = (flags) }
79b4c06112f12c Hans de Goede  2013-10-25  929  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202511091243.dnLsy9w5-lkp%40intel.com.
