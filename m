Return-Path: <usb-storage+bncBCTPRFE7TUKRBLXK7XDQMGQEM2TLT3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B58C0E137
	for <lists+usb-storage@lfdr.de>; Mon, 27 Oct 2025 14:35:43 +0100 (CET)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-4770be47bfcsf4639145e9.2
        for <lists+usb-storage@lfdr.de>; Mon, 27 Oct 2025 06:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1761572143; cv=pass;
        d=google.com; s=arc-20240605;
        b=BA34qvkpZ4Ov2RhM+0OCO9YtT8Lxf4mXUJfys7JXh52bI1zAXT8yOYk6AGOIoEoe/1
         jcqR280SvufLjHz5r9rGsOh8Oe5TK8WO2i3mWYcipoJExcje1cOj7gV6Cdf79x5gAz+6
         9TTKZDWErT8XTm7x5J+xBexhVyFLqibyz1YtTzUvIMHyNAHHkgRkGkPHqxXMrVzXNZYU
         l1oAJrnR26Wkm0diotw4EKDCAGSLmGd7WjvJ6k0GprThgFMQiCHWQg7i9DrMBdF/HMPD
         k6R9lWYLNPFnXcdx5SAVHBGgZdJkBD8rMiE3CTDVUkfhblZRCXA5pbSLvYmngGbUBGZm
         qREw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=oV9sGnrbP1XBXRvcpWSDvdRrugSwaP7bb6Unn/ZYDDM=;
        fh=Xa0yFiiwCwJ6ZFnQxJQKhvD4O6TKMkB/jy4K6qDEqI4=;
        b=Kh6+FdmeQOcdSCGX+cMs/0cYb3/DbY+0i+naq46zgJr4g5IpxxdLJqi8YzTkdgx5+B
         Rd15Ko82q7D/FJCN4wqQudPIhKziOEN4RvsL7401L8Rngm/eR/rmPnk1hysvN6Jzs7g4
         BDfGcL7ImDuehSAcuG3YEvhZBTmqQ76skN0vu8pTQIVA1gLSDgmICMzaDdZaSU9IEuNW
         bdSNHZjmOX0zd7eAI1vvy+kvKj2Uk9xwLUgxoocTwHc0UHY2IJzZLoW5GF8yUxjwdrSB
         Gd8A3hKlEhNCOisSHR+63CFCWv8Al/fXYWib503P9Owqz4tuqwqc7nQaeedG+glK5oQK
         O8yQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=PkuIlfO3;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1761572143; x=1762176943; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oV9sGnrbP1XBXRvcpWSDvdRrugSwaP7bb6Unn/ZYDDM=;
        b=WszK7mVHs/6cZUS+El0U41ur0KgRUEH1sko2FdPdaVCeeP5WEuDXHnJTCzhpdDUrVc
         07Jmd+S82ostcVzVPr0KUtJBG/BKIL7PIWePz9ds35twuK3QpaSZZ/Qs3909NJCAzr8H
         xFTa7gx22NGqK1TsX3F9+c8hNp469y58U835g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761572143; x=1762176943;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oV9sGnrbP1XBXRvcpWSDvdRrugSwaP7bb6Unn/ZYDDM=;
        b=SY3gFlqn6aNu1JtDiUXMnB3VHA4aHoKGwEeOhf5tkZdQ9I+vaWFub3Y8B9BSiNsFfP
         hdLFXUBG1GeE1mx4JF37luSQtRZ5p6WZ6ZHfPuFMY41C1yMvJQLCtyyIw6iKvU9zLy8/
         P+jIVWrgaGnyr7Q3y5cGUPdfq+7KuW09l+v1zLYnfj6/meeKtEZPbZ24ZnTPa0N9Y9Ye
         l28PLSccVNgZc6F9HmphL2t7SL6YC7vWiwq1MKIJ33pTrGKssYIYDyBDHuEP28Idd3jW
         iQpUhbDl/GyiD586VsnvG56PWBo7wDO3XMQZMkI063Pay7bRtUgwSwdTleOyT5cadoN0
         xzOQ==
X-Forwarded-Encrypted: i=2; AJvYcCWWkYlKUPIKfQ+xkINsWTXgohjDmP5CNnBgAa6+IjpVxvZOODgna724/qX1RiP3jtwv07gbZg==@lfdr.de
X-Gm-Message-State: AOJu0YzT5CRv7nTa4Igu7ggiS9k5HRXKKt/mXVeEUinYWOXFmqdiGB6X
	Pf9s9ZQ7UMGXDrTP9suZBma8V6wo90W73JQ6gJ6or7PZiRydAOi8MflqWosqHDwpCEU=
X-Google-Smtp-Source: AGHT+IE6wR53I5psMsSmYtLB4sAwjkH+oPBx59KsIr6heoxZkHHHIAc2tMoSrDWgRiw/VR3mJQGp8Q==
X-Received: by 2002:a05:600d:4386:b0:471:a96:d1b6 with SMTP id 5b1f17b1804b1-475d2e72e47mr62648945e9.7.1761572142956;
        Mon, 27 Oct 2025 06:35:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+b3DrixiojUk7nPGhiz8qt4hdaUE/JwK89I8zdXD6u9dg=="
Received: by 2002:a05:600c:5951:b0:475:c559:4e89 with SMTP id
 5b1f17b1804b1-475caa8c77als15452715e9.2.-pod-prod-03-eu; Mon, 27 Oct 2025
 06:35:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWk1jM7Wc9P46SwDRNGUiI91J2FSM9oIcJ4KnbHBKa/d+lsnj57qvKvU0QAYQ4R2wyLFkL3QrhrBL9ZEQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:a013:b0:477:e70:592b with SMTP id 5b1f17b1804b1-4770e70635emr41724685e9.2.1761572139996;
        Mon, 27 Oct 2025 06:35:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1761572139; cv=none;
        d=google.com; s=arc-20240605;
        b=kiygk56Qew+CUQoRjpLNGaGZkE56t4Rtx1viwF0XHANq3O51f+f8R291SnZepkQ0Px
         coMy2/K1T7+aXvUE7HdjosQVJDEs/2KLxSZyyaO1qBbgreehwyZhSVwOWIzpZKz5r9iW
         fhAn5LQ5BGusADo0tGRiDyJl5AS7ZXtbbv6ykktqQUNwrzpO1oDx+pimcqPcNrvfBbF4
         ut9BuC2Qz0AT352QEdI/Fqq40NGFXe+yYUrJHpCYyVHF3vg0GNw8Awg/hhmxo+Tz6ldc
         00yttH4fHUFC+LZf6EPOmupuPO9DUQMBC1rjDu4oy78Rd42maH0K5lN7tTwpEryOfh+j
         alEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=coMQJHEII5UHdUF+Ekj+pHGgsN6WEYzWi8tdyRdD9tw=;
        fh=Yv3CFefSOPomJ1A4aOnwEnmFZ2865abMXKJqhoU1744=;
        b=hPIo7JopdEje43/XFy9lbBKnxOGK5yMICSQ3L7zMP28P5uGu8m9sGc52KWKfeM72wT
         8/bKxjxmrtPpFfrDTv34ftBdpcH2KV/5wNizlMmauiFftRtwrdlubMHhCHkjyprGnmq3
         65kDIrD8iW/vqhLUconMP1pduRR+SuZ/DyVQp+L9KH/6wb6E5yywH636S/NIFxK6jtGz
         8kO+ORsouAiCeVWxDIlqZzCnBKZoJsK9Gfw+b4FrsdjB7YQYdWlf0qXkaB3hoE1FGocU
         mwhqtyZpxV0YLorbw1vW4ITt+T3tS+9y+t6cs8ffTfETgJdYwwBDh2FwAWR2yuSQlB+7
         /fSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=PkuIlfO3;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-475dd9b449fsor6646305e9.8.2025.10.27.06.35.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 Oct 2025 06:35:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV5v8mpE/OoajyjONOQEFYSXsnwnQFJB1yT0QsvEjGk85jrYMEmWio14WV4t+QlTf9Cde7M8Xv37aMgfA==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsFxDb+pETSwNFQVtMZAMmQhUWkD/4E9s6/HSXFOoNKqyjjn+SRzPhoFuuqlMq
	nNCCBm9BCApqgX4cMRi86T3gvnwQTyXwp9Z9j8qmeHWhRiZ2edM5/4W+eaZs7ZOyLMJgtRZEU7W
	x/SODYwEWMe0UPrybd3UDY20Bd/YQIjXlkoAZBO0Xe6WF/gv2bnE0/sXMfYVvB0v8N5fSPdOJoE
	/W2vPR+OoxwobWmLKveOUAdBFOc/SH/inIiyvG+EcLIR11SoLImGP2E7cFLXaYYWq1hX4jCqogx
	JpRrHv97nAU91z33ToxgHscRRpToSItXgvjVpk5KGBsEr4RADEdvFtIy6u9Q7jlD3GpBytE186y
	RjRt5LfRhtIwmovY2BYwH2PdaDgazPgT2gfQe5BrMz7UhL1vb7gFDBOmfA9S5hXR42XVunXsZcS
	QYA2lIuBaMI5XjlEZuveIeuDXyluBCNU/fx7759Jtbu2YFmXNVRb9emVAEwZTIZHQrsw==
X-Received: by 2002:a05:600c:3b82:b0:475:daa7:ec60 with SMTP id 5b1f17b1804b1-475daa7ee4amr74939795e9.21.1761572139493;
        Mon, 27 Oct 2025 06:35:39 -0700 (PDT)
Received: from ?IPV6:2a02:3033:263:99eb:3ee8:c1a0:6fbf:4510? ([2a02:3033:263:99eb:3ee8:c1a0:6fbf:4510])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952cbc16sm13967859f8f.15.2025.10.27.06.35.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:35:38 -0700 (PDT)
Message-ID: <8de18ee2-ccdd-4cdd-ae49-48600ad30ed4@suse.com>
Date: Mon, 27 Oct 2025 14:35:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: uas: fix urb unmapping issue when
 the uas device is remove during ongoing data transfer
To: Owen Gu <guhuinan@xiaomi.com>, Oliver Neukum <oneukum@suse.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 Yu Chen <chenyu45@xiaomi.com>, Michal Pecio <michal.pecio@gmail.com>
References: <20251015153157.11870-1-guhuinan@xiaomi.com>
 <aP8Llz04UH8Sbq5Q@oa-guhuinan-2.localdomain>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <aP8Llz04UH8Sbq5Q@oa-guhuinan-2.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=PkuIlfO3;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=neutral header.i=@lists.one-eyed-alien.net
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

I think I was unclear the first time.
Sorry for that.

On 27.10.25 07:05, Owen Gu wrote:
> Hi Oliver,
> 

>> This patch modifies the error condition check in the uas_submit_urbs()
>> function. When a UAS device is removed but one or more URBs have already
>> been successfully submitted to USB, it avoids immediately invoking
>> scsi_done() and save the cmnd to devinfo->cmnd array. If the successfully
>> submitted URBs is completed before devinfo->resetting being set, then
>> the scsi_done() function will be called within uas_try_complete() after

This requires that uas_try_complete() is called.

And I am afraid uas_stat_cmplt() cannot guarantee that in the error case.
I think the following sequence of events is possible:

CPU A						CPU B

uas_queuecommand_lck() calls uas_submit_urbs()
COMMAND_INFLIGHT is set and URB submitted
						URB gets an error
						status = -EBABBLE (just an example)
						uas_stat_cmplt is called
						resetting is not set
						if (status)
							goto out;

						uas_try_complete _not_ called

The scsi command runs for indeterminate amount of time.
It seems to me that if you want to use your approach you also
need to change error handling in uas_stat_cmplt()

	Regards
		Oliver


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8de18ee2-ccdd-4cdd-ae49-48600ad30ed4%40suse.com.
