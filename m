Return-Path: <usb-storage+bncBCC2JRVCV4NRBUNEYXCQMGQERPLQDAY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 5149CB3B3DE
	for <lists+usb-storage@lfdr.de>; Fri, 29 Aug 2025 09:10:11 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-45a1b05b15esf11035755e9.1
        for <lists+usb-storage@lfdr.de>; Fri, 29 Aug 2025 00:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1756451411; cv=pass;
        d=google.com; s=arc-20240605;
        b=RmJVOp09J/6k+CxIAJ3mo+lEKxpEixeL0Q2PYjUBLBP0EYgC0i3chXa89JnCypnQN1
         0UYfsoodh1pG5/PLh+pTMDt76Ktp1cpL1yeIMmOw/hHlYlmtHgJU7iko+pXdwuvU3wkw
         28TsZXUlOZXwRUCCrYIFSRRbKxwhIZ/it4X6zB/ivhMdomHWN+1eHv7pXij1zPeNaVMI
         LY+38IRvKHcIQ0GlBXhp1LgomP/UBz+MRyUiMusE5I4vZBlGLgnT/TLcNd97+T0TBW8E
         CINc2lyT4VG+g92u+x/F1dkZqSl7Q1nR372jEFa5I2bUK/abQpLDWpfYzNn3fgxHB+6m
         FWWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=0mwtdT9VLz+uwCh1GFQ6tNq4bCsqwZ/G7MHHIeS8gIU=;
        fh=rMs0G5AZi0GAD8iZOjUHGHhgxZAU+wCWzKDN6PUjR4c=;
        b=hPd00Rvngr8jpy/1tHtzvUqLP0VEbD0Xkc2N1ivzFB0YTzn1L6+2u4l1RquelJuH/x
         n2ysoy08qPUrIPMz6CrvoAyS+CnPQRD3WXzGqgeYoHR9sxn9f/YL1UU1PAhqBfAUpvzW
         tMjJCyk02VUej6bUH4OlOc5spYG39QGf2zvDXqJlAoIRnNqgI9h8C7KiCFVrTTyMaRIP
         9/e5e2JvX7P3mtqhRDmLaADu/ofk0rTCw1XKM+j7yznzQ/7pJ209xv8vBcIcI4PmT6RL
         uhm1fwJaDmLopiJ4k6p8HQplAzOdORvGexZpP+LOYCcXmfhN6S0nZh5LG+ZwQaORUlLT
         RpDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=tC760mO2;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b4 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1756451411; x=1757056211; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0mwtdT9VLz+uwCh1GFQ6tNq4bCsqwZ/G7MHHIeS8gIU=;
        b=LXOXlkCIAsJoSdAGpbD08Yu9FXYwRcGmYqT2U10HPeRQqEOhNGcKPaM5kSMqz6kjQD
         9GqsHEWcc1Fs933jfLrUpWf2IoqG+vIT4TJOgRGO1cEaZQfq77bwh1re6kAf/XbWIXjo
         +wSorp17f3vF/1NvBrT7HqYXPhegT42ZeX5+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756451411; x=1757056211;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0mwtdT9VLz+uwCh1GFQ6tNq4bCsqwZ/G7MHHIeS8gIU=;
        b=gZtUimPbzNQ6v+okTm57OCYxGNtgfM2xpygW9k7mRL3dStYUMld3uU+5/qv6QGn1/w
         oPlknfDr7SZpYU87GeYZOcMPkmspByJZKI1MDAK297yXYDjq/Iz1nYF/+OE/mVzXckJJ
         OjOGDPFnufAEUmp/v2CXMUFZUtoPN6o0JL3uMqHxRxcniS5Sytvk/F4O51u3Vsw9Zncc
         E/88qhS5YdlAKoKXt63yLr0ULioC4I2BEVmVl6LSYguxYTdOafdZDaVld3eXL3XBY1e6
         9gSGA0u3geePCUCKG7lSncDJJqmrEvKzob3aO9OD0XtLO9bKHBPiaKLTptFmS6i31tF+
         Tt8Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXM79GnqVihoRAiH5jck8qoke0goXfK+KKlqfH9GPPGMQAjfYr3AqxpnZKq6zoq1btBWkG9Dw==@lfdr.de
X-Gm-Message-State: AOJu0YydmGoT+EB0z3vQxMKgSxqkKI6BgxZR8ER92n6MbUxWrwCgSAct
	nWVvw6jULnTr1F2WpeqdFIjarXbCm8l8EbAr6WDVoUGiu9eSaee6OEBuwIA4H7rwCwQ=
X-Google-Smtp-Source: AGHT+IEOv48DQu0tpzy6cZuod7dDT0YcLQtUOlTdrFQdJdBjJGeExNDRi0nfxIyhyHLGmWIhm2RL9w==
X-Received: by 2002:a05:6000:40cb:b0:3d0:64c1:1a2e with SMTP id ffacd0b85a97d-3d064c11ba5mr885373f8f.28.1756451410503;
        Fri, 29 Aug 2025 00:10:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcslY9/i9JyksVenPViI0aKhXRXTyiwe8oXrT2AlnYJPw==
Received: by 2002:a05:6000:22c4:b0:3c9:9929:c12a with SMTP id
 ffacd0b85a97d-3cde34279edls898812f8f.2.-pod-prod-05-eu; Fri, 29 Aug 2025
 00:10:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVzsz7E3GYCmgARxxJZwst6LhOAVKq/ZRfrALQfbFMiRMAElsUsyLzaf00X+NVxNRQueX+KF8yL/UQByA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:401e:b0:3cf:2700:6815 with SMTP id ffacd0b85a97d-3cf27006d4dmr1328036f8f.41.1756451406955;
        Fri, 29 Aug 2025 00:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1756451406; cv=none;
        d=google.com; s=arc-20240605;
        b=G9LYp1kYThKYwrY5vpPAo5+OeJJG8HwRq9qWemwdP/AcFoSUiK9+HAE6iZ1Ui2D7O6
         aSOdl6FLVNBpqm+jedl9w/tGaqx53TDMpwKD+pWVP0Lun9m+dGSRQ0ls4fnzmX4PIORF
         DAD8YA1Y5gGPg/UQvZxVWn4Hhg42A1mYKEFQUEGej5WK3k93IKQ4n2uWsC4kw/fzd/D/
         84bmom+HozUAj5FSpGzUZJZS2mFmjewyWti0ffjvNKdKOhtIjWedPO+VFg8yrlFCAsqW
         mpSBZatDVYQGkWrxkVy5/cRu+XQIOARWiDpk2jS0KLK5U8r6/5bIYeSKTBQ/C4VhQuwi
         whBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=cdyTtGA3RngFs/+6P0WIzZYVPbL0BTK0wphPMTsKdw4=;
        fh=AkSgbvTtYnIp7rDOKbmpHLdtlPP5mFyTvMQ5GELUk+0=;
        b=MLLj+IEFQxSgbeUiBhJFcWuRJM+U2wpc2g6wLpNg+mARYBo97x7rtb50V6MxUi6A5/
         TBabzEEjqf5lbQf1umwEJ+x5e4RMGDp4tJTMU9AGpBif7U0hJt6YYVXVPHcFSUatdLY7
         u+aKPEsX+igTuHANxUGQW3DmNuAmmMjCg0H6RbrhKLC4aKZH2kBQgQ85uRU1KjpKWJ+o
         0V8klBr+4Gk9USx3klbAFtfxqGxhueSlm2B9iL8ODmkEo0Y5I8M3G/Kb7jBTCtoNaJw/
         V3UWtKLVyx8YhCR4P2XuWjuclQJAHYFlM85Obrx0JHBPlIKROigiKafqzWJHhBPtdXoP
         1wDg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=tC760mO2;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b4 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com. [2001:41d0:203:375::b4])
        by mx.google.com with ESMTPS id ffacd0b85a97d-3cf33dce8c8si1023893f8f.492.2025.08.29.00.10.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 00:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b4 as permitted sender) client-ip=2001:41d0:203:375::b4;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: [usb-storage] Re: [PATCH RESEND] usb: storage: realtek_cr: Simplify
 residue calculation in rts51x_bulk_transport()
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <2025082922-almanac-derby-632d@gregkh>
Date: Fri, 29 Aug 2025 09:10:00 +0200
Cc: Alan Stern <stern@rowland.harvard.edu>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <7B58E620-723A-41D3-9EA2-81159009A818@linux.dev>
References: <20250828162623.4840-3-thorsten.blum@linux.dev>
 <2025082922-almanac-derby-632d@gregkh>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=tC760mO2;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 2001:41d0:203:375::b4
 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

On 29. Aug 2025, at 06:34, Greg Kroah-Hartman wrote:
> On Thu, Aug 28, 2025 at 06:26:24PM +0200, Thorsten Blum wrote:
>> Simplify the calculation of 'residue' in rts51x_bulk_transport() and
>> avoid unnecessarily reassigning 'residue' to itself.
>> 
>> Acked-by: Alan Stern <stern@rowland.harvard.edu>
>> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
>> ---
> Why is this a RESEND?  What happened to the first one?

This was patch 2/3 of a patch series that doesn't apply anymore because
you asked me to submit the bugfix in patch 3/3 separately [1].

Since the series doesn't apply anymore and patch 1/3 didn't get any
support [2], I figured it's best to resend this one as a separate patch.

Thanks,
Thorsten

[1] https://lore.kernel.org/lkml/2025081358-posted-ritzy-bd3f@gregkh/
[2] https://lore.kernel.org/lkml/20250813101249.158270-2-thorsten.blum@linux.dev/

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7B58E620-723A-41D3-9EA2-81159009A818%40linux.dev.
