Return-Path: <usb-storage+bncBCUJ7YGL3QFBBVNNZPVAKGQEVPOW6WY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id A90AF8BD06
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:27:18 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id l11sf45231827pgc.14
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:27:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565710037; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxGJKG928wMq1BpmD6NmNMiAo5EzkN3FdvKbkcmedTKYVo+MUkNcVVdwvbbjzNBhkM
         MmW52igl0dnfH+lWdbzWvo3198iP8XIEHOS5iB0uME3T7dqTBJMNjbDux+pdB7Rnib6q
         6vbKDSusCpUU4DHO81bxMtQ+LLFxnRAryHXfz+iCHSXlbhg3I+wmON5Fsu8TmReaErtN
         d2g4FyntNdgxLsYtQgMWgZQd+sZTStbvd8PYfKMzNKpdQMYRfKcNj88xNllXYHBfa+DS
         DQMmM/WXUqhau4Z4bbDdog4TFOMSi8e/VTwQfBk9iBo8xytEOFjMha3eg+g79DFz5C/8
         fUgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DOiV5UIiJ2ax82UAvRm1EXBnH4FDYhlZjeyZ5u3mckk=;
        b=FFsKi7M4VIBC0P6u8hwxVF+UYe8Wt8Mr2ybE7inSEFPKiNjBbj195xHrYY4VEJFbsM
         G8iykUXz5/NHPSVV75tI0zu6jbmPch3f0RnKijpW6N/dJqxG6bqCThFr7Ht1fqOrlUx0
         rHAYpkif/J3rLVhj70tj98hwpe/nhX9QiBgO89KUvHmBZZZEaGEC/gkxeqqOcRfHP5LO
         19uoR12LtZy6LO+Uq3wEv7ClA9UwXfFt1Bt/beErKMBdDndPtWmp8hsp8NuEhlwBsE+M
         TwRyOB9bBZ6Qwc32B4dXpAUHDmccolZV5qayk7l+0zrYONcRLQ9sFXkJurI67TQM3vbh
         0E/Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C9wRRvwg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DOiV5UIiJ2ax82UAvRm1EXBnH4FDYhlZjeyZ5u3mckk=;
        b=JMXsRe4cDumlot9v+3L0NKifYn4p1vXywrBpVgndRdTmLpODk4oqFOCD5yGS7mQUxU
         2hcNsuyOBgBESFyVULLsjDFsK34YK6qmieJ1Ja+Khkj5qDc3L06N8rQP+SpYwDMrjUQl
         u32odKa5nTtL13lZ86M+NNOki3Q0b1/6mzmIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DOiV5UIiJ2ax82UAvRm1EXBnH4FDYhlZjeyZ5u3mckk=;
        b=FGo0pCdTEMNOb1aB/o04h+yMVYYwQtYPgUujYbBB3I+zzhZkTdMC331Faes/1CxayC
         SplmiH3yhphZme5v96S2dQAK3GlX0CRO/DJt1TLmIC/uwJE3vt3LjKzlbUpW2R/AjkeA
         kWQcYdh/unkEvspTe7Cb+ss1DcQ85sqTv5qMHfZtj8i0d1gthoKCxnI7qbLSFUGzk9IH
         i51rMY5XJkxo4wn5KtJBySeWHRgTkjThBQfjCg6cAqEk7dgHPviMDu43hf2sIpH6XP3R
         +e+nfIZJVUCbSMdOnKigZcKTiVTKdFMCWeHJGTmmMK8Z1poUpljKddCUO+DgrikDONDs
         QwIg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWk/aKbaLI0O7rPObsjWmzViVUEKuJKHZntqJw6lk3OZ77QJt+2
	I0bdZRnsgL69qKDaegL9pmlFTw==
X-Google-Smtp-Source: APXvYqwpAKKUDZ0YKvSBIVGdUgssKIsPNEVveFR6vtmdxj9YS9x47nfxglRwwIuBBB1gpCHs1DGlYA==
X-Received: by 2002:a63:c03:: with SMTP id b3mr35738198pgl.23.1565710037251;
        Tue, 13 Aug 2019 08:27:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:354:: with SMTP id fh20ls507407pjb.2.gmail; Tue, 13
 Aug 2019 08:27:16 -0700 (PDT)
X-Received: by 2002:a17:902:2987:: with SMTP id h7mr37879371plb.37.1565710036878;
        Tue, 13 Aug 2019 08:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565710036; cv=none;
        d=google.com; s=arc-20160816;
        b=JbxhDEhwhNvOATf8q39UaICi/Tqfjc2u/NLG1kh1bpzVeVJgMa//0I4QjDGfCm9HFI
         Fl2h7sbHEsIfAKVuCrk8gj8zcfQHvi8pxkFUjFbBeTsTQLAVGTsoNLpwTij/3RXmaSbL
         Oe9x5RL1eJ7+zDzHmVcojb4Er/WbslSqSxhdEHBV9ykyzDxhqPFNk192wwCv3+FRvRab
         OBpilinCkkORT+8k7B8HxS7HCQC36xDb7xiwGDGsfVnq7/V817xALYpozZfsiYSU21K0
         nwc3KX/S7337HhcX8tPRzBqYyvSo6bFnZ9x8Vgo0cpwXIesnaI/C+gggP8iw8AW/CYsl
         zyCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TvxWnkEHDAjTfbX2iWuZH6BQy7twcVJzbjByIiKD4+Y=;
        b=OWmkaYPYUL+v1UgVjXj0Eth253IcFOJIl3ODXza02CFkUwtVnMeZel5CqUqtaS4YGs
         fcTXp9uhiYLzBuvEYh9QWfg85Me7DSKuwYzBe/TReJOvtz8jJf0bAVXsbZFdtomn+Xf4
         81F05+m85W4568gi8R4dRdmg6S+be9OJaqcBmWS3ScdfRpKmq4pT0ZpsLbIjegE6QJYb
         C4uNIIKGwEC1QNi/U682WA5oMlwfr8RV92cuz2bdLie5+WYWi4vk8C7Yfv+xDbRRYUH9
         uySef43ouwJxoenKdTt2kRizKrnYKJn8Nd2+hSHLyRJEUIBcK42I6dYM7o61zpkakbc0
         ttdQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C9wRRvwg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id r8si68427558pgr.243.2019.08.13.08.27.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 08:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A59920663;
	Tue, 13 Aug 2019 15:27:16 +0000 (UTC)
Date: Tue, 13 Aug 2019 17:27:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 04/10] modpost: add support for symbol namespaces
Message-ID: <20190813152714.GC26138@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-5-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-5-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C9wRRvwg;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Aug 13, 2019 at 01:17:01PM +0100, Matthias Maennich wrote:
> Add support for symbols that are exported into namespaces. For that,
> extract any namespace suffix from the symbol name. In addition, emit a
> warning whenever a module refers to an exported symbol without
> explicitly importing the namespace that it is defined in. This patch
> consistently adds the namespace suffix to symbol names exported into
> Module.symvers.
> 
> Example warning emitted by modpost in case of the above violation:
> 
>  WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
>  USB_STORAGE, but does not import it.
> 
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
>  scripts/mod/modpost.h |  7 ++++
>  2 files changed, 87 insertions(+), 11 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813152714.GC26138%40kroah.com.
