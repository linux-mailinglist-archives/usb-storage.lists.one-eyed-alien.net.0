Return-Path: <usb-storage+bncBCENHXXO3EBRBV7T67CAMGQE7PWZU4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8FEB26A40
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 16:59:38 +0200 (CEST)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-76e2e614c60sf946603b3a.0
        for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 07:59:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755183576; cv=pass;
        d=google.com; s=arc-20240605;
        b=eC8mgkLs65+zbxHBHzcf4laIr0VC/PBNuDID0k/qsZSB3b9g+cUQ0XxYPnBkqA/TdE
         jLqpvmfUmSK7Gy+FScServujB0QMP94NiQN3OJrTDZJPFsJzmkSi1JDpP+6eBSdyG6N5
         GnUM8IdJByLEiuQxxCUrBk1sv8Py3V33lxbb2YeO2bd8FAQhTg3S5vduo0Ep8kice1KJ
         2GYqG/wYJG9bcZtS6+Zlv1tAhOowPodSwcDu4qodOxwmZkofXJkiqP9Nc0iNCX2dB3yX
         nohPXNWuiHsGVuN89Pzrbf++MR+PEFQOfsoXKPBmXr2vXOLN4AXccU9lRUiY5kl1Nl6K
         CZ9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tThctxCTQWPZ4CCz4LCE7ZaFV4KLCLdKh1MumV8JPWc=;
        fh=d6EdhQ68WjXT7fZOT4YrtDyZdaxA5m7CynyGlP1nccM=;
        b=IBmWOS7UDuQhDPFEvGUULFUyrOXlO/8+7FyVb1h+/Rtk2O0sT/AAwIemcZFq1TDnKs
         g//sxNRuRlozM151yCOjAh8eV7TxMbMi+gywS80Bluw7zD7zci+oQjART0Nmki02YrZd
         3XNmanuub+xI0ivQMhEpoNa28k00x4+9h0Q2no1EFvQVp4gCFZNTc73yhJSclE5QhUL6
         L699BnTB/kgyitIWU/llcbarvCKoPVxDPn73xdF4xPJawmux5qgxdbE59K+lYprerTHa
         sd8wVgLnU0BXViMcAWZ4VmY+Ee09raWlGBShfsKEH2DVGpqaFX5EgkHe0SHPDbaT4Y6U
         t6qQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VjlFq99F;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755183576; x=1755788376; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tThctxCTQWPZ4CCz4LCE7ZaFV4KLCLdKh1MumV8JPWc=;
        b=KSQ0RLl145XJj4z1H8ZweT/CwDpO2lFrkEwm84KeXeJUuDZ4rhiTSFqGBrNTB+AgIa
         pd+xFWKrk5p7mUPVAymA0livc9Q6r1JwTA/g9tFWoNncyQB1wRvDT8cvZMjChDnOaeog
         q1tx+tlSuYIr4rrsUHMmf3rSI9XVGwYIPZ9dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755183576; x=1755788376;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tThctxCTQWPZ4CCz4LCE7ZaFV4KLCLdKh1MumV8JPWc=;
        b=F1pNaSB2XuAqsWjPjytQFS80F1pTmxt+RoV4Hx92GkeL8efMUlMz6LfteL5Y4POExf
         e5xGWlFEoBf340b8HrLrKD6P5ifBLfHHUXJMsJmQR8dEup8VzvDKD/NICE2MZuiFhXL/
         NpbHMut9sXBrnrUFoUwu6Nhj17dml+qxFEmnZ5JKSq6TforI+q8b9K0br1rI+7m7G9go
         BqPaJeltwqmOA1CQzWwIMCXW7l6A6tmQdcmFS6aS3TMghM3NMHb5kxNIvzU7YzdYOBQt
         V/h53be65SogECITDYvTmcEc5Q8MnWLFPziR0hzfK7o28RYVG8sOxLFKvzdsrQiz/SdJ
         A2VQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXPbhiOXX5qGoPrqdwd/Qh8e2aV8+CXlYq0KihGtavcA3hPdChQ/Qgh7eaaIz+HbJjc+47eLw==@lfdr.de
X-Gm-Message-State: AOJu0Yz7LPVXL90FKqBOSPUzoQofuA0tbsR9UxEbltwWXabu9JmsOmo7
	U82gpeQ21zLK38N1GT9Ta8yvWiFD400wHek35q8895SzT4eADsQUAqb0n4c470z2rog=
X-Google-Smtp-Source: AGHT+IHtgvdyptPH/wy4INB+jPmRYNkdImbXVM2JZOv+mHI3gQPI3RIeCQvmniwvdu48a56CrmqXVA==
X-Received: by 2002:a05:6a00:21d6:b0:74c:3547:7f0c with SMTP id d2e1a72fcca58-76e2fbe8d97mr5804408b3a.3.1755183576382;
        Thu, 14 Aug 2025 07:59:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfM/P8KnXre0IbSoupyq7LjT5CApFC7Hi9La1TtU+nr6g==
Received: by 2002:a05:6a00:1490:b0:725:e3f6:b149 with SMTP id
 d2e1a72fcca58-76e2e5278f8ls1067743b3a.1.-pod-prod-02-us; Thu, 14 Aug 2025
 07:59:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUf9Q9G9Am4fRnzC9beYXOTOH3iqeFtKEg883xESPO3352GzSuq3MTWkGhZnvQBej8WByC/aFQf4rW/VA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:b80c:b0:748:31ed:ba8a with SMTP id d2e1a72fcca58-76e2fcf7ca5mr4933345b3a.15.1755183574759;
        Thu, 14 Aug 2025 07:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755183574; cv=none;
        d=google.com; s=arc-20240605;
        b=ji0E9OY1x3+6KupWH/XjvAtMjh7kVjNJcVb/Yk4FlYOzrO8vCTR/3UcfYORKKf9hmQ
         L6ywtKWk2EaNIQSU03subZLixV6K4HM1OWDs14JhDHUDAs3acx2pCV+PFJSg9hksxQIT
         byMvCWQ+/yLmMDTOlV2gu8jMp19uFus2qqo/KLyG99I6CiUiv0abaLTWNJb3LSEfOuzn
         617p/sHXgUIVQMX66QieLvPZz2XTiwRbuMhEWYM/b0vl449xFUz5kJSah9PoAWM0WFwi
         gNgkhh7NSI2xtkmtYe/+BXnb8aKHoh9Aee/2YVywaVzLU3KaXOwWxXUXF6cbAP8Pavmm
         PHZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WQt5BqMjb9nx7BmE6KGMd9a47fQxp1m276b+AFq/m20=;
        fh=3lF800laBH7gxy4X0fZNb1XTZ4xdLfXBH/AtzsqY90M=;
        b=EPx8wdz2K923jmrMI0fc+hQWcEsyDxnW0d/0+KWNc93Q3U4kP/DiGnFvC2uFp0pOgw
         DEuKFBHj99KlAqPoMuRzm91y/JpnCFtr8czJ02kLn0ThtNqatAz2+4NIMI7wb/qOUapa
         HQAi/JzhwDzu0dVJpSTrUUdR2M9KtStGSpqVEpS9cJLOd7LckBDGFa/tsrWRysq1bTKR
         A+vTWu8Ak0PcUEulOHGtHHuZtXe/4/+HbDKnILTdX+8KU0L72m2vDPkqDCCUpdV5JLG8
         XYd6ar7GY3tG9GpE0UFheNSXLhTzr0yi7s5b902kxqrXYmh5eQFRVzqFAVnKUb3jrnh5
         /BgQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VjlFq99F;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-76c699ae2a0sor6377421b3a.5.2025.08.14.07.59.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 14 Aug 2025 07:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCU3paj73MB9sau/LFEyQf+2rU19cg7VNmi2nyxPX1vI4kZvy+Z7AVqm+wUuzQdlV9TJpOSSX77uhaOv/g==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncshz5XVDtII3uz40rBJvUyFs73bYrljBbFsSqyOi+PTzik6h5AaGQ4rLcUzU1j
	gufEVlhzKmcnswf4I77wCbstSgBo106Vi3qDWJO11FW1pIT7PLSuH5z1hdhjDUKBdmdDJqYJNCt
	CpI2T5imYqAACYWamPowACkb/hTE5DAB1CrkIIm5xG1Iiz8Sl6+Q67mADplE0aMiAkN7HnrsS8b
	s1LVzcS8uuNcH2KD734AY658I3Wr+2qE8T9rnT6idVoGOae3gjCk6jzxo+zDpvz78fJC4+caoik
	XTq17Fqc9KO+ERmATJ77CIsGhdVm7Y/gGLvhkJ6wACK9sGYgiHTxBIKjvAEsBKZ+PAUArcQ2k5u
	A7emwA2sSW+JmzuVEKo6jznn4nHwvWI2LZSbqBWPy2mcWZxBvFwEB
X-Received: by 2002:a05:6a00:2d8f:b0:75f:8239:5c2b with SMTP id d2e1a72fcca58-76e2fdb134dmr4953990b3a.23.1755183574170;
        Thu, 14 Aug 2025 07:59:34 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-76bcce8e854sm34960878b3a.46.2025.08.14.07.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 07:59:33 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: larsm17@gmail.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	stable@vger.kernel.org,
	stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Date: Thu, 14 Aug 2025 22:59:26 +0800
Message-ID: <20250814145926.3067-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <8e9066d4-1b04-4423-869d-2bac0a3385a2@gmail.com>
References: <8e9066d4-1b04-4423-869d-2bac0a3385a2@gmail.com>
MIME-Version: 1.0
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=VjlFq99F;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

> Hi Lars,
> 
> If I apply this patch to my kernel, usb_modeswitch can switch both to
> Wi-Fi mode smoothly and fastly, but I don't know why. @@

I forgot to say that I've added one more entry into /lib/udev/rules.d/40-usb_modeswitch.rules
to let usb_modeswitch support the ID 0bda:a192.

$ grep -E "1a2b|a192" -i /lib/udev/rules.d/40-usb_modeswitch.rules 
ATTR{idVendor}=="0bda", ATTR{idProduct}=="1a2b", RUN+="usb_modeswitch '/%k'"
ATTR{idVendor}=="0bda", ATTR{idProduct}=="a192", RUN+="usb_modeswitch '/%k'"

A config file in /usr/share/usb_modeswitch for the ID 0bda:a192 was also created.

$ cat /usr/share/usb_modeswitch/0bda\:a192
# RTL8192FU
TargetVendor=0x0bda
TargetProduct=0xf192
StandardEject=1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250814145926.3067-1-zenmchen%40gmail.com.
